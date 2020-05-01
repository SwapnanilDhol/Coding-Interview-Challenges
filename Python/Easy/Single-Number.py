class Solution:
    def singleNumber(self, nums: List[int]) -> int:
        myDict = {}
        for number in nums:
            if number in myDict:
                myDict[number] += 1
            else:
                myDict[number] = 1
                
        #Checking which values are one
        
        for key,value in myDict.items():
            if(value == 1):
                return key
        return 0
