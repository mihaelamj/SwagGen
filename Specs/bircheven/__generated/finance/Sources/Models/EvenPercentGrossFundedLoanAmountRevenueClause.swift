//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class EvenPercentGrossFundedLoanAmountRevenueClause: BirchModel, Decodable, AutoEquatable {

    public var percent: Double

    public init(percent: Double) {
        self.percent = percent
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        percent = try container.decode("percent")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(percent, forKey: "percent")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? EvenPercentGrossFundedLoanAmountRevenueClause else { return false }
      guard self.percent == object.percent else { return false }
      return true
    }

    public static func == (lhs: EvenPercentGrossFundedLoanAmountRevenueClause, rhs: EvenPercentGrossFundedLoanAmountRevenueClause) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}