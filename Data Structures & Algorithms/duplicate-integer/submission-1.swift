class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var hashMap = [Int : Int]()

        for i in nums {
            hashMap[i, default: 0] += 1
        }

        for (key, value) in hashMap {
            if value > 1 { return true }
        }
        return false
    }
}
