# n 이 주어지고 n + 1 의 길이를 가지는 arr 생성
# 0, 1번인덱스는 0, 1 이고, 홀수, 짝수번 째에 규칙이 발생.
# 2번 인덱스는 짝수의 규칙을 따르고 nums[1]
# 3번 인덱스는 홀수의 규칙을 따르고 nums[1] + nums[2]

class Solution:
    def getMaximumGenerated(self, n):
        self.nums = [0, 1]
        if n == 0:
            return 0
        
        for i in range(2, n+1):
            if i % 2 == 0:
                self.nums.append(self.nums[i//2])
            else:
                self.nums.append(self.nums[(i-1)//2] + self.nums[(i+1)//2])
                
        
        return max(self.nums)
            