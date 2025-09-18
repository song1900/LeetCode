class Solution {
    func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
        let rows = grid.count
        
        guard rows > 0 else { return 0 }
        
        let cols = grid[0].count
        
        var visited = Array(repeating: Array(repeating: false, count: cols), count: rows)
        
        
        func dfs(r: Int, c: Int) -> Int {
            
            guard (r >= 0) && (c >= 0) && (r < rows) && (c < cols) else { return 0 }
            
            guard (grid[r][c] == 1) && (!visited[r][c]) else { return 0}

            visited[r][c] = true
            
            return 1
            + dfs(r: r, c: c+1)
            + dfs(r: r, c: c-1)
            + dfs(r: r+1, c: c)
            + dfs(r: r-1, c: c)
            
        }
        
        var res = 0
        
        
        for r in 0..<rows {
            for c in 0..<cols where ( (grid[r][c] == 1) && !visited[r][c] ) {
                let area = dfs(r: r, c: c)
                res = max(res, area)
            }
        }
        

        return res
    }

}