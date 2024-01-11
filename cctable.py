import csv
import sys
import os
import pandas as pd

SRC_FILE_PATH = ""
DEBUG_MODE = False
STORE_FEATURE_TABLE = False
STORE_DETAILED_INFO = False
FEATURE_TABLE_PATH = ""
DETAILED_INFO_PATH = ""

class FeatureTable:
    def __init__(self, src_file_path, debug_mode, store_feature_table, 
                 feature_table_path, store_detailed_info, detailed_info_path) -> None:
        # global variables
        global SRC_FILE_PATH, DEBUG_MODE, STORE_FEATURE_TABLE
        global FEATURE_TABLE_PATH, STORE_DETAILED_INFO, DETAILED_INFO_PATH
        SRC_FILE_PATH = src_file_path
        DEBUG_MODE = debug_mode
        STORE_FEATURE_TABLE = store_feature_table
        FEATURE_TABLE_PATH = feature_table_path
        STORE_DETAILED_INFO = store_detailed_info
        DETAILED_INFO_PATH = detailed_info_path
        # ----------------------------------------------------------- #
        # table: record detailed information                          #
        # this table will be filled in the process of scanning        #
        # ----------------------------------------------------------- #
        self.table: dict = {} # its values are all dict
        # first part: MODULAR
        self.table["TEMPLATE"] = {} # its values are all list
        self.table["TEMPLATE"]["stl"] = [] # its items are all tuple(location, content)
        self.table["TEMPLATE"]["template"] = []
        self.table["TEMPLATE"]["lambda"] = []
        self.table["TEMPLATE"]["namespace"] = []
        self.table["TEMPLATE"]["macroconcat"] = []
        self.table["CONCURRENCY"] = {}
        self.table["CONCURRENCY"]["thread_local"] = []
        self.table["CONCURRENCY"]["votatile"] = []
        self.table["MEMORY"] = {}
        self.table["MEMORY"]["destructor"] = []
        self.table["MEMORY"]["smartptr"] = []
        self.table["MEMORY"]["directinit"] = []
        self.table["EXCEPTION"] = {}
        self.table["EXCEPTION"]["trycatch"] = []
        self.table["EXCEPTION"]["noexcept"] = []
        self.table["POLYMORPHISM"] = {}
        self.table["POLYMORPHISM"]["nestedclass"] = []
        self.table["POLYMORPHISM"]["operator"] = []
        self.table["POLYMORPHISM"]["virtual_overload"] = []
        self.table["POLYMORPHISM"]["castconvert"] = []
        self.table["REFERENCE"] = {}
        self.table["REFERENCE"]["friend"] = []
        self.table["REFERENCE"]["this"] = []
        self.table["REFERENCE"]["using"] = []
        self.table["FUNCTION"] = {}
        self.table["FUNCTION"]["typedef"] = []
        self.table["TYPESYS"] = {}
        self.table["TYPESYS"]["typedef"] = []
        self.table["TYPESYS"]["union"] = []
        self.table["TYPESYS"]["decltype"] = []
        self.table["TYPESYS"]["using"] = []
        self.table["TYPESYS"]["constexpr"] = []
        # ----------------------------------------------------------- #
        # feature_count: record the number of each feature            #
        # ----------------------------------------------------------- #
        self.feature_count_table = pd.DataFrame(columns=['feature_num', 
                                                         'feature_name', 
                                                         'feature_count'])
        return
    
    def update_count(self) -> None:
        feature_types_list = list(self.table.keys())
        # genarate feature_num and feature_name
        for dict_num in range(len(feature_types_list)):
            feature_items_list = list(self.table[feature_types_list[dict_num]].keys())
            for list_num in range(len(feature_items_list)):
                # add row: feature_num, feature_name, feature_count
                self.feature_count_table.loc[len(self.feature_count_table)] \
                    =  [str(dict_num + 1) + '.' + str(list_num + 1),
                        feature_types_list[dict_num] + '_' + 
                        list(self.table[feature_types_list[dict_num]])[list_num],
                        len(self.table[feature_types_list[dict_num]][feature_items_list[list_num]])]
        return
    
    def print_detailed_feature_table(self) -> None:
        # print the detailed feature table
        print('>---------------------------------------------------------------------------')
        print('feature_table:')
        for key in self.table:
            print('+', key, ':')
            for list in self.table[key]:
                print('\t└──', list, ':')
                for item in self.table[key][list]:
                    print('\t\t└──', item)
        print('---------------------------------------------------------------------------<')
    
    def print_count_table(self) -> None:
        # after update_count()
        # print the count table
        print('>---------------------------------------------------------------------------')
        print('count_table:')
        print(self.feature_count_table)
        print('---------------------------------------------------------------------------<')

    def store_csv(self) -> None:
        # update feature_count first
        self.update_count()
        if STORE_FEATURE_TABLE:
            # store feature_num, feature_name, feature_count into FEATURE_TABLE_PATH
            if DEBUG_MODE:
                print('>---------------------------------------------------------------------------')
                print('In FeatureTable.store_csv(), table_frame_now:')
                print(self.feature_count_table)
                print('---------------------------------------------------------------------------<')
            # it has been guaranteed that FEATURE_TABLE_PATH exists
            # if the file content is empty, then simply write self.feature_count_table into it
            if os.path.getsize(FEATURE_TABLE_PATH) == 0:
                self.feature_count_table.to_csv(FEATURE_TABLE_PATH, index=False)
            else:
                # else, read the file content first, then add the feature count to corresponding line
                # read the file content
                table_frame_old = pd.read_csv(FEATURE_TABLE_PATH)
                # add the feature count to corresponding line
                for i in range(len(table_frame_old)):
                    table_frame_old.loc[i, 'feature_count'] += self.feature_count_table.loc[i, 'feature_count']
                if DEBUG_MODE:
                    print('>---------------------------------------------------------------------------')
                    print('In FeatureTable.store_csv(), table_frame_new:')
                    print(table_frame_old)
                    print('---------------------------------------------------------------------------<')
                # write back
                table_frame_old.to_csv(FEATURE_TABLE_PATH, index=False)
        if STORE_DETAILED_INFO:
            # Repo name | File name | Location | Content
            dir_basename_nosuffix = os.path.splitext(os.path.basename(FEATURE_TABLE_PATH))[0]
            assert(STORE_FEATURE_TABLE) # needed
            # write to DETAILED_INFO_PATH
            for key in self.table:
                for list in self.table[key]:
                    if len(self.table[key][list]) == 0:
                        continue
                    if DEBUG_MODE:
                        print('Now writing to', DETAILED_INFO_PATH+key+'_'+list, '...')
                    # if the file is empty, then write the header first
                    if os.path.getsize(DETAILED_INFO_PATH+key+'_'+list+'.csv') == 0:
                        with open(DETAILED_INFO_PATH+key+'_'+list+'.csv', 'a', newline='') as csvfile:
                            writer = csv.writer(csvfile)
                            writer.writerow(['Repo name', 'File name', 'Location', 'Content'])
                    with open(DETAILED_INFO_PATH+key+'_'+list+'.csv', 'a', newline='') as csvfile:
                        for item in self.table[key][list]:
                            writer = csv.writer(csvfile)
                            writer.writerow([dir_basename_nosuffix, SRC_FILE_PATH, item[0], item[1]])
        return