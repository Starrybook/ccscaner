import csv
import sys
import os
import pandas as pd

DEBUG_MODE = False
STORE_FEATURE_TABLE = False
STORE_DETAILED_INFO = False
FEATURE_TABLE_PATH = ""
DETAILED_INFO_PATH = ""

class FeatureTable:
    def __init__(self, debug_mode, store_feature_table, feature_table_path, 
                 store_detailed_info, detailed_info_path) -> None:
        # global variables
        global DEBUG_MODE, STORE_FEATURE_TABLE, FEATURE_TABLE_PATH
        global STORE_DETAILED_INFO, DETAILED_INFO_PATH
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
        self.table["MODULAR"] = {} # its values are all list
        self.table["MODULAR"]["template"] = []
        self.table["MODULAR"]["lambda"] = []
        self.table["MODULAR"]["namespace"] = []
        # TODO
        # ----------------------------------------------------------- #
        # feature_num:  labels for different features                 #
        # feature_name: names for different features                  #
        # these two lists will be genarated automatically             #
        # ----------------------------------------------------------- #
        self.feature_num = []       # dict num + '.' + list num
        self.feature_names = []     # dict name + '_' + list name
        feature_dict2list = list(self.table.keys())
        # genarate feature_num and feature_names
        for dict_num in range(len(feature_dict2list)):
            for list_num in range(len(self.table[feature_dict2list[dict_num]])):
                self.feature_num.append(str(dict_num + 1) + '.' + str(list_num + 1))
                self.feature_names.append(feature_dict2list[dict_num] + '_' + 
                                          list(self.table[feature_dict2list[dict_num]])[list_num])
        if DEBUG_MODE:
            print('>---------------------------------------------------------------------------')
            print('In FeatureTable.__init__(), feature_num: ')
            print('\t└──', self.feature_num)
            print('In FeatureTable.__init__(), feature_names: ')
            print('\t└──', self.feature_names)
            print('---------------------------------------------------------------------------<')
        # ----------------------------------------------------------- #
        # feature_count: record the number of each feature            #
        # this table won't be filled in the process of scanning       #
        # self.update_count() will complete this according to table   #
        # ----------------------------------------------------------- #
        self.feature_count = [] # its elements are all number
        return
    
    def update_count(self) -> None:
        # count the appearance number of each feature
        for key in self.table:
            for list in self.table[key]:
                self.feature_count.append(len(self.table[key][list]))
    
    def print_feature_table(self) -> None:
        # print the feature table
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
        # print the count table
        print('>---------------------------------------------------------------------------')
        print('feature_count:')
        for key in self.feature_count:
            print(key, ':', self.feature_count[key])
        print('---------------------------------------------------------------------------<')

    def store_csv(self) -> None:
        # update feature_count first
        self.update_count()
        if STORE_FEATURE_TABLE:
            # store feature_num, feature_names, feature_count into FEATURE_TABLE_PATH
            data = {'feature_num': pd.Series(self.feature_num),
                    'feature_names': pd.Series(self.feature_names),
                    'feature_count': pd.Series(self.feature_count)}
            table_frame = pd.DataFrame(data)
            if DEBUG_MODE:
                print('>---------------------------------------------------------------------------')
                print('In FeatureTable.store_csv(), origin table_frame:')
                print(table_frame)
                print('---------------------------------------------------------------------------<')
            # it has been guaranteed that FEATURE_TABLE_PATH exists
            # if the file content is empty, then simply write table_frame into it
            if os.path.getsize(FEATURE_TABLE_PATH) == 0:
                table_frame.to_csv(FEATURE_TABLE_PATH, index=False)
            else:
                # else, read the file content first, then add the feature count to corresponding line
                # read the file content
                table_frame_old = pd.read_csv(FEATURE_TABLE_PATH)
                if False:
                    print('>---------------------------------------------------------------------------')
                    print('In FeatureTable.store_csv(), table_frame_old:')
                    print(table_frame_old)
                    print('---------------------------------------------------------------------------<')
                # add the feature count to corresponding line
                for i in range(len(table_frame_old)):
                    table_frame_old.loc[i, 'feature_count'] += table_frame.loc[i, 'feature_count']
                if DEBUG_MODE:
                    print('>---------------------------------------------------------------------------')
                    print('In FeatureTable.store_csv(), table_frame_new:')
                    print(table_frame_old)
                    print('---------------------------------------------------------------------------<')
                # write back
                table_frame_old.to_csv(FEATURE_TABLE_PATH, index=False)
        if STORE_DETAILED_INFO:
            # not support yet
            pass