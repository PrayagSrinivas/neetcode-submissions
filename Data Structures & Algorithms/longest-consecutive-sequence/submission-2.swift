class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else { return 0 }
        
        let sortedNum = nums.sorted()

        var currentStreak = 1
        var maxStreak = 1

        for i in 0..<(sortedNum.count - 1) {
            // Incase there is duplicate number exist.
            if sortedNum[i] == sortedNum[i + 1] { continue }

            if sortedNum[i] + 1 == sortedNum[i + 1] {
                currentStreak += 1
            } else {
                maxStreak = max(currentStreak, maxStreak)
                currentStreak = 1
            }
        } 

        return max(maxStreak, currentStreak)
    }
}
