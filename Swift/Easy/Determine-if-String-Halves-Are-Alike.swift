class Solution {
    func halvesAreAlike(_ s: String) -> Bool {
        let string = Array(s) //Easier to fetch char via indexing 
        let vowels: [String] = ["A", "E", "I", "O", "U", "a", "e", "i", "o", "u"]
        var front = 0
        var end = string.count - 1
        var firstVolCount = 0
        var secondVolCount = 0
        
        while(front<end) {
            if vowels.contains(String(string[front])) {
                firstVolCount += 1
            }
            
            if vowels.contains(String(string[end])) {
                secondVolCount += 1
            }
            
            front+=1 
            end -= 1
            
        }
        return firstVolCount == secondVolCount
        
    }

}

