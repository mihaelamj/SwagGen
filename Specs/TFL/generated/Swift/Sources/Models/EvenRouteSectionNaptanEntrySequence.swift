//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class EvenRouteSectionNaptanEntrySequence: APIModel {

    public var ordinal: Int?

    public var stopPoint: EvenStopPoint?

    public init(ordinal: Int? = nil, stopPoint: EvenStopPoint? = nil) {
        self.ordinal = ordinal
        self.stopPoint = stopPoint
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        ordinal = try container.decodeIfPresent("ordinal")
        stopPoint = try container.decodeIfPresent("stopPoint")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(ordinal, forKey: "ordinal")
        try container.encodeIfPresent(stopPoint, forKey: "stopPoint")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? EvenRouteSectionNaptanEntrySequence else { return false }
      guard self.ordinal == object.ordinal else { return false }
      guard self.stopPoint == object.stopPoint else { return false }
      return true
    }

    public static func == (lhs: EvenRouteSectionNaptanEntrySequence, rhs: EvenRouteSectionNaptanEntrySequence) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
