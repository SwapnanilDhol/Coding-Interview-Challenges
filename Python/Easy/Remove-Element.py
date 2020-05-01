class Solution:
    def removeElement(self, nums: List[int], val: int) -> int:
        index = []
        for i in range(0,len(nums)):
            if nums[i] == val:
                index.append(i)
        index = index[::-1]
        for i in index:
            del nums[i]   
        return len(nums)
