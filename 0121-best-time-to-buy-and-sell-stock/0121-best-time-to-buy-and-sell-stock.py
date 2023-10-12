# tabulation 으로 bottom - up 방식으로. 
# 설정한 flag 를 한 번씩은 써야겠다 생각.
# 최저값 기준 이전의 값들은 의미가 없음.


class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        self.prices = prices
        self.min = self.prices[0]
        self.max = 0
        
        for i in self.prices:
            if self.min > i:
                self.min = i
            else:
                self.max = max(self.max, i - self.min)

        return self.max