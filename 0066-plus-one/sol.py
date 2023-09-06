class Solution(object):
    def plusOne(self, digits):
        if len(digits) == 1:
            digits[0] += 1
            
            if len(str(digits[0])) == 2:
                digits[0] = str(digits[0])
                digits.append(int(digits[0][0]))
                digits.append(int(digits[0][1]))
                digits.pop(0)
            
            else:
                digits[0]
        
        else:    
            digits[len(digits) - 1] = digits[len(digits) - 1] + 1
        
        return digits               
    
a = Solution()
a.plusOne(digits = [4,3,2,1,9])