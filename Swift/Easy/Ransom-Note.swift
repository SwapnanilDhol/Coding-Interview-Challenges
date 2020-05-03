class Solution {
func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var dict = [Character : Int]()
        for char in ransomNote {
            dict[char] = (dict[char] ?? 0) + 1
        }
        for char in magazine {
            if let count = dict[char] {
                if count > 1 {
                    dict[char] = count - 1
                } else {
                    dict[char] = nil
                }
            }
        }
        return dict.count == 0
    }
}
