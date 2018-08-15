public final class LinkedList<Value>
{
    private final class Unit
    {
        fileprivate var value: Value
        fileprivate var next: Unit?
        fileprivate weak var previous: Unit?
        
        fileprivate init(value: Value)
        {
            self.value = value
        }
    }
    
    // MARK: Public
    
    public var isEmpty: Bool
    {
        return self.head == nil
    }
    
    public var last: Value?
    {
        if var unit = self.head
        {
            while let next = unit.next { unit = next }
            
            return unit.value
        }
        
        return nil
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
    
    public subscript (index: Int) -> Value?
    {
        let unit = self.unit(at: index)
        
        return unit?.value
    }
    
    // MARK: Private
    
    private var head: Unit?
    
    private func unit(at index: Int) -> Unit?
    {
        if index == 0
        {
            return self.head
        }
        else
        {
            var unit = self.head?.next
            
            for _ in 1 ..< index
            {
                unit = unit?.next
                
                guard unit != nil else { break }
            }
            
            return unit
        }
    }
}
