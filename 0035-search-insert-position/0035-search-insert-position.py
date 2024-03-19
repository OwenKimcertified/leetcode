class Solution(object):
    def searchInsert(self, nums, target):
        if target <= nums[0]:
            return 0
        
        elif target > nums[-1]:
            return len(nums)
        
        left = 0
        right = len(nums) - 1
        
        while left != right - 1:
            mid = (left + right) // 2
            if target > nums[mid]:
                left = mid
            elif target < nums[mid]:
                right = mid
            else:
                return mid
        
        return right