//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class EvenXAny: APIModel {

    public init() {
    }

    public required init(from decoder: Decoder) throws {
    }

    public func encode(to encoder: Encoder) throws {
    }

    public func isEqual(to object: Any?) -> Bool {
      guard object is EvenXAny else { return false }
      return true
    }

    public static func == (lhs: EvenXAny, rhs: EvenXAny) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
