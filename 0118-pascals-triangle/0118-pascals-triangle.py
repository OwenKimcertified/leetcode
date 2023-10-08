class Solution:
    def generate(self, numRows):
        double_list = [[1]]
        
        for i in range(1, numRows):
            current_row = [1]
            prev_row = double_list[-1]
            
            for j in range(1, i):
                current_row.append(prev_row[j - 1] + prev_row[j])
            
            current_row.append(1)
            double_list.append(current_row)
        
        return double_list