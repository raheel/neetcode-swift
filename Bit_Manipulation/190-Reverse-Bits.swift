class Solution {
    func reverseBits(_ n: Int) -> Int {
        var res = 0
        for i in stride(from: 0, to: 32, by: 1){
            var bit = (n >> i) & 1
            res = res | (bit << (31 - i))
        }
        return res
    }
}