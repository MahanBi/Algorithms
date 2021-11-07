# https://quera.ir/contest/assignments/31569/problems/103731

nums = input()
my_list = list(map(int, nums.split(" ")))
counter = 0
for item in my_list:
    if item >= 80:
        counter += 1

if counter >= 3:
    print("Mamma mia!")
elif counter >= 1:
    print("Mamma mia!!")
elif counter == 0:
    print("Mamma mia!!!")
