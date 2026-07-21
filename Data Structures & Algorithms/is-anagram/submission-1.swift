class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var sArray = Array(s)
        var tArray = Array(t)

        var hashmap = [Character : Int]()
        guard sArray.count == tArray.count else { return false }

        for item in sArray {
            hashmap[item, default: 0] += 1
        }

        for item in tArray {
            if let value = hashmap[item], value > 0 {
                hashmap[item] = value - 1
            } else {
                return false
            }
        }

        return true
    }
}
