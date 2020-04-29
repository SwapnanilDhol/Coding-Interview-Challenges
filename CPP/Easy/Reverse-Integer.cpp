
class Solution {
public:
int reverse(int x)
{
int sign = x<0?-1:1;
long rev=0;
int r;
int y = pow(2,31)-1;

    x = abs(x);
    
    while(x)
    {
        r = x%10;
        x = x/10;
        rev = rev*10 + r;
    }
    
    rev = rev*sign;
    
    if(rev<=y && rev>=(-1*y-1))
        return (int)rev;
    else 
        return 0;
}
};
