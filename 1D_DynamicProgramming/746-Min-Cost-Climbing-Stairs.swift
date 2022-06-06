class Solution {
    var cost:[Int] = []
    var dict:[Int:Int] = [:]
    
    //dynamic programming    
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
        var dp = cost
        dp.append(0)
        
        for i in stride(from: dp.count-3, through: 0, by: -1){
           dp[i] += min(dp[i+2], dp[i+1])
        }
       
        return min(dp[0], dp[1])
    }
    
    //recursion with memoization     
    func minCostClimbingStairs2(_ cost: [Int]) -> Int {
        self.cost = cost
        var minCost = min(findCost(0), findCost(1))
        return minCost
    }
    
    func findCost(_ i: Int)->Int{
        if i >= cost.count{
            return 0
        }
        
        if dict[i+1] == nil{
            dict[i+1] = findCost(i+1)
        }
        
        if dict[i+2] == nil{
            dict[i+2] = findCost(i+2)
        }        
        var cost1 = cost[i] + dict[i+1]!
        var cost2 = cost[i] + dict[i+2]!
        return min(cost1, cost2)
    }
}