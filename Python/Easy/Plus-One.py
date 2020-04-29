class Solution:
    def plusOne(self, digits: List[int]) -> List[int]:
        return [int(i) for i in list(str(int(''.join(map(str, digits))) + 1))]
