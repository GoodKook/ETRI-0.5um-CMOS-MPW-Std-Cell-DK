#
# Gentle start of Python
#   Function that takes 2 numbers as input
#   and outputs their average
# Filename: func_avg.py
#

def avg(x,y):
    print("first input is: ", x)
    print("second input is: ", y)
    a = (x+y)/2.0
    print("average is ", a)
    return a

if __name__=="__main__" :
    x = 3
    y = 5
    print(F"Average of {x} and {y} is {avg(x,y)}")
