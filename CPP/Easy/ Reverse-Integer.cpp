class Solution {
public:
    int reverse(int x) {
        
        double result = 0;
        
        while(x != 0) {
            int reminder = x % 10;
            x = x / 10;
            result = result * 10;
            result = result + reminder;
        }
        
        if(result > INT_MAX || result < INT_MIN) {
            return 0;
        } else {
            return result;
        }        
    }
};