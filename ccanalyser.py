############################################################
#                                                          #
# This file is not enabled and is an invalid file!!!       #
#                                                          #
############################################################ 

import tree_sitter
from tree_sitter import Language, Parser
import csv
import sys
import os
""""
@ccanalyser.py
input:
	argv[1]: feature table storage path
	argv[2]: in debug mode or not
	argv[3]: detailed info storage directory
argv[1] is necessary
"""

CPP_LANGUAGE = Language('build/my-languages.so', 'cpp')
DEBUG_MODE = False
FEATURE_TABLE_PATH = ""
DETAILED_INFO_AVAI = False
DETAILED_INFO_ROOT = ""

class Analyser:
    def __init__(self, feature_table_path, detailed_info_root) -> None:
        pass

    def run(self) -> None:
        pass

if __name__ == "__main__":
    try:
        FEATURE_TABLE_PATH = sys.argv[1]
        assert os.path.exists(FEATURE_TABLE_PATH)
    except:
        print("Please input the feature table storage path!")
        exit(0)
    try:
        DEBUG_MODE = sys.argv[2]
    except:
        pass
    try:
        DETAILED_INFO_ROOT = sys.argv[3]
    except:
        pass
    if os.path.exists(DETAILED_INFO_ROOT):
        DETAILED_INFO_AVAI = True
    # run
    analyser = Analyser(FEATURE_TABLE_PATH, DETAILED_INFO_ROOT)
    analyser.run()