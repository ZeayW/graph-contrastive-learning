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
    for i in range(1,7):
        with open('dc{}.tcl'.format(i),'r') as f:
            lines = f.readlines()
        lines[0] = 'set top_module "{}"\n'.format(top_module)
        lines[1] = 'set opt "{}"\n'.format(folder)
        lines[2] = 'set src "{}"\n'.format(design_file)
        with open('dc{}_{}.tcl'.format(i, folder), 'w') as f:
            f.writelines(lines)
        os.system('dc_shell-xg-t -f dc{}_{}.tcl'.format(i, folder))
        os.remove('dc{}_{}.tcl'.format(i, folder))