//Code chef.com Easy Fombinatorial
//Torti Chigozirim 21 November 2014
#include <iostream>
#include <cmath>
#include <fstream>
using namespace std;

long f(long N){
    long res = 1;
    for(long i = 1; i <= N; i++){
        res *= pow(i,i);
    }
    return res;
}

int main(){
    //Streams for reading and writing
    //ifstream in("smallinput.txt");
    //ofstream out("output.txt");
    //Read in the number of cases
    int cases = 0;
    cin >> cases;
    int n = 0, m = 0, q = 0;
    int r = 0;
    long ans = 0;
    for(int i = 0;i < cases; i++){
        cin >> n;
        cin >> m;
        cin >> q;
        for(long j = 0; j < q; j++){
            cin >> r;
            ans = (f(n) / (f(r)* f(n-r)));
            ans %= m;
            cout << ans << endl;
        }
    }
    return 0;
}
