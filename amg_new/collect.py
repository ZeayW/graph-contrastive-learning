import os
import shutil
def extract_file(folder,target_dir):
    os.makedirs(target_dir, exist_ok=True)
    for f in os.listdir(folder):
        file_path = os.path.join(folder,f)
        if f.endswith('.v') :
            if 'FSA' in file_path and ('Kogge' in file_path or 'Brent' in file_path
                                       or 'Conditional' in file_path or 'Ladner' in file_path or 'Carlson' in file_path):
                continue
            if 'mult' in file_path and ('array' in file_path or 'Booth' in file_path or 'Kogge' in file_path or 'Brent' in file_path
                                       or 'Conditional' in file_path  or 'Ladner' in file_path or 'Carlson' in file_path):
                continue
            prefix = folder.replace('\\','_')
            prefix = prefix.replace('(','')
            prefix = prefix.replace(')','')
            prefix = prefix.replace(';','-')
            prefix = prefix.replace(',','-')
            shutil.copy(file_path,os.path.join(target_dir,'{}.v'.format(prefix)))
        elif os.path.isdir(file_path):
            extract_file(file_path,target_dir)


extract_file('FSA','adder2')
extract_file('mult','multiplier2')