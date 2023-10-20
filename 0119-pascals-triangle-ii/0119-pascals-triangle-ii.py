class Solution:
    def getRow(self, rowIndex: int) -> List[int]:
        self.prev = [1]
        
        if rowIndex == 0 :
            return self.prev
        
        for i in range(1, rowIndex+1):
            self.curr = [1]
            for j in range(1, i):
                self.curr.append(self.prev[j-1] + self.prev[j])
                
            self.curr.append(1)
            self.prev = self.curr
            
        return self.prev
        
        