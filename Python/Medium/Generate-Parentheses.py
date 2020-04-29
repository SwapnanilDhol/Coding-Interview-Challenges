class Solution:
    def generateParenthesis(self, n: int) -> List[str]:
        li = []
        self.helper(li, "", n, n)
        return li
        
    def helper(self,l: List, curr: str, left: int, right: int):
        if left<0 or left > right:
            return
        if left == 0 and right == 0:
            l.append(curr)
            return 
        self.helper(l, curr + '(', left-1, right)
        self.helper(l, curr + ')', left, right-1)
