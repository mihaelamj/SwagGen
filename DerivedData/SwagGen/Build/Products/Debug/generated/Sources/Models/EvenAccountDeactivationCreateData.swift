//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class EvenAccountDeactivationCreateData: BirchModel, Decodable, AutoEquatable {

    /** Identifiers for the accounts that are deactivated.
 */
    public var accountIds: [Int]

    /** Reason why the accounts were deactivated.
 */
    public var deactivationReason: String?

    public init(accountIds: [Int], deactivationReason: String? = nil) {
        self.accountIds = accountIds
        self.deactivationReason = deactivationReason
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        accountIds = try container.decodeArray("accountIds")
        deactivationReason = try container.decodeIfPresent("deactivationReason")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(accountIds, forKey: "accountIds")
        try container.encodeIfPresent(deactivationReason, forKey: "deactivationReason")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? EvenAccountDeactivationCreateData else { return false }
      guard self.accountIds == object.accountIds else { return false }
      guard self.deactivationReason == object.deactivationReason else { return false }
      return true
    }

    public static func == (lhs: EvenAccountDeactivationCreateData, rhs: EvenAccountDeactivationCreateData) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}