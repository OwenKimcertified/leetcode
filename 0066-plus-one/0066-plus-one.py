class Solution(object):
    def plusOne(self, digits):
        carry = 1  # 초기 carry 값을 1로 설정합니다.
        
        for i in range(len(digits) - 1, -1, -1):
            total = digits[i] + carry
            digits[i] = total % 10  # 현재 자리의 값을 업데이트합니다.
            carry = total // 10     # carry 값을 업데이트합니다.
        
        if carry:
            digits.insert(0, carry)  # carry가 남아있으면 새로운 자릿수를 추가합니다.
        
        return digits