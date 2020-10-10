//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class EvenDbGeography: APIModel {

    public var geography: EvenDbGeographyWellKnownValue?

    public init(geography: EvenDbGeographyWellKnownValue? = nil) {
        self.geography = geography
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        geography = try container.decodeIfPresent("geography")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(geography, forKey: "geography")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? EvenDbGeography else { return false }
      guard self.geography == object.geography else { return false }
      return true
    }

    public static func == (lhs: EvenDbGeography, rhs: EvenDbGeography) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
