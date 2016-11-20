
extension Sequence {
    /// An example of how Swift 3.0's sequence works
    func take(while predicate: @escaping (Self.Iterator.Element) -> Bool) -> UnfoldSequence<Self.Iterator.Element,Self.Iterator> {
        return sequence(state: makeIterator(), next: {
            (myState: inout Iterator) -> Iterator.Element? in
            guard let next = myState.next() else { return nil }
            return predicate(next) ? next : nil
        })
    }
}
