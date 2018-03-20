import Foundation

class Stack<T> {
    var emptyArray : [T] = []
    
    init() {}
    
    func push(_ value: T) {
        emptyArray.append(value)
    }
    
    func pop() -> T {
        let tmp = emptyArray[emptyArray.count - 1]
        emptyArray.remove(at: emptyArray.count - 1)
        return tmp
    }
    
    func peek() -> T {
        return emptyArray[emptyArray.count - 1]
    }
    
    func isEmpty() -> Bool {
        if emptyArray.count != 0 {
            return false
        }
        return true
    }
    
    func size() -> Int {
        return emptyArray.count
    }
}

func check(_ str: String) -> Bool {
    var st = Stack<Character>()
    var ch: [Character] = Array(str)
    
    if ch.count == 0 {
        return false
    }
    
    if ch[0] == ")" {
        return false
    }
    
    if ch[ch.count - 1] == "(" {
        return false
    }
    
    for i in 0...ch.count - 1 {
        if ch[i] == "(" {
            st.push(ch[i])
        } else if ch[i] == ")" {
            st.pop()
        }
    }
    
    if st.isEmpty() {
        return true
    }
    return false
}

// (())()((()))

var str: String = "()((()(()))"
check(str)


