class Solution {
    func countBits(_ n: Int) -> [Int] {
        var dp:[Int] = [Int](repeating: -1, count:n+1)
        dp[0] = 0
        var offset = 1 
        for i in stride(from: 1, through: n, by: 1){
            if i == offset * 2{
                offset *= 2
            }
            dp[i] = 1 + dp[i-offset]
        }
        print(dp)
        return dp
    }
}