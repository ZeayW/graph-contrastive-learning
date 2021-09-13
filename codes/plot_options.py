import argparse


def get_options(args=None):
    parser = argparse.ArgumentParser()
    parser.add_argument('--save_dir',type=str, help= 'where to save the plots')
    parser.add_argument('--models_dir',type=str, help= 'where are the models')
    parser.add_argument('--models_list',type=str,nargs='+',help='models list')
    parser.add_argument('--model_names', type=str, nargs='+', default=None,help='model names list')
    parser.add_argument('--epoch',type=int,default=100)
    options = parser.parse_args(args)

    return options
