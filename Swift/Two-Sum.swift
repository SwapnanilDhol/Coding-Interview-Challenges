class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        if nums.count < 0 {
            return []
        }
        var rValue = [Int]()
        var myDict: [Int:Int] = [:]
        
        for index in 0...nums.count - 1 {
            if let val = myDict[nums[index]] {
                rValue = [val, index]
            }
            else {
                myDict[target-nums[index]] = index
            }
        }
        return rValue
    }
}
