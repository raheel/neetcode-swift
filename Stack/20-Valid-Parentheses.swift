class Solution {
    func isValid(_ s: String) -> Bool {
        var openSet: Set = ["(", "{", "["]
        var closeSet: Set = [")", "}", "]"]
        var closeToOpenMapping = [")":"(", "}":"{", "]":"["]
        var stack:[String] = []
        
        for c in s{
            var ch = String(c)
            var isOpen = openSet.contains(ch)
            var isClose = closeSet.contains(ch)
            
            if isOpen {
                stack.append(ch)
            } else            
            if isClose{
                if stack.isEmpty{
                    return false
                }
                if let lastItem = stack.last{
                    if closeToOpenMapping[ch]==lastItem{
                        stack.removeLast()
                    } else{
                        return false
                    }
                }
            } 

        }
        
        return stack.count==0
    }
}