class Solution:
    def canConstruct(self, ransomNote: str, magazine: str) -> bool:
        if len(ransomNote) > len(magazine):
            return False 
        magazineDict = {}
        
        for char in magazine:
            if char in magazineDict:
                magazineDict[char] += 1
            else:
                magazineDict[char] = 1
        for char in ransomNote:
            if char not in magazineDict:
                return False 
            if magazineDict[char] == 0:
                return False 
            magazineDict[char] -= 1
        return True 
