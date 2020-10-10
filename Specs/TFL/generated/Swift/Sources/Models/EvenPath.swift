//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class EvenPath: APIModel {

    public var elevation: [EvenJpElevation]?

    public var lineString: String?

    public var stopPoints: [EvenIdentifier]?

    public init(elevation: [EvenJpElevation]? = nil, lineString: String? = nil, stopPoints: [EvenIdentifier]? = nil) {
        self.elevation = elevation
        self.lineString = lineString
        self.stopPoints = stopPoints
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        elevation = try container.decodeArrayIfPresent("elevation")
        lineString = try container.decodeIfPresent("lineString")
        stopPoints = try container.decodeArrayIfPresent("stopPoints")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(elevation, forKey: "elevation")
        try container.encodeIfPresent(lineString, forKey: "lineString")
        try container.encodeIfPresent(stopPoints, forKey: "stopPoints")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? EvenPath else { return false }
      guard self.elevation == object.elevation else { return false }
      guard self.lineString == object.lineString else { return false }
      guard self.stopPoints == object.stopPoints else { return false }
      return true
    }

    public static func == (lhs: EvenPath, rhs: EvenPath) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}