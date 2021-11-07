# http://icpc.sharif.ir/2016/problems/P95.pdf
# Problem A: Tax
def darsad(darsad, number):
    return darsad * (number // 100)

my_dict = {}
while True:
    num = int(input("nums: "))
    if num == 0:
        break
    else:
        my_dict[num] = 0

for num in my_dict.keys():
    if num <= 1000000:
        my_dict[num] = num
    elif num > 1000000 and num <= 5000000:
        my_dict[num] = num - darsad(10, num)
    elif num > 5000000:
        my_dict[num] = num - darsad(20, num)

for value in my_dict.values():
    print(value)