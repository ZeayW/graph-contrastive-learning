import os
import sys
target = sys.argv[1]
dir = './{}/'.format(target)

for folder in os.listdir(dir):
    if folder == 'implementation':
        # print(dir+folder+'/implementation')
        size_dict = {}
        for vf in os.listdir(dir + folder + '/implementation'):
            if not vf.endswith('.v') or 'hier' in vf:
                continue
            # print(os.path.getsize(dir+folder+'/implementation/'+vf))
            size = os.path.getsize(dir + folder + '/implementation/' + vf)
            size_dict[size] = size_dict.get(size, [])
            size_dict[size].append(dir + folder + '/implementation/' + vf)
        # print(size_dict)
        for s in size_dict.keys():
            for i, path in enumerate(size_dict[s]):
                if i != 0:
                    os.remove(path)
        print(dir + folder + '/implementation', len(size_dict))
