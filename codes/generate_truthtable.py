from generate_options import get_options
import os
# module tb1(
# input [1:0] I,
# output reg O
#     );
#      always@(*)
#         case(I)
#             2'b00: O = 0;
#             2'b01: O = 1;
#             2'b10: O = 1;
#             2'b11: O = 0;
#         endcase
# endmodule


num_input = get_options().num_input
save_dir = get_options().save_dir

for i in range(1,pow(2,pow(2,num_input))-1):
    truthValue = bin(i)
    print(truthValue,len(truthValue))
    save_path = os.path.join(save_dir,'i{}'.format(num_input))
    if not os.path.exists(save_path):
        os.makedirs(save_path)
    with open(os.path.join(save_path,'{}.v'.format(i)),'w') as f:
        f.write('module {}(\n')
        f.write('input [{}:0] I,\n')
        f.write('output reg O\n')
        f.write(');\n')
        f.write('always@(*)\n\tcase(I)\n')
        for j in range(pow(2,num_input)):
            f.write("2'b{}: O = {};\n".format(bin(j),truthValue[j]))
        f.write('\tendcase\n')
        f.write('endmodule\n')