import os
import re
dir = '../dc/rocket_core/implementation'
save_dir = '../dc/adders/'
#adders = ('sklansky_adder','bounded_fanout_adder')
for vf in os.listdir(dir):
    if vf.endswith('v'):
        print(vf)
        if re.search('r\d',vf) is not None:
            adder_name = vf.split('.')[1][6:]
        else:
            adder_name = vf.split('.')[1][3:]
        #print(re.)
        #adder_name = vf[str.rfind(vf,'')]
        with open(os.path.join(dir,vf),'r') as f:
            text = f.read()
        #print(text)
        modules = text.split('endmodule')
        print(len(modules))
        for module in modules:
            module = module.replace('\n','').replace(';',';\n')
            first_line = module.split('\n')[0]
            if first_line == '':
                continue
            module_name = first_line.split(' ')[1][:-3]
            #print(module_name)
            if 'add' in module_name:
                print(first_line)
                save_path = os.path.join(save_dir,'{}_{}.v'.format(adder_name,module_name))
                if not os.path.exists(save_path):
                    with open(save_path,'w') as sf:
                        sf.write(module)
                        sf.write('endmodule\n')
        #print(modules)
        #exit()