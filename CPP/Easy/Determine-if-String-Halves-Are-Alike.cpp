class Solution {
public:
    bool halvesAreAlike(string s) {
        int firstCount = 0;
        int secondCount = 0;
        
        for (int i = 0; i<s.length()/2; i++) {
            if (isVowel(s[i]) == true ) {
                firstCount++;
            }
        }
        
        for (int i=s.length()/2; i<s.length(); i++) {
            if (isVowel(s[i]) == true ) {
                secondCount++;
            }
        }
        return (firstCount == secondCount); 
        
    }
    
    bool isVowel(char s) {
       if (s == 'a' || s == 'e' || s == 'i' || s == 'o' || s == 'u') {
           return true;
       } 
       if (s == 'A' || s == 'E' || s == 'I' || s == 'O' || s == 'U') {
           return true;
       }
        return false;
    }
};