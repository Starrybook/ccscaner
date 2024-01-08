from ccscaner import DEBUG_MODE, STORE_FEATURE_TABLE, FEATURE_TABLE_PATH
from ccscaner import STORE_DETAILED_INFO, DETAILED_INFO_PATH

class FeatureTable:
    def __init__(self, ) -> None:
        self.table = {}
        # first part: MODULAR
        self.table["MODULAR"] = {}
        self.table["MODULAR"]["template"] = []
        self.table["MODULAR"]["lambda"] = []
        self.table["MODULAR"]["namespace"] = []
        # TODO
    
    def print_feature_table(self) -> None:
        print('[MODULAR][template]: ', self.table["MODULAR"]["template"])
        print('[MODULAR][lambda]: ', self.table["MODULAR"]["lambda"])
        print('[MODULAR][namespace]: ', self.table["MODULAR"]["namespace"])
        # TODO
        pass

    def store_csv(self) -> None:
        if STORE_FEATURE_TABLE:
            with open(FEATURE_TABLE_PATH, 'w', newline='') as csvfile:
                # writer = csv.writer(csvfile)
                # TODO
                pass
        if STORE_DETAILED_INFO:
            with open(DETAILED_INFO_PATH, 'w', newline='') as csvfile:
                # writer = csv.writer(csvfile)
                # TODO
                pass