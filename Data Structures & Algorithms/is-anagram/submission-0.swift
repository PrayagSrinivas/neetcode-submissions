class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var hashMap = [Character : Int]()

        for i in Array(s) {
            hashMap[i, default: 0] += 1
        }

        for j in Array(t) {
            if let item = hashMap[j], item > 0 {
                hashMap[j] = item - 1
            } else {
                return false
            }
        }

        for (_, value) in hashMap {
            if value > 0 { return false }
        }

        return true
    }
}
