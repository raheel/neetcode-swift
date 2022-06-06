class KthLargest {
    var k:Int
    var heap:[Int]  //using an array as a heap since Swift doesn't have a built-in heap library
    
    init(_ k: Int, _ nums: [Int]) {
        self.k = k
        self.heap = []
        for num in nums{
            add(num)
        }
    }
    
    func add(_ val: Int) -> Int {
        if heap.count < k || (heap.count >= k && val >= heap[0]){
            heap.append(val)
            heap = heap.sorted(by: { $0 < $1})  
        }
        
        if (heap.count > k){
            heap.removeFirst()
        }

        return heap[0]
    }
}
/**
 * Your KthLargest object will be instantiated and called as such:
 * let obj = KthLargest(k, nums)
 * let ret_1: Int = obj.add(val)
 */