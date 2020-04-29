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
    var stack: [Int] = []
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        stack.removeAll()
        if(root == nil) {
            return stack
        }
        checker(root)
        return stack  
        
    }
    
    fileprivate func checker(_ root: TreeNode?) {
        
        if (root?.left != nil) {
            checker(root?.left)    
        }
        stack.append(root?.val ?? -1)
        
        if (root?.right != nil){
            checker(root?.right)
        }
    }
}
