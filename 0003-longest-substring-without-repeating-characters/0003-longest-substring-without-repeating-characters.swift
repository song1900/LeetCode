class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var chars = Set<Character>()
        let arr = Array(s)
        
        
        var left = 0
        var count = 0
        
        for i in 0..<arr.count {
            while chars.contains(arr[i]) {
                chars.remove(arr[left])
                left += 1
            }
            chars.insert(arr[i])
            
            count = max(count, (i - left + 1))
        }
        

        
        return count
    }

}