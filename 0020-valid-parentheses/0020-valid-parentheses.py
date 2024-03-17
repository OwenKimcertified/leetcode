class Solution(object):
    def isValid(self, s):
        """
        :type s: str
        :rtype: bool
        """
        if not s:
            return True
        
        space = list()
        char = {')': '(', ']': '[', '}': '{'}
        
        for i in s:
            if i in char and space:
                if space.pop() != char[i]:
                    return False
            else:
                space.append(i)
    
        return space == []