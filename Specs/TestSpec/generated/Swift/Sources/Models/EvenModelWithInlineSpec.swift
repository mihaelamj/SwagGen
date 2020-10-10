//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class EvenModelWithInlineSpec: APIModel {

    /** an inline model */
    public var myModel: MyModel?

    /** an inline model */
    public class MyModel: APIModel {

        /** name of the model */
        public var name: String?

        public init(name: String? = nil) {
            self.name = name
        }

        public required init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            name = try container.decodeIfPresent("name")
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(name, forKey: "name")
        }

        public func isEqual(to object: Any?) -> Bool {
          guard let object = object as? MyModel else { return false }
          guard self.name == object.name else { return false }
          return true
        }

        public static func == (lhs: MyModel, rhs: MyModel) -> Bool {
            return lhs.isEqual(to: rhs)
        }
    }

    public init(myModel: MyModel? = nil) {
        self.myModel = myModel
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        myModel = try container.decodeIfPresent("myModel")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(myModel, forKey: "myModel")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? EvenModelWithInlineSpec else { return false }
      guard self.myModel == object.myModel else { return false }
      return true
    }

    public static func == (lhs: EvenModelWithInlineSpec, rhs: EvenModelWithInlineSpec) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}