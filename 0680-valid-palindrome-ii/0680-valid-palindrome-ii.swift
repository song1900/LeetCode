class Solution {
    func validPalindrome(_ s: String) -> Bool {
        let chars = Array(s)
        var left = 0
        var right = chars.count - 1
        
        
        func isPal(_ l: Int, _ r: Int) -> Bool {
            var i = l, j = r
            while i < j {
                if chars[i] != chars[j] {
                    return false
                }
                i += 1
                j -= 1
            }
            return true
        }
        
        while left < right {
            if chars[left] == chars[right] {
                left += 1
                right -= 1
            } else {
                return isPal(left + 1, right) || isPal(left, right - 1)
            }
        }
    
        return true
    }
}