//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class EvenRoadDisruptionImpactArea: APIModel {

    public var endDate: DateTime?

    public var endTime: String?

    public var id: Int?

    public var polygon: EvenDbGeography?

    public var roadDisruptionId: String?

    public var startDate: DateTime?

    public var startTime: String?

    public init(endDate: DateTime? = nil, endTime: String? = nil, id: Int? = nil, polygon: EvenDbGeography? = nil, roadDisruptionId: String? = nil, startDate: DateTime? = nil, startTime: String? = nil) {
        self.endDate = endDate
        self.endTime = endTime
        self.id = id
        self.polygon = polygon
        self.roadDisruptionId = roadDisruptionId
        self.startDate = startDate
        self.startTime = startTime
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        endDate = try container.decodeIfPresent("endDate")
        endTime = try container.decodeIfPresent("endTime")
        id = try container.decodeIfPresent("id")
        polygon = try container.decodeIfPresent("polygon")
        roadDisruptionId = try container.decodeIfPresent("roadDisruptionId")
        startDate = try container.decodeIfPresent("startDate")
        startTime = try container.decodeIfPresent("startTime")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(endDate, forKey: "endDate")
        try container.encodeIfPresent(endTime, forKey: "endTime")
        try container.encodeIfPresent(id, forKey: "id")
        try container.encodeIfPresent(polygon, forKey: "polygon")
        try container.encodeIfPresent(roadDisruptionId, forKey: "roadDisruptionId")
        try container.encodeIfPresent(startDate, forKey: "startDate")
        try container.encodeIfPresent(startTime, forKey: "startTime")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? EvenRoadDisruptionImpactArea else { return false }
      guard self.endDate == object.endDate else { return false }
      guard self.endTime == object.endTime else { return false }
      guard self.id == object.id else { return false }
      guard self.polygon == object.polygon else { return false }
      guard self.roadDisruptionId == object.roadDisruptionId else { return false }
      guard self.startDate == object.startDate else { return false }
      guard self.startTime == object.startTime else { return false }
      return true
    }

    public static func == (lhs: EvenRoadDisruptionImpactArea, rhs: EvenRoadDisruptionImpactArea) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
