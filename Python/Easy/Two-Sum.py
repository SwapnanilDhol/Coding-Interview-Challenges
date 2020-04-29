class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        
        #taking care of edge case
        if len(nums) <0:
            return False 
        
        myDict = {}
        
        for index in range(len(nums)):
            
            if nums[index] in myDict:
                return myDict[nums[index]], index
                
            else:
                myDict[target-nums[index]] = index
