/** Facebook hacker cup 2014 Torti chigozirim first attempt
*	Question 1: Cooking the books
*/
#include <iostream>
#include <fstream>
#include <cstdlib>
#include <cstring>

using namespace std;

int main(int argc, char* argv[]){
    if (argc != 2){
        cout << "Usage: cook inputfilename" << endl;
        return 1;
    }
    cout << argv[1] << endl;
    ifstream in(argv[1]); //open for reading
    ofstream out("output");  //open for writing
	int largestLoc = 0;
	int smallestLoc = 0;
	string tempString;
	string copyString;
	char swap;
    int T;
    int zero = 0;
    //read the number of test cases T
    in >> T;
    cout << T;
    for(int i=0; i < T; i++){
        cout << "Case #" << i+1 << ": ";
        out << "Case #" << i+1 << ": ";
        //getline(in, tempString);
        in >> tempString;
        zero = 0, largestLoc = 0, smallestLoc = 0;
		//For every digit in the number
		for(int i = 0, size = tempString.size(); i < size; i++){
			if((tempString[i] - '0') >= (tempString[largestLoc] - '0')){
				largestLoc = i;
			}
			if((tempString[i]-'0') <= (tempString[smallestLoc]-'0')){
		    	if((tempString[i]-'0') == 0){
                    //zero
                    if(tempString.size() == 1)
                        zero = 0;
                    else
                        zero = 1;
                    smallestLoc = i;
                }else{
                    zero = 0;
                    smallestLoc = i;
                }

			}
		}
		copyString = tempString;

        int index = 0;
        if(zero){
            index = 1;
        }
	//smallest possible number
		swap = copyString[index];
		copyString[index] = copyString[smallestLoc];
		copyString[smallestLoc] = swap;
		out << copyString << " ";

        //largest possible number
        swap = tempString[0];
		tempString[0] = tempString[largestLoc];
		tempString[largestLoc] = swap;
		out << tempString ;
		out << endl ;
	}
}
