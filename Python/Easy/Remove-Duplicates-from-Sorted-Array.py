class Solution:
    def removeDuplicates(self, nums: List[int]) -> int:
        
        if nums == None or len(nums == 0:
            return 0
        s = set(nums)
        sList = list(s)
        sList.sort()
        for i,val in enumerate(sList):
            nums[i] = val
        return len(sList)    
