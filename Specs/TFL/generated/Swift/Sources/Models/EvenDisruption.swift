//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Represents a disruption to a route within the transport network. */
public class EvenDisruption: APIModel {

    /** Gets or sets the category of this dispruption. */
    public enum EvenCategory: String, Codable, Equatable, CaseIterable {
        case undefined = "Undefined"
        case realTime = "RealTime"
        case plannedWork = "PlannedWork"
        case information = "Information"
        case event = "Event"
        case crowding = "Crowding"
        case statusAlert = "StatusAlert"
        case undecodable

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            let rawValue = try container.decode(String.self)
            self = EvenCategory(rawValue: rawValue) ?? .undecodable
        }
    }

    /** Gets or sets the additionaInfo of this disruption. */
    public var additionalInfo: String?

    /** Gets or sets the routes affected by this disruption */
    public var affectedRoutes: [EvenRouteSection]?

    /** Gets or sets the stops affected by this disruption */
    public var affectedStops: [EvenStopPoint]?

    /** Gets or sets the category of this dispruption. */
    public var category: EvenCategory?

    /** Gets or sets the description of the category. */
    public var categoryDescription: String?

    public var closureText: String?

    /** Gets or sets the date/time when this disruption was created. */
    public var created: DateTime?

    /** Gets or sets the description of this disruption. */
    public var description: String?

    public var isBlocking: Bool?

    public var isWholeLine: Bool?

    /** Gets or sets the date/time when this disruption was last updated. */
    public var lastUpdate: DateTime?

    /** Gets or sets the disruption type of this dispruption. */
    public var type: String?

    public init(additionalInfo: String? = nil, affectedRoutes: [EvenRouteSection]? = nil, affectedStops: [EvenStopPoint]? = nil, category: EvenCategory? = nil, categoryDescription: String? = nil, closureText: String? = nil, created: DateTime? = nil, description: String? = nil, isBlocking: Bool? = nil, isWholeLine: Bool? = nil, lastUpdate: DateTime? = nil, type: String? = nil) {
        self.additionalInfo = additionalInfo
        self.affectedRoutes = affectedRoutes
        self.affectedStops = affectedStops
        self.category = category
        self.categoryDescription = categoryDescription
        self.closureText = closureText
        self.created = created
        self.description = description
        self.isBlocking = isBlocking
        self.isWholeLine = isWholeLine
        self.lastUpdate = lastUpdate
        self.type = type
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        additionalInfo = try container.decodeIfPresent("additionalInfo")
        affectedRoutes = try container.decodeArrayIfPresent("affectedRoutes")
        affectedStops = try container.decodeArrayIfPresent("affectedStops")
        category = try container.decodeIfPresent("category")
        categoryDescription = try container.decodeIfPresent("categoryDescription")
        closureText = try container.decodeIfPresent("closureText")
        created = try container.decodeIfPresent("created")
        description = try container.decodeIfPresent("description")
        isBlocking = try container.decodeIfPresent("isBlocking")
        isWholeLine = try container.decodeIfPresent("isWholeLine")
        lastUpdate = try container.decodeIfPresent("lastUpdate")
        type = try container.decodeIfPresent("type")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(additionalInfo, forKey: "additionalInfo")
        try container.encodeIfPresent(affectedRoutes, forKey: "affectedRoutes")
        try container.encodeIfPresent(affectedStops, forKey: "affectedStops")
        try container.encodeIfPresent(category, forKey: "category")
        try container.encodeIfPresent(categoryDescription, forKey: "categoryDescription")
        try container.encodeIfPresent(closureText, forKey: "closureText")
        try container.encodeIfPresent(created, forKey: "created")
        try container.encodeIfPresent(description, forKey: "description")
        try container.encodeIfPresent(isBlocking, forKey: "isBlocking")
        try container.encodeIfPresent(isWholeLine, forKey: "isWholeLine")
        try container.encodeIfPresent(lastUpdate, forKey: "lastUpdate")
        try container.encodeIfPresent(type, forKey: "type")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? EvenDisruption else { return false }
      guard self.additionalInfo == object.additionalInfo else { return false }
      guard self.affectedRoutes == object.affectedRoutes else { return false }
      guard self.affectedStops == object.affectedStops else { return false }
      guard self.category == object.category else { return false }
      guard self.categoryDescription == object.categoryDescription else { return false }
      guard self.closureText == object.closureText else { return false }
      guard self.created == object.created else { return false }
      guard self.description == object.description else { return false }
      guard self.isBlocking == object.isBlocking else { return false }
      guard self.isWholeLine == object.isWholeLine else { return false }
      guard self.lastUpdate == object.lastUpdate else { return false }
      guard self.type == object.type else { return false }
      return true
    }

    public static func == (lhs: EvenDisruption, rhs: EvenDisruption) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
