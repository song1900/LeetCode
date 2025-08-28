class Solution {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
           
        let sorted = intervals.sorted {
            ($0[0] == $1[0]) ? $0[1] < $1[1] : $0[0] < $1[0]
        }

        var res: [[Int]] = []
        
        for sort in sorted {
            guard sort.count == 2 else { continue }
            if let last = res.last , sort[0] <= last[1] {
                res[res.count - 1][1] = max(last[1], sort[1])
            } else {
                res.append(sort)
            }
        }
  
        return res
    }
}