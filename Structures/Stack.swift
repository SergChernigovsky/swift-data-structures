public struct Stack<T>
{
    private var valuesArray = [T]()
    
    public var count: Int
    {
        return self.valuesArray.count
    }
    
    public mutating func push(_ value: T)
    {
        self.valuesArray.append(value)
    }
    
    public mutating func pop() -> T?
    {
        return self.valuesArray.popLast()
    }
    
    public func peek() -> T?
    {
        return self.valuesArray.last
    }
}
