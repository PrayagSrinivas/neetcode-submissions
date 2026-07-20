class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var prefix = Array(repeating: 1, count: nums.count)
        var suffix = Array(repeating: 1, count: nums.count)

        var result = [Int]()

        for i in 1..<nums.count {
            prefix[i] = nums[i - 1] * prefix[i - 1]
        }

        for i in stride(from: nums.count - 2, through: 0, by: -1) {
            suffix[i] = nums[i + 1] * suffix[i + 1]
        }

        for i in 0..<nums.count {
            result.append(prefix[i] * suffix[i])
        }

        return result
    }
}
