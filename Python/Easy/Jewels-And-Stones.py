class Solution:
    def numJewelsInStones(self, J: str, S: str) -> int:
        
        myDict = {}
        count = 0
        for jwel in J:
            if jwel not in myDict:
                myDict[jwel] = 1
        for stone in S:
            if stone in myDict:
                count += 1
        return count
