//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class EvenProfileSummary: APIModel {

    /** The id of the profile. */
    public var id: String

    /** The unique name of the profile. */
    public var name: String

    /** Whether the profile is active or not.
**DEPRECATED** - Always true. Inactive profiles are no longer returned.
 */
    public var isActive: Bool

    /** Whether a pin is required to enter the profile. */
    public var pinEnabled: Bool

    /** Whether the profile can make purchases with the account payment options. */
    public var purchaseEnabled: Bool

    /** Whether the profile has opted in or out of marketing material.
**DEPRECATED** - Marketing material is no longer tied to profiles, only account. See `Account.marketingEnabled`.
 */
    public var marketingEnabled: Bool

    /** The segments a profile has been placed under */
    public var segments: [String]

    /** The maximum rating (inclusive) of content to return in feeds.
**DEPRECATED** - It's no longer recommended filtering content globally as apps can end up
with pages without content, even the homepage. Instead using features like segmentation
tags to target demographics like kids means content curation can be more thought out.
 */
    public var maxRatingContentFilter: EvenClassificationSummary?

    /** The minumum rating (inclusive) of content where an account pin should be presented before entring playback.
**DEPRECATED** - The playback guard is now defined at the account level, where an account
pin also exists. This is then applied across all profiles.
 */
    public var minRatingPlaybackGuard: EvenClassificationSummary?

    public init(id: String, name: String, isActive: Bool, pinEnabled: Bool, purchaseEnabled: Bool, marketingEnabled: Bool, segments: [String], maxRatingContentFilter: EvenClassificationSummary? = nil, minRatingPlaybackGuard: EvenClassificationSummary? = nil) {
        self.id = id
        self.name = name
        self.isActive = isActive
        self.pinEnabled = pinEnabled
        self.purchaseEnabled = purchaseEnabled
        self.marketingEnabled = marketingEnabled
        self.segments = segments
        self.maxRatingContentFilter = maxRatingContentFilter
        self.minRatingPlaybackGuard = minRatingPlaybackGuard
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        id = try container.decode("id")
        name = try container.decode("name")
        isActive = try container.decode("isActive")
        pinEnabled = try container.decode("pinEnabled")
        purchaseEnabled = try container.decode("purchaseEnabled")
        marketingEnabled = try container.decode("marketingEnabled")
        segments = try container.decodeArray("segments")
        maxRatingContentFilter = try container.decodeIfPresent("maxRatingContentFilter")
        minRatingPlaybackGuard = try container.decodeIfPresent("minRatingPlaybackGuard")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(id, forKey: "id")
        try container.encode(name, forKey: "name")
        try container.encode(isActive, forKey: "isActive")
        try container.encode(pinEnabled, forKey: "pinEnabled")
        try container.encode(purchaseEnabled, forKey: "purchaseEnabled")
        try container.encode(marketingEnabled, forKey: "marketingEnabled")
        try container.encode(segments, forKey: "segments")
        try container.encodeIfPresent(maxRatingContentFilter, forKey: "maxRatingContentFilter")
        try container.encodeIfPresent(minRatingPlaybackGuard, forKey: "minRatingPlaybackGuard")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? EvenProfileSummary else { return false }
      guard self.id == object.id else { return false }
      guard self.name == object.name else { return false }
      guard self.isActive == object.isActive else { return false }
      guard self.pinEnabled == object.pinEnabled else { return false }
      guard self.purchaseEnabled == object.purchaseEnabled else { return false }
      guard self.marketingEnabled == object.marketingEnabled else { return false }
      guard self.segments == object.segments else { return false }
      guard self.maxRatingContentFilter == object.maxRatingContentFilter else { return false }
      guard self.minRatingPlaybackGuard == object.minRatingPlaybackGuard else { return false }
      return true
    }

    public static func == (lhs: EvenProfileSummary, rhs: EvenProfileSummary) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
