class Solution {
    func sumZero(_ n: Int) -> [Int] {
        
        guard n != 1 else {
            return [0]
        }
        
        var output: [Int] = []
        
        for index in 1...Int(n/2) {
            output.append(index)
            output.append(-index)
        }
        
        if n.isMultiple(of: 2) {
            return output
        }
        output.append(0)
        return output
    }
}