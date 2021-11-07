import os
dir = 'multiplier'

for folder in os.listdir(dir):
    sub_dir = dir + '/'+ folder
    design_file = os.path.join(sub_dir,'multilier_dc.v')
    with open(design_file,'r') as f:
        lines = f.readlines()
    l = lines[3]
    top_module = l.split(':').replace(' ','').replace('\n','')
    with open('dc.tcl','r') as f:
        lines = f.readlines()
        
    os.system('dc_shell-xg-t -f {}'.format(tcl_file))
