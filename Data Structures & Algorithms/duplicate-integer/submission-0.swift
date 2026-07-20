class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var hashMap: [Int : Int] = [Int : Int]()

        for num in nums {
            hashMap[num, default: 0] += 1
        }

        for (key, value) in hashMap {
            if value > 1 { return true }
        }
        return false
    }
}
