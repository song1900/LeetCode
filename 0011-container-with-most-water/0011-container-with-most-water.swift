class Solution {
    func maxArea(_ height: [Int]) -> Int {

        var pointA: Int = 0
        var pointB: Int = height.count - 1



        var size: Int = 0

        while pointA < pointB {
            let h = min(height[pointA], height[pointB])
            let w = pointB - pointA
            
            if height[pointA] >= height[pointB] {
                pointB -= 1
            } else  {
                pointA += 1
            }
            size = max(size, (h * w))
        }


        return size
        }
}