class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        
        var start = 0
        var end = nums.count - 1

        var res = Array(repeating: 0, count: nums.count)
        var write = nums.count - 1

        while start <= end {
            let s = nums[start] // -4
            let e = nums[end] // 10 3
            if abs(s) > abs(e) { // 4 > 3
                res[write] = s * s // 0,0,0,16,100
                start += 1
            } else { // 16 < 100,
                res[write] = e * e // 0,0,0,0,100
                end -= 1 
            }
            write -= 1 
        }

        return res
        

    }
}