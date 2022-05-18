class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.length != t.length{
            return false
        }
        
        var dict = [String:Int]()
        
        for l in s{
            var letter = String(l)        
            if dict[letter] == nil{
                dict[letter] = 1
            } else {
                var val = dict[letter] ?? 0
                dict[letter] =  val + 1
            }
        }
                
        for l in t{
            var letter = String(l)
            if dict[letter] == nil{
                return false
            } else {
                var val = dict[letter] ?? 0
                dict[letter] =  val - 1
                
                if dict[letter] == 0{
                    dict.removeValue(forKey: letter)
                }
            }
        }            
        
        if dict.count == 0{
            return true
        }
        
        
        
        return false
    }
}