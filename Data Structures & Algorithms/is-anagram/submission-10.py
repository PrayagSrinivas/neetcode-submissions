class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        hashMap: dict[str, int] = {}

        if len(s) != len(t):
            return False 

        for character in s:
            if character in hashMap:
                hashMap[character] += 1
            else:
                hashMap[character] = 1
        
        for character in t:
            if character in hashMap:
                hashMap[character] -= 1
            else:
                return False

        for count in hashMap.values():
            if count != 0: return False

        return True


        