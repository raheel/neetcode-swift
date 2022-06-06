class Solution {
    func lastStoneWeight(_ stones: [Int]) -> Int {
        //using an array as a heap since Swift doesn't have a built-in heap library    
        var heap:[Int] = stones.sorted(by: {$0 < $1})
        
        while heap.count > 1{
            var item1 = heap.removeLast()
            var item2 = heap.removeLast()
            if item1 != item2 {
                heap.append(abs(item1-item2))
                heap = heap.sorted(by: {$0 < $1})                
            }
        }

        return heap.count > 0 ? heap.first! : 0
    }
}