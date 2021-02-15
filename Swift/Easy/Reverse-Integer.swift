class Solution {
    func reverse(_ x: Int) -> Int {
        
        var number = x
        var reverseNumber = 0
        
        while (number != 0) {
            let reminder = number % 10
            number /= 10
            reverseNumber *= 10
            reverseNumber += reminder
        }
        
        if reverseNumber > Int32.max || reverseNumber < Int32.min { return 0 }
        return reverseNumber
    }
}