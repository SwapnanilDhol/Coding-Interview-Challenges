/**
 * Definition for a binary tree node.
 * struct TreeNode {
 *     int val;
 *     TreeNode *left;
 *     TreeNode *right;
 *     TreeNode() : val(0), left(nullptr), right(nullptr) {}
 *     TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
 *     TreeNode(int x, TreeNode *left, TreeNode *right) : val(x), left(left), right(right) {}
 * };
 */
class Solution {
public:
    vector<int>stack;
    void checker(TreeNode* root) {
        
        if(root->left) {
            checker(root->left);
        }
        stack.push_back(root->val);
        if(root->right){
            checker(root->right);
        }
        
    }
    vector<int> inorderTraversal(TreeNode* root) {
        
        stack.clear();
        if (!root) {
            return stack;
        }
        
        checker(root);
        return stack;
        
    }
};
