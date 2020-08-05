func abc(_ str :String) -> String{
    var arr = Array(str)
    var arrResult :Array<Character> = []
    while arrResult.count < str.count {
        for (index,char) in arr.enumerated() {
            if arr.allSatisfy({$0 == arrResult.last}) {
                return ""
            }
            if char != arrResult.last {
                arrResult.append(char)
                arr.remove(at: index)
                break
            }
        }
    }
    return String(arrResult)
}


abc("aaaaaabbbcc")



