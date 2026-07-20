class Solution {
    func maxArea(_ heights: [Int]) -> Int {
        var lp = 0
        var rp = heights.count - 1
        var maxArea = 0

        while lp < rp {
            let width = rp - lp
            let height = min(heights[lp], heights[rp])
            maxArea = max(maxArea, (width * height))
            if heights[lp] < heights[rp] {
                lp += 1
            } else {
                rp -= 1
            }
        }

        return maxArea
    }
}
