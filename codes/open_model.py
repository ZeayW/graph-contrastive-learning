from dataset_quick import Dataset_q
from dataset_not_edge import Dataset_n
from options import get_options
from model import *

import pickle

import os

def load_model(device,options):
    if options.pre_train is True:
        model_dir = options.pre_model_dir
    else:
        model_dir = options.model_saving_dir
    if os.path.exists(os.path.join(model_dir, 'model.pkl')) is False:
        return None,None


    with open(os.path.join(model_dir,'model.pkl'), 'rb') as f:
        #print(f)
        param, classifier,mlp = pickle.load(f)
        #print(classifier)
        param.model_saving_dir = options.model_saving_dir
        classifier = classifier.to(device)
        if options.change_lr:
            param.learning_rate = options.learning_rate
        if options.change_alpha:
            param.alpha = options.alpha
    return param,classifier

options = get_options()
device = th.device("cuda:"+str(options.gpu) if th.cuda.is_available() else "cpu")
options, model = load_model(device, options)
if model is None:
    print("No model, please prepocess first , or choose a pretrain model")
    exit()
print(options)
print(model)