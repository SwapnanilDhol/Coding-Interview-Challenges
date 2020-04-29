class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {     
        nums = nums.filter {$0 != val}
        return nums.count
    }
}
