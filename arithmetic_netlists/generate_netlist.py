import fnmatch
import os
import pandas as pd
import numpy as np
import sys



# InputStrb = sys.argv[2]

for module_dir in os.listdir('./'):
    if os.path.isdir(module_dir):
        for design_dir in os.listdir(module_dir):
            dir = os.path.join(module_dir,design_dir)
            if os.path.isdir(dir):
                design_list = os.listdir(dir)
                df = pd.DataFrame(np.arange(len(design_list)).reshape((len(design_list), 1)), columns=['Addr'])
                df.Addr = design_list
                # print(df.head())
                df.to_csv(os.path.join(dir, 'designs.lst'), columns=['Addr'], index=False, header=False)
