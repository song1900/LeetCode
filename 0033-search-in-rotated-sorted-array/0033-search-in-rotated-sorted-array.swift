class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
     
        var left = 0
        var right = nums.count - 1
        
        while left <= right {
            let mid = (right + left) / 2
            
            if (nums[mid] == target) {
                return mid
            }
            
            
            
            if (nums[left] <= nums[mid] ) {
                if (nums[left] <= target) && (target < nums[mid]) {
                    right = mid - 1
                } else {
                    left = mid + 1
                }
            } else {
                if (nums[right] >= target) && (target > nums[mid]) {
                    left = mid + 1
                } else {
                    right = mid - 1
                }
            }
            
        }
        
        return -1
    }

}