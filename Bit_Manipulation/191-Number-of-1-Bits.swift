class Solution {
    func hammingWeight(_ n: Int) -> Int {
        var bits = 0
        var mask = 1
        
        for i in stride(from: 0, to: 32, by: 1){
            if (n & mask) != 0 {
                bits += 1
            }
            mask <<= 1
        }
        return bits
    }

    func hammingWeight2(_ n: Int) -> Int {
        var bits = 0
        var num = n       
        while num != 0{
            num = num & (num - 1)    
            bits += 1
        }
        return bits
    }    
}