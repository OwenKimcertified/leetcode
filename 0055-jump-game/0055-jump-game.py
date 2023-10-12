class Solution:
    def canJump(self, nums):
        m = 0
        for i, j in enumerate(nums):
            if i > m:
                return False
            m = max(m, i+j)
        return True         
                
        
        
        
                