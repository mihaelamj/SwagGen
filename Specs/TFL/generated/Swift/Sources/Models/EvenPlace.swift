//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class EvenPlace: APIModel {

    /** A bag of additional key/value pairs with extra information about this place. */
    public var additionalProperties: [EvenAdditionalProperties]?

    public var children: [EvenPlace]?

    public var childrenUrls: [String]?

    /** A human readable name. */
    public var commonName: String?

    /** The distance of the place from its search point, if this is the result
            of a geographical search, otherwise zero. */
    public var distance: Double?

    /** A unique identifier. */
    public var id: String?

    /** WGS84 latitude of the location. */
    public var lat: Double?

    /** WGS84 longitude of the location. */
    public var lon: Double?

    /** The type of Place. See /Place/Meta/placeTypes for possible values. */
    public var placeType: String?

    /** The unique location of this resource. */
    public var url: String?

    public init(additionalProperties: [EvenAdditionalProperties]? = nil, children: [EvenPlace]? = nil, childrenUrls: [String]? = nil, commonName: String? = nil, distance: Double? = nil, id: String? = nil, lat: Double? = nil, lon: Double? = nil, placeType: String? = nil, url: String? = nil) {
        self.additionalProperties = additionalProperties
        self.children = children
        self.childrenUrls = childrenUrls
        self.commonName = commonName
        self.distance = distance
        self.id = id
        self.lat = lat
        self.lon = lon
        self.placeType = placeType
        self.url = url
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        additionalProperties = try container.decodeArrayIfPresent("additionalProperties")
        children = try container.decodeArrayIfPresent("children")
        childrenUrls = try container.decodeArrayIfPresent("childrenUrls")
        commonName = try container.decodeIfPresent("commonName")
        distance = try container.decodeIfPresent("distance")
        id = try container.decodeIfPresent("id")
        lat = try container.decodeIfPresent("lat")
        lon = try container.decodeIfPresent("lon")
        placeType = try container.decodeIfPresent("placeType")
        url = try container.decodeIfPresent("url")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(additionalProperties, forKey: "additionalProperties")
        try container.encodeIfPresent(children, forKey: "children")
        try container.encodeIfPresent(childrenUrls, forKey: "childrenUrls")
        try container.encodeIfPresent(commonName, forKey: "commonName")
        try container.encodeIfPresent(distance, forKey: "distance")
        try container.encodeIfPresent(id, forKey: "id")
        try container.encodeIfPresent(lat, forKey: "lat")
        try container.encodeIfPresent(lon, forKey: "lon")
        try container.encodeIfPresent(placeType, forKey: "placeType")
        try container.encodeIfPresent(url, forKey: "url")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? EvenPlace else { return false }
      guard self.additionalProperties == object.additionalProperties else { return false }
      guard self.children == object.children else { return false }
      guard self.childrenUrls == object.childrenUrls else { return false }
      guard self.commonName == object.commonName else { return false }
      guard self.distance == object.distance else { return false }
      guard self.id == object.id else { return false }
      guard self.lat == object.lat else { return false }
      guard self.lon == object.lon else { return false }
      guard self.placeType == object.placeType else { return false }
      guard self.url == object.url else { return false }
      return true
    }

    public static func == (lhs: EvenPlace, rhs: EvenPlace) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
