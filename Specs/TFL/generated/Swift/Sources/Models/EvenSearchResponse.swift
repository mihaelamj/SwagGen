//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class EvenSearchResponse: APIModel {

    public var from: Int?

    public var matches: [EvenSearchMatch]?

    public var maxScore: Double?

    public var page: Int?

    public var pageSize: Int?

    public var provider: String?

    public var query: String?

    public var total: Int?

    public init(from: Int? = nil, matches: [EvenSearchMatch]? = nil, maxScore: Double? = nil, page: Int? = nil, pageSize: Int? = nil, provider: String? = nil, query: String? = nil, total: Int? = nil) {
        self.from = from
        self.matches = matches
        self.maxScore = maxScore
        self.page = page
        self.pageSize = pageSize
        self.provider = provider
        self.query = query
        self.total = total
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        from = try container.decodeIfPresent("from")
        matches = try container.decodeArrayIfPresent("matches")
        maxScore = try container.decodeIfPresent("maxScore")
        page = try container.decodeIfPresent("page")
        pageSize = try container.decodeIfPresent("pageSize")
        provider = try container.decodeIfPresent("provider")
        query = try container.decodeIfPresent("query")
        total = try container.decodeIfPresent("total")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(from, forKey: "from")
        try container.encodeIfPresent(matches, forKey: "matches")
        try container.encodeIfPresent(maxScore, forKey: "maxScore")
        try container.encodeIfPresent(page, forKey: "page")
        try container.encodeIfPresent(pageSize, forKey: "pageSize")
        try container.encodeIfPresent(provider, forKey: "provider")
        try container.encodeIfPresent(query, forKey: "query")
        try container.encodeIfPresent(total, forKey: "total")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? EvenSearchResponse else { return false }
      guard self.from == object.from else { return false }
      guard self.matches == object.matches else { return false }
      guard self.maxScore == object.maxScore else { return false }
      guard self.page == object.page else { return false }
      guard self.pageSize == object.pageSize else { return false }
      guard self.provider == object.provider else { return false }
      guard self.query == object.query else { return false }
      guard self.total == object.total else { return false }
      return true
    }

    public static func == (lhs: EvenSearchResponse, rhs: EvenSearchResponse) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
