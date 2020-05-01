# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    stack = []
    def inorderTraversal(self, root: TreeNode) -> List[int]:
        self.stack.clear()
        if root is None:
            return []
        self.checker(root)
        return self.stack
    
    def checker(self, root: TreeNode):
        if (root.left is not None):
            self.checker(root.left)
        
        self.stack.append(root.val)
        
        if (root.right is not None):
            self.checker(root.right)
