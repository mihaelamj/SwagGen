//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class EvenLineStatus: APIModel {

    public var created: DateTime?

    public var disruption: EvenDisruption?

    public var id: Int?

    public var lineId: String?

    public var modified: DateTime?

    public var reason: String?

    public var statusSeverity: Int?

    public var statusSeverityDescription: String?

    public var validityPeriods: [EvenValidityPeriod]?

    public init(created: DateTime? = nil, disruption: EvenDisruption? = nil, id: Int? = nil, lineId: String? = nil, modified: DateTime? = nil, reason: String? = nil, statusSeverity: Int? = nil, statusSeverityDescription: String? = nil, validityPeriods: [EvenValidityPeriod]? = nil) {
        self.created = created
        self.disruption = disruption
        self.id = id
        self.lineId = lineId
        self.modified = modified
        self.reason = reason
        self.statusSeverity = statusSeverity
        self.statusSeverityDescription = statusSeverityDescription
        self.validityPeriods = validityPeriods
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        created = try container.decodeIfPresent("created")
        disruption = try container.decodeIfPresent("disruption")
        id = try container.decodeIfPresent("id")
        lineId = try container.decodeIfPresent("lineId")
        modified = try container.decodeIfPresent("modified")
        reason = try container.decodeIfPresent("reason")
        statusSeverity = try container.decodeIfPresent("statusSeverity")
        statusSeverityDescription = try container.decodeIfPresent("statusSeverityDescription")
        validityPeriods = try container.decodeArrayIfPresent("validityPeriods")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(created, forKey: "created")
        try container.encodeIfPresent(disruption, forKey: "disruption")
        try container.encodeIfPresent(id, forKey: "id")
        try container.encodeIfPresent(lineId, forKey: "lineId")
        try container.encodeIfPresent(modified, forKey: "modified")
        try container.encodeIfPresent(reason, forKey: "reason")
        try container.encodeIfPresent(statusSeverity, forKey: "statusSeverity")
        try container.encodeIfPresent(statusSeverityDescription, forKey: "statusSeverityDescription")
        try container.encodeIfPresent(validityPeriods, forKey: "validityPeriods")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? EvenLineStatus else { return false }
      guard self.created == object.created else { return false }
      guard self.disruption == object.disruption else { return false }
      guard self.id == object.id else { return false }
      guard self.lineId == object.lineId else { return false }
      guard self.modified == object.modified else { return false }
      guard self.reason == object.reason else { return false }
      guard self.statusSeverity == object.statusSeverity else { return false }
      guard self.statusSeverityDescription == object.statusSeverityDescription else { return false }
      guard self.validityPeriods == object.validityPeriods else { return false }
      return true
    }

    public static func == (lhs: EvenLineStatus, rhs: EvenLineStatus) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}