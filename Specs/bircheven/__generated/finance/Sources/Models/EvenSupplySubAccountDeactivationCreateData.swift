//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class EvenSupplySubAccountDeactivationCreateData: BirchModel, Decodable, AutoEquatable {

    /** Identifiers for the supply sub accounts that are deactivated.
 */
    public var supplySubAccountIds: [Int]

    /** Reason why the supply sub accounts were deactivated.
 */
    public var deactivationReason: String?

    public init(supplySubAccountIds: [Int], deactivationReason: String? = nil) {
        self.supplySubAccountIds = supplySubAccountIds
        self.deactivationReason = deactivationReason
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        supplySubAccountIds = try container.decodeArray("supplySubAccountIds")
        deactivationReason = try container.decodeIfPresent("deactivationReason")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(supplySubAccountIds, forKey: "supplySubAccountIds")
        try container.encodeIfPresent(deactivationReason, forKey: "deactivationReason")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? EvenSupplySubAccountDeactivationCreateData else { return false }
      guard self.supplySubAccountIds == object.supplySubAccountIds else { return false }
      guard self.deactivationReason == object.deactivationReason else { return false }
      return true
    }

    public static func == (lhs: EvenSupplySubAccountDeactivationCreateData, rhs: EvenSupplySubAccountDeactivationCreateData) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}