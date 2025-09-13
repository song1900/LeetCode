class Solution {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
    
        var s1Dic: [Character: Int] = [:]
        
        s1.forEach {
            s1Dic[$0, default: 0] += 1
        }
        
        let s2Arr = Array(s2)
        
        var k = 0
        
        while k <= s2.count - s1.count {
            
            let arr = Array(s2Arr[k..<(k+s1.count)])
            var dic: [Character: Int] = [:]
            
            arr.forEach {
                dic[$0, default: 0] += 1
            }
            if (s1Dic == dic) {
                return true
            }
            
            k += 1
            
        }
        

        return false
    }
}