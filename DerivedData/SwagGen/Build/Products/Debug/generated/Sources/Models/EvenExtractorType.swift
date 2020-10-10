//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public enum EvenExtractorType: String, Codable, Equatable, CaseIterable {
    case conditionalTwoColumnValueEqualNot = "conditional_two_column_value_equal_not"
    case conditionalColumnValue = "conditional_column_value"
    case doubleConditionalColumnValue = "double_conditional_column_value"
    case jsonString = "json_string"
    case prefixedKeyValue = "prefixed_key_value"
    case noOp = "no_op"
    case simpleColumn = "simple_column"
    case undecodable

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = EvenExtractorType(rawValue: rawValue) ?? .undecodable
    }
}