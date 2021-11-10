import os
import sys
dir = sys.argv[1]

for folder in os.listdir(dir):
    #print(folder)
    if os.path.isdir(os.path.join(dir,folder)):
        for subfolder in os.listdir(os.path.join(dir,folder)):
            if subfolder == 'implementation':
                #print("aaa")
                #print(dir+folder+'/implementation')
                size_dict = {}
                for vf in os.listdir(os.path.join(dir,folder+'/implementation')):
                    if not vf.endswith('.v') or 'hier' in vf:
                        continue
                    #print(os.path.getsize(dir+folder+'/implementation/'+vf))
                    size = os.path.getsize(os.path.join(dir,folder+'/implementation/'+vf))
                    size_dict[size] = size_dict.get(size,[])
                    size_dict[size].append(os.path.join(dir,folder+'/implementation/'+vf))
                #print(size_dict)
                for s in size_dict.keys():
                    for i, path in enumerate(size_dict[s]):
                        if i!=0:
                            os.remove(path)
                print(os.path.join(dir,folder+'/implementation'),len(size_dict))
