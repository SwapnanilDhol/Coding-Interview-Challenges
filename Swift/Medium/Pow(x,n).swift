class Solution {
    func myPow(_ x: Double, _ n: Int) -> Double {
       return helper(x, n)
    }
    
    private func helper(_ x: Double, _ n: Int) -> Double {
        if x == 0 {
            return 0 //0 Power anything is 0
        }
        
        if n == 0 {
            return 1 //Anything power 0 is 1
        }
        var temp = helper(x, n/2) //Reccurcive call by passing n/2
        
        if n % 2 == 0 {
            
            return temp*temp
        }
        if n < 0 {
            //if the power is negative it shifts as the denom
            return (1/x)*temp*temp
        }
        return x*temp*temp
    }
}
