class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var maxSum = nums[0]
        var total = 0
        for num in nums{
            total += num
            
            maxSum = max(total, maxSum)
            if total < 0{
                total = 0
            }
            
        }
        return maxSum
    }
}