//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class EvenNavigation: APIModel {

    /** The header navigation. */
    public var header: [EvenNavEntry]

    /** The account navigation. */
    public var account: EvenNavEntry?

    /** Copyright information. */
    public var copyright: String?

    /** A map of custom fields defined by a curator for navigation. */
    public var customFields: [String: Any]?

    /** The footer navigation. */
    public var footer: EvenNavEntry?

    public init(header: [EvenNavEntry], account: EvenNavEntry? = nil, copyright: String? = nil, customFields: [String: Any]? = nil, footer: EvenNavEntry? = nil) {
        self.header = header
        self.account = account
        self.copyright = copyright
        self.customFields = customFields
        self.footer = footer
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        header = try container.decodeArray("header")
        account = try container.decodeIfPresent("account")
        copyright = try container.decodeIfPresent("copyright")
        customFields = try container.decodeAnyIfPresent("customFields")
        footer = try container.decodeIfPresent("footer")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(header, forKey: "header")
        try container.encodeIfPresent(account, forKey: "account")
        try container.encodeIfPresent(copyright, forKey: "copyright")
        try container.encodeAnyIfPresent(customFields, forKey: "customFields")
        try container.encodeIfPresent(footer, forKey: "footer")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? EvenNavigation else { return false }
      guard self.header == object.header else { return false }
      guard self.account == object.account else { return false }
      guard self.copyright == object.copyright else { return false }
      guard NSDictionary(dictionary: self.customFields ?? [:]).isEqual(to: object.customFields ?? [:]) else { return false }
      guard self.footer == object.footer else { return false }
      return true
    }

    public static func == (lhs: EvenNavigation, rhs: EvenNavigation) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
