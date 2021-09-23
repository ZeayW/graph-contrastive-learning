
import os
from generate_options import get_options
os.system('source /opt2/synopsys/setup.sh')
options = get_options()
data_dir = os.path.join(options.save_dir,'i{}'.format(options.num_input))
tcl_file = os.path.join(options.save_dir,'dc.tcl')
for vf in os.listdir(data_dir):
    if not vf.endswith('.v') :
        continue
    with open(tcl_file,'r') as f:
        lines = f.readlines()
    lines[2] = "set numInput \"{}\"\n".format(options.num_input)
    lines[3] = "set value \"{}\"\n".format(vf.split('.')[0])
    print(lines)
    exit()
    with open(tcl_file,'w') as f:
        f.writelines(lines)
    os.system('dc_shell-xg-t -f {}'.format(tcl_file))