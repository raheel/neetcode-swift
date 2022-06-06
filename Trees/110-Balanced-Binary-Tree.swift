/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func isBalanced(_ root: TreeNode?) -> Bool {
        if root == nil {
            return true
        }
        var left = height(root?.left)
        var right = height(root?.right)
        
        if abs(left-right) > 1{
            return false
        }
        
        return isBalanced(root?.left) && isBalanced(root?.right)
    }
    
    func height(_ root: TreeNode?) -> Int {
        if root == nil {
            return -1
        }
        
        var left = height(root?.left)
        var right = height(root?.right)
        
        return 1 + max(left, right)
    }
}