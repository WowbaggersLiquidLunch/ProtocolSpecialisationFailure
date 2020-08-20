
extension Comparable where Self: Strideable {
	///	Inspects if this value is right next to the given other value.
	///	- Parameter other: The given other value.
	///	- Returns: `true` if the 2 values are right next to each other, `false` otherwise.
	@inlinable
	public func borders(on other: Self) -> Bool {
		self.separates(from: other, byDegrees: 1)
	}
	
	///	Inspects the correctness of the Bacon number between this value and the given other value.
	///	- Parameters:
	///	  - other: The given other value.
	///	  - degrees: The Bacon number to test for.
	///	- Returns: `true` if the Bacon number is correct, `false` otherwise.
	@inlinable
	public func separates(from other: Self, byDegrees degrees: Self.Stride) -> Bool {
		other == self.advanced(by: degrees) || self == other.advanced(by: degrees)
	}
}

extension Comparable {
	///	Inspects if the value is right next to the given other value.
	///	- Parameter other: The given other value.
	///	- Returns: `true` if the 2 values are right next to each other, `false` otherwise.
	@inlinable
	public func borders(on other: Self) -> Bool {
		return false
	}
}

0.borders(on: 1)

struct Pair<T: Comparable> {
	let value1: T
	let value2: T
	var value1BordersOnValue2: Bool { value1.borders(on: value2) }
}

let pairOf0And1 = Pair(value1: 0, value2: 1)

pairOf0And1.value1BordersOnValue2

type(of: pairOf0And1.value1)
type(of: pairOf0And1.value2)
