class Solution:
    def generate(self, numRows):
        self.start = [[1]]
        
        for i in range(1, numRows):
            self.curr_row, self.prev_row = [1], self.start[-1]
            
            
            for j in range(1, i):
                self.curr_row.append(self.prev_row[j-1] + self.prev_row[j])
            
            self.curr_row.append(1)
            self.start.append(self.curr_row)
        
        return self.start