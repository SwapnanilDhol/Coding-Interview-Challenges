# The isBadVersion API is already defined for you.
# @param version, an integer
# @return a bool
# def isBadVersion(version):

class Solution:
    def firstBadVersion(self, n):
        """
        :type n: int
        :rtype: int
        """
        
        (start, end, mid) = (1, n, 0)
        
        if isBadVersion(start):
            return int(start)
        
        while(start<end):
            mid = (end-start) / 2 + start
            if (isBadVersion(mid)):
                end = mid
            else:
                start = mid + 1
        return int(start)
    
    # Converting it into int because the /2 makes the number a float
