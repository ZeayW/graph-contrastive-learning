
import numpy as np

import matplotlib.pyplot as plt

def CV_plot(k_train_loss,k_val_loss, k_list, weight_decay,dropout,index):
    k_train_loss = np.round(k_train_loss, 4)
    k_val_loss = np.round(k_val_loss, 4)
    plt.plot(k_list, k_train_loss, color='black')
    plt.plot(k_list, k_val_loss, color='blue')
    ax = plt.subplot(111)
    ax.set_xticks(k_list, k_list)
    plt.ylabel('% Loss')
    plt.xlabel('epoch')
    plt.title('Blue: val_loss \n Black: train_loss\n'+'weight_decay:{0}'.format(weight_decay)+'\tdropout:{0}'.format(dropout))
    plt.savefig("./overfit_test/figure"+str(index)+'.png')

    #plt.show()

