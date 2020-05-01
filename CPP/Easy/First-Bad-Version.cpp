class Solution {
public:
    int firstBadVersion(int n) {
        int start = 1, end = n, mid = 0;
        
        if (isBadVersion(start)) {
            return start;
        }
        while(start < end) {
            mid = (end - start) / 2 + start;
            if (isBadVersion(mid)) {
                end = mid;
            }
            else {
                start = mid + 1;
            } 
        }
        return start;
        
    }
};

//Since this is a simple Binary search the time complexity is O(LogN)
