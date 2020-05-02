class Solution {
    func numJewelsInStones(_ J: String, _ S: String) -> Int {
        
        var myDict = [Character: Int]()
        var count = 0
        for jwel in J {
            if myDict[jwel] == nil {
                myDict[jwel] = 1
            }
        }
        
        for stone in S {
            if myDict[stone] != nil {
                count += 1
            }
        }
        return count
    }
}
