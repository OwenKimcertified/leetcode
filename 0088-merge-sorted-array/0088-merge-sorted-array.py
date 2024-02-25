class Solution(object):
    def merge(self, nums1, m, nums2, n):
        """
        :type nums1: List[int]
        :type m: int
        :type nums2: List[int]
        :type n: int
        :rtype: None Do not return anything, modify nums1 in-place instead.
        """
        self.nums1 = nums1
        self.m = m
        self.nums2 = nums2
        self.n = n
        
        v1, v2 = m-1, n-1
        
        for v in range(m+n-1, -1, -1):
            if v2 < 0:
                break

            if v1 >= 0 and nums1[v1] > nums2[v2]:
                nums1[v] = nums1[v1]
                v1 -= 1

            else:
                nums1[v] = nums2[v2]
                v2 -= 1   
        
        return nums1
        
        
        