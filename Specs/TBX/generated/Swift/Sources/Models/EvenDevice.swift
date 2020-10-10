//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class EvenDevice: APIModel {

    public var id: String

    public var created: DateTime?

    public var customer: EvenObjectID?

    public var customerId: EvenObjectID?

    public var data: [String: Any]?

    public var deactivateDate: DateTime?

    public var description: String?

    public var deviceType: EvenObjectID?

    public var expirationDate: DateTime?

    public var identifier: String?

    public var lastLogin: DateTime?

    public var loggedOutDate: DateTime?

    public var updated: DateTime?

    public init(id: String, created: DateTime? = nil, customer: EvenObjectID? = nil, customerId: EvenObjectID? = nil, data: [String: Any]? = nil, deactivateDate: DateTime? = nil, description: String? = nil, deviceType: EvenObjectID? = nil, expirationDate: DateTime? = nil, identifier: String? = nil, lastLogin: DateTime? = nil, loggedOutDate: DateTime? = nil, updated: DateTime? = nil) {
        self.id = id
        self.created = created
        self.customer = customer
        self.customerId = customerId
        self.data = data
        self.deactivateDate = deactivateDate
        self.description = description
        self.deviceType = deviceType
        self.expirationDate = expirationDate
        self.identifier = identifier
        self.lastLogin = lastLogin
        self.loggedOutDate = loggedOutDate
        self.updated = updated
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        id = try container.decode("id")
        created = try container.decodeIfPresent("created")
        customer = try container.decodeIfPresent("customer")
        customerId = try container.decodeIfPresent("customerId")
        data = try container.decodeAnyIfPresent("data")
        deactivateDate = try container.decodeIfPresent("deactivateDate")
        description = try container.decodeIfPresent("description")
        deviceType = try container.decodeIfPresent("deviceType")
        expirationDate = try container.decodeIfPresent("expirationDate")
        identifier = try container.decodeIfPresent("identifier")
        lastLogin = try container.decodeIfPresent("lastLogin")
        loggedOutDate = try container.decodeIfPresent("loggedOutDate")
        updated = try container.decodeIfPresent("updated")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(id, forKey: "id")
        try container.encodeIfPresent(created, forKey: "created")
        try container.encodeIfPresent(customer, forKey: "customer")
        try container.encodeIfPresent(customerId, forKey: "customerId")
        try container.encodeAnyIfPresent(data, forKey: "data")
        try container.encodeIfPresent(deactivateDate, forKey: "deactivateDate")
        try container.encodeIfPresent(description, forKey: "description")
        try container.encodeIfPresent(deviceType, forKey: "deviceType")
        try container.encodeIfPresent(expirationDate, forKey: "expirationDate")
        try container.encodeIfPresent(identifier, forKey: "identifier")
        try container.encodeIfPresent(lastLogin, forKey: "lastLogin")
        try container.encodeIfPresent(loggedOutDate, forKey: "loggedOutDate")
        try container.encodeIfPresent(updated, forKey: "updated")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? EvenDevice else { return false }
      guard self.id == object.id else { return false }
      guard self.created == object.created else { return false }
      guard self.customer == object.customer else { return false }
      guard self.customerId == object.customerId else { return false }
      guard NSDictionary(dictionary: self.data ?? [:]).isEqual(to: object.data ?? [:]) else { return false }
      guard self.deactivateDate == object.deactivateDate else { return false }
      guard self.description == object.description else { return false }
      guard self.deviceType == object.deviceType else { return false }
      guard self.expirationDate == object.expirationDate else { return false }
      guard self.identifier == object.identifier else { return false }
      guard self.lastLogin == object.lastLogin else { return false }
      guard self.loggedOutDate == object.loggedOutDate else { return false }
      guard self.updated == object.updated else { return false }
      return true
    }

    public static func == (lhs: EvenDevice, rhs: EvenDevice) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}