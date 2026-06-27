class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var hashMap = [Int : Int]()

        for index in 0..<nums.count {
            let difference = target - nums[index]

            if let value = hashMap[difference] {
                return [value, index]
            } else {
                hashMap[nums[index]] = index
            }
        }

        return []
    }
}
