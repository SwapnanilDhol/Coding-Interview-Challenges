/**
 * The knows API is defined in the parent class VersionControl.
 *     func isBadVersion(_ version: Int) -> Bool{}
 */

class Solution : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        
        var start = 1, end = n, mid = 0
        if isBadVersion(start) {
            return start
        }
        
        while (start < end ) {
            mid = (end-start) / 2 + start
            if isBadVersion(mid) {
                end = mid
            }
            else {
                start = mid + 1
            }
        }
        return start
    }
}
