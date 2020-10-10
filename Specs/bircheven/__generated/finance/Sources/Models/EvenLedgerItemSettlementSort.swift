//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public enum EvenLedgerItemSettlementSort: String, Codable, Equatable, CaseIterable {
    case id = "id"
    case accountId = "accountId"
    case ledgerItemId = "ledgerItemId"
    case status = "status"
    case createdAt = "createdAt"
    case startedAt = "startedAt"
    case completedAt = "completedAt"
    case undecodable

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = EvenLedgerItemSettlementSort(rawValue: rawValue) ?? .undecodable
    }
}