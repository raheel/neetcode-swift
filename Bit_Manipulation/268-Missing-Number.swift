class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        var result = nums.count
        for index in 0..<nums.count{
            result ^= index ^ nums[index]
        }
        return result
    }
}