# 순회
class Solution(object):
    def removeElement(self, nums, val):
        """
        :type nums: List[int]
        :type val: int
        :rtype: int
        """
        self.nums = nums
        self.val = val
        
        cnt = 0
        
        for k in range(len(nums)):
            if nums[k] != val:
                nums[cnt] = nums[k]
                cnt += 1
        
        return cnt