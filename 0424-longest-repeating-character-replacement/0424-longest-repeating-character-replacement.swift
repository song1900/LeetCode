class Solution {
    func characterReplacement(_ s: String, _ k: Int) -> Int {
    
        let bytes = Array(s.utf8)
        let A: UInt8 = 65
        var count = Array(repeating: 0, count: 26)
        
        var left = 0
        var maxCount = 0
        
        
        var res: Int = 0
        
        for right in 0..<bytes.count {
            let rIdx = Int(bytes[right] - A)
            count[rIdx] += 1
            
            maxCount = max(maxCount, count[rIdx])
            
            while (right - left + 1) - maxCount > k {
                let lIdx = Int(bytes[left] - A)
                count[lIdx] -= 1
                left += 1
            }
            
            res = max(res, right - left + 1)
        }
        
        
        return res
    }
}