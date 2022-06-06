class Solution {
    func canAttendMeetings(_ intervals: [[Int]]) -> Bool {
        if intervals.count < 2{
            return true
        }
        
        var meetings = intervals.sorted(by:{($0[0], $0[1]) < ($1[0], $1[1]) })
         
        for  i in 0..<meetings.count-1{
            let meeting1 = meetings[i]
            let meeting2 = meetings[i+1]
            
            if meeting1[1]  > meeting2[0]{
                return false
            }
        }
        
        return true
    }
}