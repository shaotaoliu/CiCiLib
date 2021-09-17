import Foundation

class Stack<T> {
    private var array = [T]()

    func push(element: T) {
        array.append(element)
    }
    
    func pop() throws {
        if array.isEmpty {
            throw StackError.StackIsEmpty
        }
        
        array.removeLast()
    }
    
    func top() throws -> T {
        if array.isEmpty {
            throw StackError.StackIsEmpty
        }
        
        return array.last!
    }
    
    func isEmpty() -> Bool {
        return array.isEmpty
    }
    
    func size() -> Int {
        return array.count
    }
    
    func clear() {
        array.removeAll()
    }
}

enum StackError: Error {
    case StackIsEmpty
}
