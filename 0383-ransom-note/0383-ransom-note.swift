class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        
        var dic: [Character: Int] = [:]
        for char in ransomNote {
            dic[char, default: 0] += 1
        }
        
        for char in magazine {
            if let count = dic[char] {
                dic[char] = count - 1
                if dic[char] == 0 {
                    dic.removeValue(forKey: char)
                    if dic.isEmpty {
                        return true
                    }
                }
            }
        }
    
        return dic.isEmpty
    }
}