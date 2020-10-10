//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class EvenSupplySubAccountOwnerCreateData: BirchModel, Decodable, AutoEquatable {

    public var supplyManager: ID?

    public var supplySubAccountId: Int?

    public var supplyYieldManager: ID?

    public init(supplyManager: ID? = nil, supplySubAccountId: Int? = nil, supplyYieldManager: ID? = nil) {
        self.supplyManager = supplyManager
        self.supplySubAccountId = supplySubAccountId
        self.supplyYieldManager = supplyYieldManager
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        supplyManager = try container.decodeIfPresent("supplyManager")
        supplySubAccountId = try container.decodeIfPresent("supplySubAccountId")
        supplyYieldManager = try container.decodeIfPresent("supplyYieldManager")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(supplyManager, forKey: "supplyManager")
        try container.encodeIfPresent(supplySubAccountId, forKey: "supplySubAccountId")
        try container.encodeIfPresent(supplyYieldManager, forKey: "supplyYieldManager")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? EvenSupplySubAccountOwnerCreateData else { return false }
      guard self.supplyManager == object.supplyManager else { return false }
      guard self.supplySubAccountId == object.supplySubAccountId else { return false }
      guard self.supplyYieldManager == object.supplyYieldManager else { return false }
      return true
    }

    public static func == (lhs: EvenSupplySubAccountOwnerCreateData, rhs: EvenSupplySubAccountOwnerCreateData) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
