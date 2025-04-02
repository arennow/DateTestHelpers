import DateTestHelpers
import Foundation
import Testing

@Test func builderBuilds() {
	#expect(Date.Builder(day: .sunday).build() == Date.Builder.baseDate)
	#expect(Date.Builder(day: .monday).build() < Date.Builder(day: .tuesday).build())
}
