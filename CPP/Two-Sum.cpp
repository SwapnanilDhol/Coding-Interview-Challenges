class Solution
{
public:
vector twoSum(vector& nums, int target) {
map<int,int> m;
int t=0;
for(int i=0;i<nums.size();i++) {
t=target-nums[i];
 if(m.find(t)!=m.end()) {
  auto p=m.find(t);
  return {p->second,i};
}
  m.insert({nums[i],i});
}
  return {NULL,NULL};
}
};
