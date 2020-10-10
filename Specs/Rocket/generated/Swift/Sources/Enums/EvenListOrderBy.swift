//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

/** What to order by. */
public enum EvenListOrderBy: String, Codable, Equatable, CaseIterable {
    case az = "a-z"
    case releaseYear = "release-year"
    case dateAdded = "date-added"
    case undecodable

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = EvenListOrderBy(rawValue: rawValue) ?? .undecodable
    }
}