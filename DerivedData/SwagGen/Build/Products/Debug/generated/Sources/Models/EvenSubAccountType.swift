//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public enum EvenSubAccountType: String, Codable, Equatable, CaseIterable {
    case supply = "supply"
    case demand = "demand"
    case undecodable

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = EvenSubAccountType(rawValue: rawValue) ?? .undecodable
    }
}