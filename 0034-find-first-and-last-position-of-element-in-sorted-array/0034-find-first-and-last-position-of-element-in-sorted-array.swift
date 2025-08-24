class Solution {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        var left = 0
        var right = nums.count - 1
        
        var res:[Int] = Array(repeating: -1, count: 2)
        
        
        
        while left <= right {
            
            if nums[left] == target {
                res[0] = left
            } else {
                left += 1
            }
            
            if nums[right] == target {
                res[1] = right
            } else {
                right -= 1
            }
            
            if (res[0] != -1) && (res[1] != -1) {
                break
            }
        }
        
        return res
        
    }
}