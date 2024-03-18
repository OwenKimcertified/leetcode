class Solution(object):
    def removeDuplicates(self, nums):
        
#         no_dup = []
        
#         for i in nums:
#             if i not in no_dup:
#                 no_dup.append(i)
            
#         return len(no_dup)
                
                 # range(start, stop, step(reverse) bottom - top)       
        for i in range(len(nums) - 1, 0, -1):
            if nums[i - 1] == nums[i]:
                nums.pop(i)
        
        return len(nums)