class Solution {
public:
    int removeElement(vector<int>& nums, int val) {
       int previous(0);
       while (previous<nums.size()){
           if (nums[previous]==val){
               nums.erase( nums.begin( )+previous);
           }
           else previous+=1;
           
       }
       return nums.size();
    }
};
