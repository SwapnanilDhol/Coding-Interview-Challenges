class Solution:
    def reverse(self, x):
        a = int(str(x)[::-1]) if x >= 0 else -self.reverse(-x)
        return a if a < 2**31-1 else 0
