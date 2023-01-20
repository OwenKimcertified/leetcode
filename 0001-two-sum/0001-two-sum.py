class Solution(object):
    def twoSum(self, nums, target):

        dict_ = {}
        
        for i, j in enumerate(nums):
            dif = target - j
            if dif not in dict_:
                dict_[j] = i
            else:
                return [dict_[dif], i]
        