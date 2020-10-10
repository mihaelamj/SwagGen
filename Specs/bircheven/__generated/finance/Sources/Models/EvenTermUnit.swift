//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public enum EvenTermUnit: String, Codable, Equatable, CaseIterable {
    case week = "week"
    case biMonthly = "bi_monthly"
    case month = "month"
    case unkown = "unkown"
    case undecodable

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = EvenTermUnit(rawValue: rawValue) ?? .undecodable
    }
}