class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        guard !prices.isEmpty else { return 0}
        
        var minVal = prices[0]
        var maxVal = 0
        
        for price in prices {
            let profit = price - minVal
            
            maxVal = max(maxVal, profit)
            
            minVal = min(minVal, price)
        }
        
        return maxVal
    }
}