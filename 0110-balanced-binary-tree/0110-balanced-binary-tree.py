# Definition for a binary tree node.
# class TreeNode(object):
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right

# height -> list index
# always left first, if no edge then null

class Solution(object):
    def isBalanced(self, root):
        """
        :type root: TreeNode
        :rtype: bool
        """
        def checked_height(x):
          if x is None:
            return 0
          l = checked_height(x.left)
          r = checked_height(x.right)
          assert abs(l - r) <= 1
          return max(l, r) + 1

        try:
          checked_height(root)
          return True
        except AssertionError:
          return False
