class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var maxProfit = 0
        var lowestPrice = prices[0]
        
        for i in 1..<prices.count{
            let price = prices[i]
            if price < lowestPrice{
                lowestPrice = price
            }
            else{
                var profit = price - lowestPrice
                if profit > maxProfit{
                    maxProfit = profit
                }
            }
        }
        
        return maxProfit
    }
}