//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class EvenMultiHasAccessToObject: APIModel {

    public var granted: [String]

    public var denied: [String]

    public var failed: [String]

    public var details: [EvenHasAccessToObject]

    public init(granted: [String], denied: [String], failed: [String], details: [EvenHasAccessToObject]) {
        self.granted = granted
        self.denied = denied
        self.failed = failed
        self.details = details
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        granted = try container.decodeArray("granted")
        denied = try container.decodeArray("denied")
        failed = try container.decodeArray("failed")
        details = try container.decodeArray("details")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(granted, forKey: "granted")
        try container.encode(denied, forKey: "denied")
        try container.encode(failed, forKey: "failed")
        try container.encode(details, forKey: "details")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? EvenMultiHasAccessToObject else { return false }
      guard self.granted == object.granted else { return false }
      guard self.denied == object.denied else { return false }
      guard self.failed == object.failed else { return false }
      guard self.details == object.details else { return false }
      return true
    }

    public static func == (lhs: EvenMultiHasAccessToObject, rhs: EvenMultiHasAccessToObject) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
