# s 의 문자들이 '순서대로' t 에 등장해야함.


# 왜 안되는지 모르겠음.
# class Solution:
#     def isSubsequence(self, s, t):
#         L = []
        
#         if len(s) > len(t):
#             return 'false'
#         else:
#             for i in range(len(s)):
#                 if s[i] in t:
#                     L.append(True)
#                 else:
#                     L.append(False)
                    
#         if L.count(True) == len(L):
#             return 'true'
#         else:
#             return 'false'

class Solution:
    def isSubsequence(self, s: str, t: str) -> bool:

        if len(s)==0:
            return True

        pointer = 0

        for letter in t:
            
            if letter==s[pointer]:
                pointer += 1
                        
            if pointer == len(s):
                return True 

        return False 