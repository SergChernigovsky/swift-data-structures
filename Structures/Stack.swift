public struct Stack<Value>
{
    private var valuesArray = [Value]()
    
    public var count: Int
    {
        return self.valuesArray.count
    }
    
    public mutating func push(_ value: Value)
    {
        self.valuesArray.append(value)
    }
    
    public mutating func pop() -> Value?
    {
        return self.valuesArray.popLast()
    }
    
    public func peek() -> Value?
    {
        return self.valuesArray.last
    }
}
