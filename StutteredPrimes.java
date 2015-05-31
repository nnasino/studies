
public class StutteredPrimes{
    /** Prints out the stutter of all primes from 2 up to the given
     * command line argument interpreted as an integer, 10 to a line
     */

    /** This prints out the <code> number</code> passed to it if it is
     * a prime number else returns -1
     */
    static int isPrime(int number){
        if(number <= 1)
            return -1
        if(number == 2)
            return 2;
        for(int i = 2; i < number; i++)
            if((number % i) == 0)
                return -1;
        return number;
    }
    static void stutter(int number){
        String numString = Integer.toString(number);
        if(number==-1)
            return;
        for(int i = 0; i < numString.length(); i++){
            //Print the digit twice
            System.out.print(numString.charAt(i)+ ""+numString.charAt(i));
        }
        System.out.println();
    }

    public static void main(String[] args){
        int number = Integer.parseInt(args[0]);
        for(int i = 2; i < number; i++){
            stutter(isPrime(i));
        }
    }
}
