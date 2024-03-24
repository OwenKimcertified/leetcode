# You must solve the problem without modifying the array nums
        # for i in range(len(nums) - 1, 0, -1):
        #     if nums[i] == nums[i-1]:
        #         return nums.pop(i)

# Use only constant extra space.



class Solution(object):
    def findDuplicate(self, nums):
        encoding = 0
        
        for num in nums:
            
            z = 1 << num;
            
            if encoding & z:
                return num
            else:
                encoding |= z
                
        return -1