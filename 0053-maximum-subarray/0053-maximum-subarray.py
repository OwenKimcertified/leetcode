class Solution:
    def maxSubArray(self, nums: List[int]) -> int:
        self.total_max = nums[0]
        self.curr_max = nums[0]
        
        for i in range(1, len(nums)):
            self.curr_max = max(nums[i] + self.curr_max, nums[i])
            self.total_max = max(self.curr_max, self.total_max)
        
        return self.total_max
        