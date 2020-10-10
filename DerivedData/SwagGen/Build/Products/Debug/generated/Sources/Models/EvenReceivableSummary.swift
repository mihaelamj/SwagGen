//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class EvenReceivableSummary: BirchModel, Decodable, AutoEquatable {

    public var id: Int

    public var accountId: Int

    public var accountName: String

    public var startDate: DateDay

    public var endDate: DateDay

    public var calculatedPayout: Float

    public var adjustment: Float

    public var totalPayout: Float

    public var dueDate: DateDay

    public var reconciliationType: EvenReconciliationType

    public var createdAt: DateTime

    public var createdBy: ID

    public var deletedAt: DateTime?

    public var deletedBy: ID?

    public init(id: Int, accountId: Int, accountName: String, startDate: DateDay, endDate: DateDay, calculatedPayout: Float, adjustment: Float, totalPayout: Float, dueDate: DateDay, reconciliationType: EvenReconciliationType, createdAt: DateTime, createdBy: ID, deletedAt: DateTime? = nil, deletedBy: ID? = nil) {
        self.id = id
        self.accountId = accountId
        self.accountName = accountName
        self.startDate = startDate
        self.endDate = endDate
        self.calculatedPayout = calculatedPayout
        self.adjustment = adjustment
        self.totalPayout = totalPayout
        self.dueDate = dueDate
        self.reconciliationType = reconciliationType
        self.createdAt = createdAt
        self.createdBy = createdBy
        self.deletedAt = deletedAt
        self.deletedBy = deletedBy
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        id = try container.decode("id")
        accountId = try container.decode("accountId")
        accountName = try container.decode("accountName")
        startDate = try container.decode("startDate")
        endDate = try container.decode("endDate")
        calculatedPayout = try container.decode("calculatedPayout")
        adjustment = try container.decode("adjustment")
        totalPayout = try container.decode("totalPayout")
        dueDate = try container.decode("dueDate")
        reconciliationType = try container.decode("reconciliationType")
        createdAt = try container.decode("createdAt")
        createdBy = try container.decode("createdBy")
        deletedAt = try container.decodeIfPresent("deletedAt")
        deletedBy = try container.decodeIfPresent("deletedBy")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(id, forKey: "id")
        try container.encode(accountId, forKey: "accountId")
        try container.encode(accountName, forKey: "accountName")
        try container.encode(startDate, forKey: "startDate")
        try container.encode(endDate, forKey: "endDate")
        try container.encode(calculatedPayout, forKey: "calculatedPayout")
        try container.encode(adjustment, forKey: "adjustment")
        try container.encode(totalPayout, forKey: "totalPayout")
        try container.encode(dueDate, forKey: "dueDate")
        try container.encode(reconciliationType, forKey: "reconciliationType")
        try container.encode(createdAt, forKey: "createdAt")
        try container.encode(createdBy, forKey: "createdBy")
        try container.encodeIfPresent(deletedAt, forKey: "deletedAt")
        try container.encodeIfPresent(deletedBy, forKey: "deletedBy")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? EvenReceivableSummary else { return false }
      guard self.id == object.id else { return false }
      guard self.accountId == object.accountId else { return false }
      guard self.accountName == object.accountName else { return false }
      guard self.startDate == object.startDate else { return false }
      guard self.endDate == object.endDate else { return false }
      guard self.calculatedPayout == object.calculatedPayout else { return false }
      guard self.adjustment == object.adjustment else { return false }
      guard self.totalPayout == object.totalPayout else { return false }
      guard self.dueDate == object.dueDate else { return false }
      guard self.reconciliationType == object.reconciliationType else { return false }
      guard self.createdAt == object.createdAt else { return false }
      guard self.createdBy == object.createdBy else { return false }
      guard self.deletedAt == object.deletedAt else { return false }
      guard self.deletedBy == object.deletedBy else { return false }
      return true
    }

    public static func == (lhs: EvenReceivableSummary, rhs: EvenReceivableSummary) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}