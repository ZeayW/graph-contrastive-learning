import os
import sys
dir = sys.argv[1]

for file in os.listdir(dir):
    #sub_dir = dir + '/'+ folder
    #design_file = os.path.join(sub_dir,'multilier_dc.v')
    if os.path.isdir(os.path.join(dir,file)):
        continue
    target = file.split('.')[0]
    with open(os.path.join(dir,file),'r') as f:
        lines = f.readlines()
    l = lines[3]
    #print(l)
    top_module = l.split(':')[1].replace(' ','').replace('\n','')
    with open('dc.tcl', 'r') as f:
        lines = f.readlines()
    lines[0] = 'set top_module "{}"\n'.format(top_module)
    lines[1] = 'set name "{}"\n'.format(target)
    lines[2] = 'set module "{}"\n'.format(dir)
    with open('dc_{}.tcl'.format(target), 'w') as f:
        f.writelines(lines)
    os.system('dc_shell-xg-t -f dc_{}.tcl'.format(target))
    os.remove('dc_{}.tcl'.format(target))
