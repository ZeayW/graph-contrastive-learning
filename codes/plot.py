import os
import numpy as np
import torch as th
import matplotlib.pyplot as plt
from plot_options import get_options
from scipy.interpolate import make_interp_spline
if __name__ == "__main__":
    print("aa")
    options = get_options()
    print(options)
    save_dir = options.save_dir
    if not os.path.exists(save_dir) :
        os.makedirs(save_dir)
    train_plot_dir = os.path.join(save_dir,'train/')
    val_plot_dir = os.path.join(save_dir,'val/')
    recall_file = open(os.path.join(save_dir,'recall.txt'),'w')
    f1_file = open(os.path.join(save_dir, 'f1.txt'), 'w')
    if os.path.exists(save_dir) is False:
        os.makedirs(train_plot_dir)
        os.makedirs(val_plot_dir)



    train_metrics = []
    val_metrics = []

    root_path = options.models_dir
    #old_root_path = 'test_train/old'

    #models_list=['eq','w','b2','bb09','bb07','bb05','bb03','old1']
    #models_list = ['b2','b_dim256_256','b_dim256_128']
    models_list =options.models_list
    if options.model_names is None:
        model_names = models_list
    else:
        model_names = options.model_names
    metric_names = ['loss','acc','recall','F1_score','precision']
    mod_names = ['train','val']
    colors = ['blue','orange','green','yellow']
    for i,model in enumerate(models_list):
        res_path = os.path.join(root_path,model+'/res.txt')
        train_metrics.append([])
        val_metrics.append([])
        recall_file.write('\\addplot[CUHK'+colors[i]+', line width=1pt,text mark as node=true ] table [x = x rel, y=y rel] {\n')
        f1_file.write('\\addplot[CUHK'+colors[i]+', line width=1pt, text mark as node=true ] table [x = x rel, y=y rel] {\n')
        with open(res_path,'r') as f:
            txt=f.readlines()
            len_ = min(3*options.epoch,len(txt))
            for j in range(0,len_,3):
                loss, acc, recall,precision,F1_score = txt[j].split(' ')
                train_metrics[i].append([float(loss),float(acc),float(recall),float(F1_score),float(precision)])
                loss, acc, recall, precision,F1_score = txt[j+1].split(' ')
                val_metrics[i].append([float(loss), float(acc), float(recall), float(F1_score), float(precision)])
                recall_file.write('\t{}\t{}\n'.format(int(j/3)+1,recall))
                f1_file.write('\t{}\t{}'.format(int(j/3)+1,F1_score))
                #val_metrics[i].append([float(num) for num in txt[j+1].split(' ')])
        recall_file.write('\n};\n\\addlegendentry{'+model_names[i]+'}\n\n')
        f1_file.write('\n};\n\\addlegendentry{'+model_names[i]+'}\n\n')

    epoch = options.epoch
    for i in range(len(train_metrics)):
        epoch = min(epoch,len(train_metrics[i]))

    for i in range(len(train_metrics)):
        train_metrics[i] = th.tensor(train_metrics[i][:epoch]).numpy()
        val_metrics[i] = th.tensor(val_metrics[i][:epoch]).numpy()

    k_list = list(range(epoch))
    train_metrics=th.tensor(train_metrics)
    val_metrics = th.tensor(val_metrics)
    recall_file.close()
    f1_file.close()
    # for i in range(5):
    #     avg = np.average(train_metrics[:,-1,i],axis=0)
    #     print(avg)
    for m in mod_names:
        for n in range(5):
            if m =='train':
                values = train_metrics[:,:,n]
            else:
                values = val_metrics[:, :, n]
            for i in range(len(models_list)):
                #val_metrics = np.array(val_metrics)
                #plt.plot(k_list, values[i])
                xnew = np.linspace(0, len(k_list)-1,300)
                spl = make_interp_spline(k_list, values[i], k=3)  # type: BSpline
                value_smooth = spl(xnew)
                plt.plot(xnew, value_smooth)
                ax = plt.subplot(111)
                plt.xticks(fontsize=11)
                plt.yticks(fontsize=11)
                ax.set_xticks(k_list, k_list)
                plt.ylabel(metric_names[n],fontsize=15)
                plt.xlabel('epoch',fontsize=15)
                plt.legend(model_names, loc='lower left', bbox_to_anchor=(0.77, 0.2))
                #plt.savefig(os.path.join(save_dir,m+'/'+metric_names[n]+'.png'))

            if not os.path.exists(os.path.join(save_dir, m)):
                os.makedirs(os.path.join(save_dir, m))
            plt.savefig(os.path.join(save_dir, m + '/' + metric_names[n] + '.png'))
            plt.legend(model_names, loc='lower left', bbox_to_anchor=(0.77, 0.2))
            plt.show()
            plt.cla()
        #plt.show()
            # print(train_mertics[:,0])
            # print(val_mretics[:,0])
