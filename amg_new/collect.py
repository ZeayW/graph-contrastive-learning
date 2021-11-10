import os
import shutil
def extract_file(folder,target_dir):
    for f in os.listdir(folder):
        file_path = os.path.join(folder,f)
        if f.endswith('.v') :
            if 'FSA' in file_path and ('Koggle' in file_path or 'Brent' in file_path
                                       or 'Conditional' in file_path or 'select' in file_path):
                continue
            if 'mult' in file_path and ('array' in file_path or 'Booth' in file_path or 'Koggle' in file_path or 'Brent' in file_path
                                       or 'Conditional' in file_path or 'select' in file_path):
                continue
            prefix = folder.replace('\\','_')

            shutil.copy(file_path,os.path.join(target_dir,'{}.v'.format(prefix)))
        elif os.path.isdir(file_path):
            extract_file(file_path,target_dir)

os.makedirs('adder',exist_ok=True)
os.makedirs('multiplier',exist_ok=True)
extract_file('FSA','adder')
extract_file('mult','multiplier')