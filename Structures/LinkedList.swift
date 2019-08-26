public final class LinkedList<T>
{
    private final class Unit
    {
        fileprivate var value: T
        fileprivate var next: Unit?
        fileprivate weak var previous: Unit?
        
        fileprivate init(value: T)
        {
            self.value = value
        }
    }
    
    // MARK: Public
    
    public var isEmpty: Bool
    {
        return self.head == nil
    }
    
    public var last: T?
    {
        return self.lastUnit()?.value ?? nil
    }
    
    public var count: Int
    {
        if var unit = self.head
        {
            var count = 1
            while let next = unit.next
            {
                unit = next
                count += 1
            }
            
            return count
        }
        
        return 0
    }
    
    public subscript (index: Int) -> T?
    {
        let unit = self.unit(at: index)
        
        return unit?.value
    }
    
    public func append(_ value: T)
    {
        let unit = Unit(value: value)
        
        self.append(newUnit: unit)
    }
    
    public func removeAll()
    {
        self.head = nil
    }
    
    // MARK: Private
    
    private var head: Unit?
    
    private func lastUnit() -> Unit?
    {
        if var unit = self.head
        {
            while let next = unit.next { unit = next }
            
            return unit
        }
        
        return nil
    }
    
    
    private func unit(at index: Int) -> Unit?
    {
        guard index != 0 else { return self.head }
        
        var unit = self.head?.next
            
        for _ in 1 ..< index
        {
            unit = unit?.next
                
            guard unit != nil else { break }
        }
            
        return unit
    }
    
    private func append(newUnit: Unit)
    {
        if let lastUnit = self.lastUnit()
        {
            newUnit.previous = lastUnit
            lastUnit.next = newUnit
        }
        else
        {
            self.head = newUnit
        }
    }
}
