//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class EvenClassification: EvenClassificationSummary {

    /** The level of this classification when compared with its siblings.
A higher level means a greater restriction.
Each classification in a system should have a unique level.
 */
    public var level: Int

    /** The parent system code of the classification. */
    public var system: String

    public var images: [String: URL]

    /** Parental advisort text. */
    public var advisoryText: String?

    public init(code: String, name: String, level: Int, system: String, images: [String: URL], advisoryText: String? = nil) {
        self.level = level
        self.system = system
        self.images = images
        self.advisoryText = advisoryText
        super.init(code: code, name: name)
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        level = try container.decode("level")
        system = try container.decode("system")
        images = try container.decode("images")
        advisoryText = try container.decodeIfPresent("advisoryText")
        try super.init(from: decoder)
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(level, forKey: "level")
        try container.encode(system, forKey: "system")
        try container.encode(images, forKey: "images")
        try container.encodeIfPresent(advisoryText, forKey: "advisoryText")
        try super.encode(to: encoder)
    }

    override public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? EvenClassification else { return false }
      guard self.level == object.level else { return false }
      guard self.system == object.system else { return false }
      guard self.images == object.images else { return false }
      guard self.advisoryText == object.advisoryText else { return false }
      return super.isEqual(to: object)
    }
}
