class Solution:
    def climbStairs(self, n):
        self.curr, self.next = 0, 1
        
        if n == 1:
            return self.next
        elif n == 2:
            return self.next + 1
        else:
            for _ in range(n):
                self.curr, self.next = self.next, self.curr + self.next
        
        return self.next