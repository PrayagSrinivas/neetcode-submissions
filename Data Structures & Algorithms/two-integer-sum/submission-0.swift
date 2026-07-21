class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var hashMap = [Int : Int]() // It will store the entry and it's index

        for index in 0..<nums.count {
            let complementValue = target - nums[index]
            if let item = hashMap[complementValue] {
                return [item, index]
            } else {
                hashMap[nums[index]] = index
            }
        }

        return [-1, -1]
    }
}
