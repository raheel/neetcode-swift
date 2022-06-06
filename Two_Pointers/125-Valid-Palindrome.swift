class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let chars = [Character](s.lowercased())
        
        var start = 0
        var end = chars.count - 1
        
        while start < end {
            while start <= end && !chars[start].isLetter && !chars[start].isNumber{
                start += 1
            }
            
            while start <= end && !chars[end].isLetter && !chars[end].isNumber{
                end -= 1
            }            
            
            if start <= end && chars[start] != chars[end]{
                return false
            }
            
            start += 1
            end -= 1
        }
        
        return true
    }
}