#Codejam 2014 qualification round magic trick
#nnasino
import sys


#Print out the array in the form required
def printMatrix(array):
    for i in range(0, len(array)):
        for j in range(0, len(array)):
            sys.stdout.write(str(array[i][j]) + " ")
        print "\n"

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

#algorithm for solving the problem
def magictrick(word_row, second_arrange, rowTwo):
    cardFound = False
    card = ""
    tempRow = word_row
    for element in second_arrange[rowTwo-1]:
	print "element = " + element
	print tempRow
        if element in tempRow:
            if cardFound:
                return "Bad magician!"
            else:
                cardFound = True
                card = element
    if cardFound:
        return str(int(card))
    else:
        return "Volunteer cheated!"
#inputFile = open("smallinput.txt", "r")
inputFile = open("A-small-practice.in", "r")
outputFile = open("output.out", "w")
#Read the number of cases 
cases = int(inputFile.readline())
print "There are " + str(cases) + " cases"
count = 1
while count <= cases:
    row_one = int(inputFile.readline())
    print "The card is in row " +  str(row_one)
    word_matrix2 = list()
    for i in range(0, 4):    
        if i == row_one-1:
            word_matrix = inputFile.readline().split(' ')
        else: inputFile.readline().split(' ')
    word_matrix[3] = str(int(word_matrix[3]))
    print word_matrix
    row_two = int(inputFile.readline())
    for i in range(0, 4):
        word_matrix2.append(inputFile.readline().split(' '))
    outputFile.write('Case #%d: %s\n' % (count, magictrick(word_matrix,word_matrix2,  row_two))  )
    count += 1
inputFile.close()
outputFile.close()
