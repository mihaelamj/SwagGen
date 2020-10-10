//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class EvenNavContent: APIModel {

    /** The image type to target when rendering items of the list.
e.g wallpaper, poster, hero3x1, logo.
 */
    public var imageType: String?

    /** An embedded list. */
    public var list: EvenItemList?

    /** The title of the embedded navigation content. */
    public var title: String?

    public init(imageType: String? = nil, list: EvenItemList? = nil, title: String? = nil) {
        self.imageType = imageType
        self.list = list
        self.title = title
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        imageType = try container.decodeIfPresent("imageType")
        list = try container.decodeIfPresent("list")
        title = try container.decodeIfPresent("title")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(imageType, forKey: "imageType")
        try container.encodeIfPresent(list, forKey: "list")
        try container.encodeIfPresent(title, forKey: "title")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? EvenNavContent else { return false }
      guard self.imageType == object.imageType else { return false }
      guard self.list == object.list else { return false }
      guard self.title == object.title else { return false }
      return true
    }

    public static func == (lhs: EvenNavContent, rhs: EvenNavContent) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
