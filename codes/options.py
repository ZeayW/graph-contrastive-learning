import argparse


def get_options(args=None):
    parser = argparse.ArgumentParser()
    parser.add_argument("--learning_rate", type=float, default=1e-3)
    parser.add_argument("--batch_size", type=int, default=512)
    parser.add_argument("--num_epoch", type=float, default=1500)
    parser.add_argument("--in_dim", type=int, default=22)
    parser.add_argument("--out_dim", type=int, default=256)
    parser.add_argument("--hidden_dim", type=int, default=512)
    parser.add_argument("--out_nlayers", type=int, nargs='+',default=2)
    parser.add_argument("--in_nlayers", type=int, nargs='+',default=2)
    parser.add_argument("--gcn_dropout", type=float, default=0)
    parser.add_argument("--mlp_dropout", type=float, default=0)
    parser.add_argument("--weight_decay", type=float, default=0)
    parser.add_argument("--model_saving_dir", type=str, default='model')
    parser.add_argument("--pre_model_dir",type=str,default='model')
    parser.add_argument("--preprocess",action='store_true')
    parser.add_argument("--test_model_path1",type=str,default='k_models/ly5_dim512_256_bs7')
    parser.add_argument("--test_model_path2", type=str, default='k_models/ly5_dim512_256_bs7')
    parser.add_argument("--result_dir",type = str,default='inference/io/new')
    parser.add_argument("--testdata_dir",type=str,default='../dataset/test/ICCAD2014/v')
    parser.add_argument("--n_fcn",type=int,default=3)
    parser.add_argument("--k",type=int,default=10)
    parser.add_argument("--alpha",type=float,default=1.0)
    parser.add_argument("--pre_train",action='store_true')
    parser.add_argument("--change_lr",action='store_true')
    parser.add_argument("--change_alpha",action='store_true',)
    parser.add_argument("--fold",type=int,default=0)
    parser.add_argument("--gpu",type=int,default=0)
    parser.add_argument('--plot_model_dir',type=str,default='')
    parser.add_argument('--weighted',action='store_true',help='choose a weighted bidirection model')
    parser.add_argument('--balanced',action='store_true',help = 'choose to balance the training dataset')
    parser.add_argument('--gat',action='store_true',help = 'choose a GAT-based model')
    parser.add_argument("--num_heads", type=int, nargs='+',default=2)
    parser.add_argument('--not_edge',action='store_true', help= 'whether to put the not gates on the edges or not')
    parser.add_argument("--dataset",type=str,default='plus',help='choose a dataset, new means ICCAD2014/new while plus means ICCAD2014/plus')
    parser.add_argument('--agg_type',type=str,default='mean',help='choose an aggregation type for GCN: mean / lstm / gcn / pool')
    parser.add_argument('--rgcn',action='store_true',help='choose a RGCN-based model')
    parser.add_argument('--rel',action='store_true',help='choose a relconv-based(implemented by myself) model')
    parser.add_argument('--attn_type',type=str,default='edge',help='choose then attention type for RelConv')
    parser.add_argument('--in_fanout',type=int,nargs='+', default=None)
    parser.add_argument('--out_fanout', type=int, nargs='+', default=None)
    parser.add_argument('--label',type=str,default='in')
    parser.add_argument('--inception',action='store_true')
    parser.add_argument('--inception2', action='store_true')
    parser.add_argument('--combine',type=str,default='concat')
    parser.add_argument('--bi_combine', type=str, default='concat')
    parser.add_argument('--mlp',action='store_true',help='choose to fc_neigh/fc_self for sageconv')
    parser.add_argument('--predict',action='store_true')
    parser.add_argument('--data_path',type=str,default='iog')
    parser.add_argument('--rand_init',action='store_true')
    parser.add_argument('--gin',action='store_true')
    parser.add_argument('--gnn',action='store_true')
    parser.add_argument('--include',action='store_true')
    parser.add_argument('--clip_depth',type=int,default=8)
    parser.add_argument('--nlabels',type=int,default=2)
    parser.add_argument('--os_rate',type=int,default=20)
    parser.add_argument('--beta',type=float,default=0.5,help='choose the threshold for binary classification to make a trade-off between recall and precision')
    parser.add_argument('--pos_weight',type=float,default=1,help='decide the pos weight for binary classification')
    parser.add_argument('--attn_drop', type=float,default=0.0)
    parser.add_argument('--degree',type=int,default=None)
    parser.add_argument('--region',action='store_true')
    parser.add_argument('--width',type=int,default=32)
    parser.add_argument('--tao',type=float,default=0.1)
    parser.add_argument('--loss_alpha',type=float,default=0.3)
    parser.add_argument('--function',action='store_true')
    parser.add_argument('--bag', action='store_true')
    parser.add_argument('--datapath',type=str,default='data/boundary')
    parser.add_argument('--unlabel',type=int,default=0)
    parser.add_argument('--sub',action='store_true')
    parser.add_argument('--muldiv',action='store_true')
    parser.add_argument('--add', type=int,default=-1)
    parser.add_argument('--num_input', type=int, default=2)
    parser.add_argument('--save_dir', type=str, default='../truthtables')
    parser.add_argument('--data_dir', type=str, default='../truthtables/i')
    parser.add_argument('--split', type=int, default=1)
    parser.add_argument('--start',type=int, nargs='+', default=[5,1])
    parser.add_argument('--end', type=int, nargs='+', default=[7, 3])
    parser.add_argument('--train_percent',type=int,default=6)
    parser.add_argument('--loss_thred',type=float,default=0.1)
    parser.add_argument('--freeze',action='store_true')
    #parser.add_argument('--in')
    options = parser.parse_args(args)

    return options
