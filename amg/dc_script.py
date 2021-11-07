import os
dir = 'multiplier'

for folder in os.listdir(dir):
    sub_dir = dir + '/'+ folder
    design_file = os.path.join(sub_dir,'multilier_dc.v')
    with open(design_file,'r') as f:
        lines = f.readlines()
    l = lines[3]
    #print(l)
    top_module = l.split(':')[1].replace(' ','').replace('\n','')

    with open('dc.tcl', 'r') as f:
        lines = f.readlines()
    lines[0] = 'set top_module "{}"\n'.format(top_module)
    lines[1] = 'set opt "{}"\n'.format(folder)
    lines[2] = 'set src "{}"\n'.format(design_file)
    with open('dc_{}.tcl'.format(folder), 'w') as f:
        f.writelines(lines)
    os.system('dc_shell-xg-t -f dc_{}.tcl'.format(folder))
    os.remove('dc_{}.tcl'.format(folder))
