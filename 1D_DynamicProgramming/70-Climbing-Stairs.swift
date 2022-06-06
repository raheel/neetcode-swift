class Solution {
    var dict:[Int:Int] = [:]

    //dynamic programming
    func climbStairs(_ n: Int) -> Int {
       var dp:[Int] = [0,1]
        
        for i in 2 ... n+1{
            dp.append(dp[i-1] + dp[i-2])
        }
        
        return dp.last!
    }

    //recursion with memoization 
    func climbStairs2(_ n: Int) -> Int {
        return climb(0, n)
    }
    
    func climb(_ i:Int, _ n:Int) -> Int {
        if i>n {
            return 0
        }
        
        if i==n{
            return 1
        }
        
        if dict[i+1] == nil{
            dict[i+1] = climb(i+1, n)
        }
        if dict[i+2] == nil{
            dict[i+2] = climb(i+2, n)            
        }    
        
        return dict[i+1]! + dict[i+2]!
    }
}