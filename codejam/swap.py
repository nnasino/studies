import sys

#This is used to flip the matrix
def swapMatrix(array):
    i = 0
    j = 0
    while i < len(array):
        j = i
        while j < len(array):
            temp = array[i][j]
            array[i][j] = array[j][i]
            array[j][i] = temp
            j += 1
        i += 1

#Print out the array in the form required
def printMatrix(array):
    for i in range(0, len(array)):
        for j in range(0, len(array)):
            sys.stdout.write(str(array[i][j]) + " ")
        print "\n"

array = [[1,2,3,4], [5,6,7,8], [9,10,11,12], [13,14,15,16]]
printMatrix(array)
print "_____________________________________________________________"


print printMatrix(array)






