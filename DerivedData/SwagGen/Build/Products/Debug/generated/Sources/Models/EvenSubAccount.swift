//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class EvenSubAccount: BirchModel, Decodable, AutoEquatable {

    public var id: Int

    public var uuid: ID

    public var accountId: Int

    public var companyUuid: ID

    public var name: String

    public var displayName: String

    public var createdAt: DateTime

    public var createdBy: ID

    public var deletedAt: DateTime?

    public var deletedBy: ID?

    public var description: String?

    public var notes: String?

    /** Override the default auto-generated call to action subtext for issuers */
    public var subtextOverride: String?

    public var updatedAt: DateTime?

    public var updatedBy: ID?

    public init(id: Int, uuid: ID, accountId: Int, companyUuid: ID, name: String, displayName: String, createdAt: DateTime, createdBy: ID, deletedAt: DateTime? = nil, deletedBy: ID? = nil, description: String? = nil, notes: String? = nil, subtextOverride: String? = nil, updatedAt: DateTime? = nil, updatedBy: ID? = nil) {
        self.id = id
        self.uuid = uuid
        self.accountId = accountId
        self.companyUuid = companyUuid
        self.name = name
        self.displayName = displayName
        self.createdAt = createdAt
        self.createdBy = createdBy
        self.deletedAt = deletedAt
        self.deletedBy = deletedBy
        self.description = description
        self.notes = notes
        self.subtextOverride = subtextOverride
        self.updatedAt = updatedAt
        self.updatedBy = updatedBy
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        id = try container.decode("id")
        uuid = try container.decode("uuid")
        accountId = try container.decode("accountId")
        companyUuid = try container.decode("companyUuid")
        name = try container.decode("name")
        displayName = try container.decode("displayName")
        createdAt = try container.decode("createdAt")
        createdBy = try container.decode("createdBy")
        deletedAt = try container.decodeIfPresent("deletedAt")
        deletedBy = try container.decodeIfPresent("deletedBy")
        description = try container.decodeIfPresent("description")
        notes = try container.decodeIfPresent("notes")
        subtextOverride = try container.decodeIfPresent("subtextOverride")
        updatedAt = try container.decodeIfPresent("updatedAt")
        updatedBy = try container.decodeIfPresent("updatedBy")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(id, forKey: "id")
        try container.encode(uuid, forKey: "uuid")
        try container.encode(accountId, forKey: "accountId")
        try container.encode(companyUuid, forKey: "companyUuid")
        try container.encode(name, forKey: "name")
        try container.encode(displayName, forKey: "displayName")
        try container.encode(createdAt, forKey: "createdAt")
        try container.encode(createdBy, forKey: "createdBy")
        try container.encodeIfPresent(deletedAt, forKey: "deletedAt")
        try container.encodeIfPresent(deletedBy, forKey: "deletedBy")
        try container.encodeIfPresent(description, forKey: "description")
        try container.encodeIfPresent(notes, forKey: "notes")
        try container.encodeIfPresent(subtextOverride, forKey: "subtextOverride")
        try container.encodeIfPresent(updatedAt, forKey: "updatedAt")
        try container.encodeIfPresent(updatedBy, forKey: "updatedBy")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? EvenSubAccount else { return false }
      guard self.id == object.id else { return false }
      guard self.uuid == object.uuid else { return false }
      guard self.accountId == object.accountId else { return false }
      guard self.companyUuid == object.companyUuid else { return false }
      guard self.name == object.name else { return false }
      guard self.displayName == object.displayName else { return false }
      guard self.createdAt == object.createdAt else { return false }
      guard self.createdBy == object.createdBy else { return false }
      guard self.deletedAt == object.deletedAt else { return false }
      guard self.deletedBy == object.deletedBy else { return false }
      guard self.description == object.description else { return false }
      guard self.notes == object.notes else { return false }
      guard self.subtextOverride == object.subtextOverride else { return false }
      guard self.updatedAt == object.updatedAt else { return false }
      guard self.updatedBy == object.updatedBy else { return false }
      return true
    }

    public static func == (lhs: EvenSubAccount, rhs: EvenSubAccount) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}