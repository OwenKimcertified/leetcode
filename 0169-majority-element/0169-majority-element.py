class Solution(object):
    def majorityElement(self, nums):
        nums = sorted(nums)
        mid = len(nums) // 2
        
        return nums[mid]
        