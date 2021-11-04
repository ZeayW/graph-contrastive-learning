import os

dir = './adders/'
for folder in os.listdir(dir):
    if os.path.isdir(dir+folder):
        for subfolder in os.listdir(dir+folder):
            if subfolder == 'implementation':
                print(dir+folder+'/implementation')
                size_dict = {}
                for vf in os.listdir(dir+folder+'/implementation'):
                    if not vf.endswith('.v') or 'hier' in vf:
                        continue
                    print(os.path.getsize(dir+folder+'/implementation/'+vf))
                    size = os.path.getsize(dir+folder+'/implementation/'+vf)
                    size_dict[size] = size_dict.get(size,[])
                    size_dict[size].append(dir+folder+'/implementation/'+vf)
                print(size_dict)
        exit()