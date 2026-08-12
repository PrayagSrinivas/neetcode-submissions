class Solution:
    def topKFrequent(self, nums: List[int], k: int) -> List[int]:
        # Create HashMap
        hashMap: dict[int, int] = {}
        result = []

        for item in nums:
            if item in hashMap.keys():
                hashMap[item] += 1
            else:
                hashMap[item] = 1
        
        sortedItem = sorted(
            hashMap.items(),
            key=lambda x: x[1],
            reverse=True
        )

        for key, value in sortedItem[0:k]:
            result.append(key)
            
        return result
        