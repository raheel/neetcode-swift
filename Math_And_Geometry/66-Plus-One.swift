class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var nums = digits

        var carryOver = 1
        for index in stride(from:nums.count-1, through: 0, by: -1){
            if carryOver == 1{
                nums[index] += 1
            }
            
            if nums[index] == 10 {
                nums[index] = 0
                carryOver = 1                
            } else{
                carryOver = 0
            }
        }
        if carryOver == 1{
            nums.insert(1, at: 0)
        }
        return nums
    }
}