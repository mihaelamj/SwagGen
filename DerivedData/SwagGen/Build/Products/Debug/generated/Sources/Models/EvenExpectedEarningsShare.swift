//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class EvenExpectedEarningsShare: BirchModel, Decodable, AutoEquatable {

    /** A unique, internal identifier for this resource.
 */
    public var id: Int

    public var companyUuid: ID

    public var share: Double

    /** When the resource was created.
 */
    public var createdAt: DateTime

    /** The UUID of the access token that was used to create this resource.
 */
    public var createdBy: ID

    public init(id: Int, companyUuid: ID, share: Double, createdAt: DateTime, createdBy: ID) {
        self.id = id
        self.companyUuid = companyUuid
        self.share = share
        self.createdAt = createdAt
        self.createdBy = createdBy
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        id = try container.decode("id")
        companyUuid = try container.decode("companyUuid")
        share = try container.decode("share")
        createdAt = try container.decode("createdAt")
        createdBy = try container.decode("createdBy")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(id, forKey: "id")
        try container.encode(companyUuid, forKey: "companyUuid")
        try container.encode(share, forKey: "share")
        try container.encode(createdAt, forKey: "createdAt")
        try container.encode(createdBy, forKey: "createdBy")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? EvenExpectedEarningsShare else { return false }
      guard self.id == object.id else { return false }
      guard self.companyUuid == object.companyUuid else { return false }
      guard self.share == object.share else { return false }
      guard self.createdAt == object.createdAt else { return false }
      guard self.createdBy == object.createdBy else { return false }
      return true
    }

    public static func == (lhs: EvenExpectedEarningsShare, rhs: EvenExpectedEarningsShare) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}