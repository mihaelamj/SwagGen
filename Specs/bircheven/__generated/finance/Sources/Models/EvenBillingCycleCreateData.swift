//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class EvenBillingCycleCreateData: BirchModel, Decodable, AutoEquatable {

    public var accountId: Int

    public var ledgerItemType: EvenLedgerItemType

    public var effectiveAt: DateDay

    public var termUnit: EvenTermUnit

    public var netD: Double

    public var endDate: DateDay?

    public init(accountId: Int, ledgerItemType: EvenLedgerItemType, effectiveAt: DateDay, termUnit: EvenTermUnit, netD: Double, endDate: DateDay? = nil) {
        self.accountId = accountId
        self.ledgerItemType = ledgerItemType
        self.effectiveAt = effectiveAt
        self.termUnit = termUnit
        self.netD = netD
        self.endDate = endDate
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        accountId = try container.decode("accountId")
        ledgerItemType = try container.decode("ledgerItemType")
        effectiveAt = try container.decode("effectiveAt")
        termUnit = try container.decode("termUnit")
        netD = try container.decode("netD")
        endDate = try container.decodeIfPresent("endDate")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(accountId, forKey: "accountId")
        try container.encode(ledgerItemType, forKey: "ledgerItemType")
        try container.encode(effectiveAt, forKey: "effectiveAt")
        try container.encode(termUnit, forKey: "termUnit")
        try container.encode(netD, forKey: "netD")
        try container.encodeIfPresent(endDate, forKey: "endDate")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? EvenBillingCycleCreateData else { return false }
      guard self.accountId == object.accountId else { return false }
      guard self.ledgerItemType == object.ledgerItemType else { return false }
      guard self.effectiveAt == object.effectiveAt else { return false }
      guard self.termUnit == object.termUnit else { return false }
      guard self.netD == object.netD else { return false }
      guard self.endDate == object.endDate else { return false }
      return true
    }

    public static func == (lhs: EvenBillingCycleCreateData, rhs: EvenBillingCycleCreateData) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}