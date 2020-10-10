//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class EvenChangePasswordRequest: APIModel {

    /** The new password for the account. */
    public var password: String

    public init(password: String) {
        self.password = password
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        password = try container.decode("password")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(password, forKey: "password")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? EvenChangePasswordRequest else { return false }
      guard self.password == object.password else { return false }
      return true
    }

    public static func == (lhs: EvenChangePasswordRequest, rhs: EvenChangePasswordRequest) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
