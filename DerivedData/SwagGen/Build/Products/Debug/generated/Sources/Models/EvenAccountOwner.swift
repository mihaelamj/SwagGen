//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class EvenAccountOwner: BirchModel, Decodable, AutoEquatable {

    /** A unique, internal identifier for this resource.
 */
    public var id: Int

    /** An identifier for the associated account
 */
    public var accountId: Int

    /** When the resource was created.
 */
    public var createdAt: DateTime

    /** The UUID of the access token that was used to create this resource.
 */
    public var createdBy: ID

    /** When the resource was deleted.
 */
    public var deletedAt: DateTime?

    /** The UUID of the access token that was used to delete this resource.
 */
    public var deletedBy: ID?

    /** A unique identifier for the demand partner manager.
 */
    public var demandPartnerManager: ID?

    /** A unique identifier for the demand yield manager.
 */
    public var demandYieldManager: ID?

    /** A unique identifier for the supply partner manager.
 */
    public var supplyPartnerManager: ID?

    /** A unique identifier for the supply yield manager.
 */
    public var supplyYieldManager: ID?

    public init(id: Int, accountId: Int, createdAt: DateTime, createdBy: ID, deletedAt: DateTime? = nil, deletedBy: ID? = nil, demandPartnerManager: ID? = nil, demandYieldManager: ID? = nil, supplyPartnerManager: ID? = nil, supplyYieldManager: ID? = nil) {
        self.id = id
        self.accountId = accountId
        self.createdAt = createdAt
        self.createdBy = createdBy
        self.deletedAt = deletedAt
        self.deletedBy = deletedBy
        self.demandPartnerManager = demandPartnerManager
        self.demandYieldManager = demandYieldManager
        self.supplyPartnerManager = supplyPartnerManager
        self.supplyYieldManager = supplyYieldManager
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        id = try container.decode("id")
        accountId = try container.decode("accountId")
        createdAt = try container.decode("createdAt")
        createdBy = try container.decode("createdBy")
        deletedAt = try container.decodeIfPresent("deletedAt")
        deletedBy = try container.decodeIfPresent("deletedBy")
        demandPartnerManager = try container.decodeIfPresent("demandPartnerManager")
        demandYieldManager = try container.decodeIfPresent("demandYieldManager")
        supplyPartnerManager = try container.decodeIfPresent("supplyPartnerManager")
        supplyYieldManager = try container.decodeIfPresent("supplyYieldManager")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(id, forKey: "id")
        try container.encode(accountId, forKey: "accountId")
        try container.encode(createdAt, forKey: "createdAt")
        try container.encode(createdBy, forKey: "createdBy")
        try container.encodeIfPresent(deletedAt, forKey: "deletedAt")
        try container.encodeIfPresent(deletedBy, forKey: "deletedBy")
        try container.encodeIfPresent(demandPartnerManager, forKey: "demandPartnerManager")
        try container.encodeIfPresent(demandYieldManager, forKey: "demandYieldManager")
        try container.encodeIfPresent(supplyPartnerManager, forKey: "supplyPartnerManager")
        try container.encodeIfPresent(supplyYieldManager, forKey: "supplyYieldManager")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? EvenAccountOwner else { return false }
      guard self.id == object.id else { return false }
      guard self.accountId == object.accountId else { return false }
      guard self.createdAt == object.createdAt else { return false }
      guard self.createdBy == object.createdBy else { return false }
      guard self.deletedAt == object.deletedAt else { return false }
      guard self.deletedBy == object.deletedBy else { return false }
      guard self.demandPartnerManager == object.demandPartnerManager else { return false }
      guard self.demandYieldManager == object.demandYieldManager else { return false }
      guard self.supplyPartnerManager == object.supplyPartnerManager else { return false }
      guard self.supplyYieldManager == object.supplyYieldManager else { return false }
      return true
    }

    public static func == (lhs: EvenAccountOwner, rhs: EvenAccountOwner) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
