class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {


        var digits = digits
        var r = digits.count - 1

        
        while 0 <= r {
            
            if (digits[r] < 9) {
                digits[r] += 1
                return digits
            }
            
            
            digits[r] = 0
            r -= 1
            
        }
        

        digits.insert(1, at: 0)
        return digits
    }
}