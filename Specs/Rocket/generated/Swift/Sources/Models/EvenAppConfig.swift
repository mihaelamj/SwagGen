//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class EvenAppConfig: APIModel {

    /** The map of classification ratings. */
    public var classification: [String: EvenClassification]?

    public var general: EvenAppConfigGeneral?

    public var navigation: EvenNavigation?

    public var playback: EvenAppConfigPlayback?

    public var sitemap: [EvenPageSummary]?

    public var subscription: EvenAppConfigSubscription?

    public init(classification: [String: EvenClassification]? = nil, general: EvenAppConfigGeneral? = nil, navigation: EvenNavigation? = nil, playback: EvenAppConfigPlayback? = nil, sitemap: [EvenPageSummary]? = nil, subscription: EvenAppConfigSubscription? = nil) {
        self.classification = classification
        self.general = general
        self.navigation = navigation
        self.playback = playback
        self.sitemap = sitemap
        self.subscription = subscription
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        classification = try container.decodeIfPresent("classification")
        general = try container.decodeIfPresent("general")
        navigation = try container.decodeIfPresent("navigation")
        playback = try container.decodeIfPresent("playback")
        sitemap = try container.decodeArrayIfPresent("sitemap")
        subscription = try container.decodeIfPresent("subscription")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(classification, forKey: "classification")
        try container.encodeIfPresent(general, forKey: "general")
        try container.encodeIfPresent(navigation, forKey: "navigation")
        try container.encodeIfPresent(playback, forKey: "playback")
        try container.encodeIfPresent(sitemap, forKey: "sitemap")
        try container.encodeIfPresent(subscription, forKey: "subscription")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? EvenAppConfig else { return false }
      guard self.classification == object.classification else { return false }
      guard self.general == object.general else { return false }
      guard self.navigation == object.navigation else { return false }
      guard self.playback == object.playback else { return false }
      guard self.sitemap == object.sitemap else { return false }
      guard self.subscription == object.subscription else { return false }
      return true
    }

    public static func == (lhs: EvenAppConfig, rhs: EvenAppConfig) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}