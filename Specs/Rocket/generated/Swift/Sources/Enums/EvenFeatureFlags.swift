//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

/** The set of opt in feature flags which cause breaking changes to responses.
While Rocket APIs look to avoid breaking changes under the active major version, the formats of responses
may need to evolve over this time.
These feature flags allow clients to select which response formats they expect and avoid breaking
clients as these formats evolve under the current major version.
### Flags
- `all` - Enable all flags. Useful for testing. _Don't use in production_.
- `idp` - Dynamic item detail pages with schedulable rows.
- `ldp` - Dynamic list detail pages with schedulable rows.
See the `feature-flags.md` for available flag details.
 */
public enum EvenFeatureFlags: String, Codable, Equatable, CaseIterable {
    case all = "all"
    case idp = "idp"
    case ldp = "ldp"
    case undecodable

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = EvenFeatureFlags(rawValue: rawValue) ?? .undecodable
    }
}
