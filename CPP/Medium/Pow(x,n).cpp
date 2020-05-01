class Solution {
public:
    double myPow(double x, int n) {
        return checker(x,n);
    }
    
    double checker(double x,int n){
        if(x==0){
            //0 power anything is 0
            return 0;
        }
        if(n==0){
            //anything power 0 is one
            return 1;
        }
        double temp = checker(x,n/2);
        if(n%2==0){
            return temp*temp;
        }
        if(n<0){
            //if power is negative it becomes the denom 
            return (1/x)*temp*temp;
        }
        return x*temp*temp;
    }

};
