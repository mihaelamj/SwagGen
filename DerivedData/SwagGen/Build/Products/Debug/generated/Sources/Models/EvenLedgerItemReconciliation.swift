//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class EvenLedgerItemReconciliation: BirchModel, Decodable, AutoEquatable {

    public enum EvenReconciliationType: String, Codable, Equatable, CaseIterable {
        case paid = "paid"
        case ignored = "ignored"
        case unpaid = "unpaid"
        case overdue = "overdue"
        case unknown = "unknown"
        case undecodable

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            let rawValue = try container.decode(String.self)
            self = EvenReconciliationType(rawValue: rawValue) ?? .undecodable
        }
    }

    public var id: Int

    public var ledgerItemId: Int

    public var reconciliationType: EvenReconciliationType

    public var createdAt: DateTime

    public var createdBy: ID

    public var deletedAt: DateTime?

    public var deletedBy: ID?

    public var memo: String?

    public init(id: Int, ledgerItemId: Int, reconciliationType: EvenReconciliationType, createdAt: DateTime, createdBy: ID, deletedAt: DateTime? = nil, deletedBy: ID? = nil, memo: String? = nil) {
        self.id = id
        self.ledgerItemId = ledgerItemId
        self.reconciliationType = reconciliationType
        self.createdAt = createdAt
        self.createdBy = createdBy
        self.deletedAt = deletedAt
        self.deletedBy = deletedBy
        self.memo = memo
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        id = try container.decode("id")
        ledgerItemId = try container.decode("ledgerItemId")
        reconciliationType = try container.decode("reconciliationType")
        createdAt = try container.decode("createdAt")
        createdBy = try container.decode("createdBy")
        deletedAt = try container.decodeIfPresent("deletedAt")
        deletedBy = try container.decodeIfPresent("deletedBy")
        memo = try container.decodeIfPresent("memo")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(id, forKey: "id")
        try container.encode(ledgerItemId, forKey: "ledgerItemId")
        try container.encode(reconciliationType, forKey: "reconciliationType")
        try container.encode(createdAt, forKey: "createdAt")
        try container.encode(createdBy, forKey: "createdBy")
        try container.encodeIfPresent(deletedAt, forKey: "deletedAt")
        try container.encodeIfPresent(deletedBy, forKey: "deletedBy")
        try container.encodeIfPresent(memo, forKey: "memo")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? EvenLedgerItemReconciliation else { return false }
      guard self.id == object.id else { return false }
      guard self.ledgerItemId == object.ledgerItemId else { return false }
      guard self.reconciliationType == object.reconciliationType else { return false }
      guard self.createdAt == object.createdAt else { return false }
      guard self.createdBy == object.createdBy else { return false }
      guard self.deletedAt == object.deletedAt else { return false }
      guard self.deletedBy == object.deletedBy else { return false }
      guard self.memo == object.memo else { return false }
      return true
    }

    public static func == (lhs: EvenLedgerItemReconciliation, rhs: EvenLedgerItemReconciliation) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
