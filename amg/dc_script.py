import os
dir = 'multiplier'

for file in os.listdir(dir):
    #sub_dir = dir + '/'+ folder
    #design_file = os.path.join(sub_dir,'multilier_dc.v')
    target = file.split('.')[0]
    with open(file,'r') as f:
        lines = f.readlines()
    l = lines[3]
    #print(l)
    top_module = l.split(':')[1].replace(' ','').replace('\n','')

    with open('dc.tcl', 'r') as f:
        lines = f.readlines()
    lines[0] = 'set top_module "{}"\n'.format(top_module)
    lines[1] = 'set opt "{}"\n'.format(target)
    lines[2] = 'set src "{}"\n'.format(os.path.join(dir,file))
    with open('dc_{}.tcl'.format(target), 'w') as f:
        f.writelines(lines)
    os.system('dc_shell-xg-t -f dc_{}.tcl'.format(target))
    os.remove('dc_{}.tcl'.format(target))
