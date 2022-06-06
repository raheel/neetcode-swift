
class MinStack {
    var stack:[Int] = []
    var minStack:[Int] = []
    
    init() {
        
    }
    
    func push(_ val: Int) {
        stack.append(val)
        if minStack.isEmpty || minStack.last! >= val{
            minStack.append(val)
        }
    }
    
    func pop() {
        var last = stack.removeLast()
        if !minStack.isEmpty && minStack.last! == last{
            minStack.removeLast()
        }        
    }
    
    func top() -> Int {
        return stack.last!
    }
    
    func getMin() -> Int {
        minStack.last!
    }
}

/**
 * Your MinStack object will be instantiated and called as such:
 * let obj = MinStack()
 * obj.push(val)
 * obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Int = obj.getMin()
 */