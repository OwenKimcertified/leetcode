class Solution(object):
    def isPalindrome(self, x):
        if x < 0:
            return False # x<0, always false
        
        rev = 0
        c = x
        while x != 0:
            rev = rev * 10 + x % 10
            x //= 10
        return rev == c