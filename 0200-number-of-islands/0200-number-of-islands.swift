class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
    
        let rows = grid.count
        guard rows > 0 else { return 0 }
        let cols = grid[0].count
        
        var visited = Array(repeating: Array(repeating: false, count: cols), count: rows)
        
        
        
        var res = 0
        
        func dfs(r: Int, c: Int) {
            
            guard (r >= 0) && (c >= 0) && (r < rows) && (c < cols) else { return }
            
            guard (grid[r][c] == "1") && (!visited[r][c]) else { return }
            
            visited[r][c] = true
            
            dfs(r: r+1, c: c)
            dfs(r: r-1, c: c)
            dfs(r: r, c: c+1)
            dfs(r: r, c: c-1)
        }
        
        for r in 0..<rows {
            for c in 0..<cols where ( (grid[r][c] == "1") && !visited[r][c] ) {
                res += 1
                dfs(r: r, c: c)
            }
        }

        return res
    }
}