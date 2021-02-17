class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        
        guard !(prices.count == 1) else {
            return 0
        }
        
        var profits = 0
        
        for i in 1..<prices.count {
            profits += max(prices[i]-prices[i-1],0)
        }
        
        return profits
    }
}