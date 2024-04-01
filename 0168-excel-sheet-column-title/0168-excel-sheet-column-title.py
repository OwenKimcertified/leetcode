class Solution(object):
    def convertToTitle(self, columnNumber):
        """
        :type columnNumber: int
        :rtype: str
        """
        ans, str1 = "ABCDEFGHIJKLMNOPQRSTUVWXYZ", ""

        while columnNumber > 0:
            columnNumber, idx = divmod(columnNumber-1, 26)
            str1 = ans[idx] + str1

        return str1        