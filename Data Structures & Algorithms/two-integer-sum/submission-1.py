class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        # Create a hashmap
        hashMap: dict[int, int] = {}

        #Loop through the array.
        for index in range(len(nums)):
            # Check the complement value.
            complement = target - nums[index]

            if complement in hashMap.keys():
                return [hashMap[complement], index]
            else:
                hashMap[nums[index]] = index

        return [-1, -1]

        