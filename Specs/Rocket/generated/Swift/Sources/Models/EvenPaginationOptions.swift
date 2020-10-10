//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class EvenPaginationOptions: APIModel {

    /** Specific item type filter. */
    public var itemType: EvenItemType?

    /** The maximum rating (inclusive) of items returned, e.g. 'AUOFLC-PG'. */
    public var maxRating: String?

    /** The applied sort order if any. */
    public var order: EvenListOrder?

    /** The applied sort ordering property if any. */
    public var orderBy: EvenListOrderBy?

    /** The number of items to return in a list page. */
    public var pageSize: Int?

    public init(itemType: EvenItemType? = nil, maxRating: String? = nil, order: EvenListOrder? = nil, orderBy: EvenListOrderBy? = nil, pageSize: Int? = nil) {
        self.itemType = itemType
        self.maxRating = maxRating
        self.order = order
        self.orderBy = orderBy
        self.pageSize = pageSize
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        itemType = try container.decodeIfPresent("itemType")
        maxRating = try container.decodeIfPresent("maxRating")
        order = try container.decodeIfPresent("order")
        orderBy = try container.decodeIfPresent("orderBy")
        pageSize = try container.decodeIfPresent("pageSize")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(itemType, forKey: "itemType")
        try container.encodeIfPresent(maxRating, forKey: "maxRating")
        try container.encodeIfPresent(order, forKey: "order")
        try container.encodeIfPresent(orderBy, forKey: "orderBy")
        try container.encodeIfPresent(pageSize, forKey: "pageSize")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? EvenPaginationOptions else { return false }
      guard self.itemType == object.itemType else { return false }
      guard self.maxRating == object.maxRating else { return false }
      guard self.order == object.order else { return false }
      guard self.orderBy == object.orderBy else { return false }
      guard self.pageSize == object.pageSize else { return false }
      return true
    }

    public static func == (lhs: EvenPaginationOptions, rhs: EvenPaginationOptions) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}