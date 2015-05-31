#Torti Chigozirim
#Sat 20 Sep 2014 19:07:25 WAT 
#Python quicksort implementation

#Sample Data
at = ['E', 'S', 'F', 'E', 'T', 'Q', 'W', 'Z', 'A', 'B', 'N', 'L', 'O']
ar = ['K', 'R','A','T','E','L', 'E', 'P', 'U', 'I', 'M', 'Q', 'C','X', 'O', 'S']

#Exchange items in an array
def exchange(array, i, j):
	temp = array[i]
	array[i] = array[j]
	array[j] = temp

	
#Partition
def partition(a, lo, hi):
	print 'Partition: ' + str(a[lo:hi])
	i = lo
	j = hi + 1
	while True:
		print "lo : " + str(lo)
		#Scan from left to right as long as a[i] < 
		while True:
			i += 1
			print "index: " + str(i) + " " + str(lo)
			print str(a[i]) + ' ' +' < ' + str(a[lo])
			if a[i] < a[lo]:
				print True
			else:
				break
			if i == hi:
				break
		print "i: " + str(i)		
		while True:
			j -= 1
			print "index: " + str(j) + " " + str(lo)
			print str(a[j]) + ' ' +' > ' + str(a[lo])
			if a[j] > a[lo]:
				print True
			else:
				break
			if j == lo:
				break
		print "j: " + str(j)
		if i >= j:
			break
		exchange(a, i, j)
	
	exchange(a, lo, j)
	print "Partitioned: " + str(a)
	return j

def intSort(a, lo, hi):
	if(hi <= lo):
		return
	j = partition(a, lo, hi)
	intSort(a, lo, j-1)
	intSort(a, j+1, hi)

def sort(a):
	intSort(a, 0, len(a)-1)

sort(ar)
sort(at)
#print (partition2(ar, 0, len(ar)-1))

print at
print ar

