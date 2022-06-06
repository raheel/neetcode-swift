class Solution {
    var set = Set<Int>()
    func isHappy(_ n: Int) -> Bool {
        var num = n
        if num==1{
            return true
        }
        
        if set.contains(num){
            return false
        }
        
        set.insert(num)

        var result = 0
        while num > 0{
            let digit = num%10
            result += digit*digit
            num = num/10            
        }
        
        return isHappy(result)
    }
}