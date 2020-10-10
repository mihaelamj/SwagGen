//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public enum EvenProductType: String, Codable, Equatable, CaseIterable {
    case creditCard = "credit_card"
    case insurance = "insurance"
    case lifeInsurance = "life_insurance"
    case loan = "loan"
    case mortgage = "mortgage"
    case savings = "savings"
    case other = "other"
    case unknown = "unknown"
    case undecodable

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = EvenProductType(rawValue: rawValue) ?? .undecodable
    }
}