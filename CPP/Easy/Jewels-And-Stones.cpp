class Solution {
public:
    int numJewelsInStones(string J, string S) {
        int count=0;
        for (int i=0; i<S.length(); i++)
            if (J.find(S[i]) != std::string::npos)
                count++;
        return count;
    }
};
