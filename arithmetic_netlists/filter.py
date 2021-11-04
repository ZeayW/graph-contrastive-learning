import os

dir = './adders/'
for folder in os.listdir(dir):
    if os.path.isdir(dir+folder):
        for subfolder in os.listdir(dir+folder):
            if subfolder == 'implementation':
                print(dir+folder+'/implementation')
                for vf in os.listdir(dir+folder+'/implementation'):
                    if not vf.endswith('.v'):
                        continue
                    print(os.path.getsize(dir+folder+'/implementation/'+vf))
        exit()