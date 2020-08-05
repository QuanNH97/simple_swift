//ý tưởng
//1. lưu string vào mảng, sắp xếp theo tứ tự giảm dần tần số xuất hiện của kí tự
//2. chọn từng phần tử một vào output sao cho không trùng vs kí tự cuối cùng của output
//3. xoá phần tử vừa chọn, sắp xếp lại mảng, lặp lại bước 2

func abc(_ str :String) -> String{
    let arr = Array(str)
    var arrResult :Array<Character> = []
    
    var arrSorted = sort(arr) //sap xep theo thu tu tan so xuat hien cua ki tu
    
    while arrResult.count < str.count {
        for (index,char) in arrSorted.enumerated() {
            if arrSorted.allSatisfy({$0 == arrResult.last}) {
                return ""
            }
            if char != arrResult.last {
                arrResult.append(char)
                arrSorted.remove(at: index)
                arrSorted = sort(arrSorted)
                break
            }
        }
    }
    return String(arrResult)
}

func sort(_ arr :Array<Character>) -> Array<Character> {
    let arrSorted = arr.sorted { f, s in
        arr.filter { $0 == f }.count > arr.filter { $0 == s }.count
    }
    return arrSorted
}

abc("abccaabcaaaab")



