class Solution(object):
    def lengthOfLastWord(self, s):
        """
        :type s: str
        :rtype: int
        """
  

#  반례 "a "
        chunk = s.split(" ")
        
        if len(s) == 1:
            return 1
        
        elif not s:
            return 0
        
        else:
            for i in range(len(chunk)-1, -1, -1):
                if chunk[i] != '':
                    return len(chunk[i])