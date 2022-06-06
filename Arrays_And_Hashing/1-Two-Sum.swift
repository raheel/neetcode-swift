class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int:Int]()
        
        for i in 0..<nums.count{
            var current = nums[i]
            var other = target-current
            if dict[other] != nil {
                if let otherIndex = dict[other]{
                    return [i, otherIndex]
                }                
            } else{
                dict[current] = i
            }
            
        }
        return []
    }
}