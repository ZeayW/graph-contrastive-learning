from options import get_options
import os
import random
import pickle
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

visited_values = {}

num_input = get_options().num_input
save_dir = get_options().save_dir

def full_array(elements,visited):
    res = []

    if len(elements)-len(visited)==1:
        remain = list(set(elements).difference(set(visited)))[0]
        return [str(remain)]
    for element in elements:

        if element in visited:
            continue
        visited.append(element)
        for sub_array in full_array(elements,visited):
            res.append(str(element)+sub_array)
        visited.remove(element)
    #print(res)
    return res


def get_equal_arrays(num_input):

    equal_arrays = []
    varValues = []
    for i in range(pow(2,num_input)):
        value = bin(i)[2:]
        while len(value)!=num_input:
            value = '0'+value
        varValues.append(value)
    #print(varValues)
    var_arrays = full_array(range(num_input),[])
    for var_array in var_arrays:
        truthValue = list(range(pow(2,num_input)))
        for i,varValue in enumerate(varValues):
            new_value = ''
            for j in range(len(varValue)):
                new_value = varValue[int(var_array[j])]+new_value
            #print(new_value,int(new_value))
            truthValue[int(new_value,2)] = i
        equal_arrays.append(truthValue)

    #print(equal_values)
    return equal_arrays

def bitsint(bits):
    res = 0
    for bit in bits:
        res += pow(2,bit)
    return res
res = full_array(range(3),[])
#print(len(set(res)),sorted(res,reverse=True))

#print(get_equal_arrays(3))


#print(equal_arrays)


visited = {}

equal_arrays = get_equal_arrays(num_input)
#print(equal_arrays)

num_sample = None
if get_options().num_input == 2:
    num_sample = 10
elif get_options().num_input == 3:
    num_sample = 50
elif get_options().num_input == 4:
    num_sample = 512
elif get_options().num_input in (5,6):
    num_sample = 2048
elif get_options().num_input in (7,8):
    num_sample = 4096
elif get_options().num_input >=8:
    num_sample = 4096

current_num = 0
# sampled = []
save_path = os.path.join(save_dir,'i{}'.format(num_input))
if not os.path.exists(save_path):
    os.makedirs(save_path)
# if os.path.exists(os.path.join(save_path,'sampled.pkl')):
#     with open(os.path.join(save_path,'sampled.pkl'),'rb') as f:
#         sampled = pickle.load(f)

for vf in os.listdir(save_path):
    if not vf.endswith('.v') :
        continue
    value = int(vf.split('.')[0])
    visited[value]=True
    truthValue = bin(value)[2:]
    while len(truthValue) < pow(2, num_input):
        truthValue = '0' + truthValue
    # deal with symmetrical equivalences
    postive_postions = []
    for j in range(len(truthValue)):
        if truthValue[j] == '1':
            postive_postions.append(j)

    for array in equal_arrays:
        equal_value = 0
        for position in postive_postions:
            equal_value += pow(2, pow(2, num_input) - 1 - array[position])
            visited[equal_value] = True
    # deal with complementary
    visited[pow(2, pow(2, num_input)) - 1 - value] = True

print('num visited:',len(visited),'total',pow(2,pow(2,num_input)))
exit()
while current_num<num_sample:
    i = random.randint(1,pow(2,pow(2,num_input))-1)
    if visited.get(i,False):
        continue
    current_num += 1
    visited[i] = True
    truthValue = bin(i)[2:]
    while len(truthValue)<pow(2,num_input):
        truthValue = '0'+truthValue
    # deal with symmetrical equivalences
    postive_postions = []
    for j in range(len(truthValue)):
        if truthValue[j]=='1':
            postive_postions.append(j)

    for array in equal_arrays:
        equal_value = 0
        for position in postive_postions:
            equal_value += pow(2,pow(2,num_input)-1-array[position])
            visited[equal_value] = True
    # deal with complementary
    visited[pow(2,pow(2,num_input))-1-i] = True

    #print(truthValue,len(truthValue))
    with open(os.path.join(save_path,'{}.v'.format(i)),'w') as f:
        f.write('module i{}_v{}(\n'.format(num_input,i))
        f.write('input [{}:0] I,\n'.format(num_input-1))
        f.write('output reg O\n')
        f.write(');\n')
        f.write('always@(*)\n\tcase(I)\n')
        for j in range(pow(2,num_input)):
            f.write("\t\t{}'b{}: O = {};\n".format(num_input,bin(j)[2:],truthValue[j]))
        f.write('\tendcase\n')
        f.write('endmodule\n')
