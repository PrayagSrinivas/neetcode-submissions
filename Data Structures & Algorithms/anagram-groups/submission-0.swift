class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var hashMap = [String: [String]]()
        var result = [[String]]()

        for item in strs {
            let sortedKey = String(item.sorted())
            hashMap[sortedKey, default: []].append(item)
        }

        return Array(hashMap.values)
    }
}
