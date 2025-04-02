import Foundation

public extension Date {
	struct Builder {
		/// Sunday, May 1, 2005 at 00:00:00 GMT
		public static let baseDateTimestamp: TimeInterval = 1_114_905_600
		/// Sunday, May 1, 2005 at 00:00:00 GMT
		public static let baseDate = Date(timeIntervalSince1970: Self.baseDateTimestamp)

		public enum Weekday: Int, CaseIterable { case sunday, monday, tuesday, wednesday, thursday, friday, saturday }

		public var day: Weekday = .sunday
		public var hour: Int = 0
		public var minute: Int = 0
		public var second: Int = 0

		public init(day: Weekday = .sunday, hour: Int = 0, minute: Int = 0, second: Int = 0) {
			self.day = day
			self.hour = hour
			self.minute = minute
			self.second = second
		}

		public func build() -> Date {
			var timestamp = Self.baseDateTimestamp
			timestamp += 60 * 60 * 24 * Double(self.day.rawValue)
			timestamp += 60 * 60 * Double(self.hour)
			timestamp += 60 * Double(self.minute)
			timestamp += Double(self.second)
			return Date(timeIntervalSince1970: timestamp)
		}
	}
}
