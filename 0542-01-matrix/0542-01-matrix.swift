class Solution {
    func updateMatrix(_ mat: [[Int]]) -> [[Int]] {

        let rows = mat.count
        let cols = mat[0].count
        
        
        var res: [[Int]] = Array(repeating: Array(repeating: Int.max, count: cols), count: rows)
        
        
        var queue: [(Int, Int)] = []
        var head = 0

        for n in 0..<rows {
            for m in 0..<cols {
                
                if (mat[n][m] == 0) {
                    res[n][m] = 0
                    queue.append((n, m))
                }
                
                
            }
        }

        
        let dirs = [(1,0), (-1,0), (0,1), (0,-1)]
        
        
        while head < queue.count {
            let (r, c) = queue[head]
            head += 1
            
            for (dr, dc) in dirs {
                let nr = r + dr
                let nc = c + dc
                
                guard nr < rows, nc < cols, nr >= 0, nc >= 0 else { continue }
                
                if res[nr][nc] > (res[r][c] + 1) {
                    res[nr][nc] = res[r][c] + 1
                    queue.append((nr, nc))
                }
            }
            
        }
        
        return res
    }
}