class Solution {
public:
    int maxProfit(vector<int>& prices) {
        
        if (prices.size() == 1) {
            return 0;
        }
        
        int profits = 0;
        
        for (int i = 0; i < prices.size() - 1; i++) {
            if (prices[i+1] > prices[i]) {
                profits += prices[i+1] - prices[i];
            }
        }
        return profits;
    }
};