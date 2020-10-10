//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension API.AccountDeactivation {

    /**
    Get account deactivations

    Return account deactivations based upon request parameters
    */
    public enum GetAccountDeactivations {

        public static let service = APIService<Response>(id: "getAccountDeactivations", tag: "Account Deactivation", method: "GET", path: "/accountDeactivations", hasBody: false, securityRequirements: [SecurityRequirement(type: "oauth", scopes: ["finance:read"])])

        public final class Request: APIRequest<Response> {

            public struct Options {

                public var id: [Int]?

                public var accountId: [Int]?

                public var createdAtMin: DateTime?

                public var createdAtMax: DateTime?

                public var createdBy: [ID]?

                public var deletedAtMin: DateTime?

                public var deletedAtMax: DateTime?

                public var isDeleted: Bool?

                public var deletedBy: [ID]?

                /** The number of resources to skip before the first resource in the results.
 */
                public var offset: Int?

                /** The maximum number of resources to include in the results.
 */
                public var limit: Int

                /** The attribute with which to sort the resources.
 */
                public var sortBy: String?

                /** The direction to use for ordering resources.
 */
                public var order: String?

                public init(id: [Int]? = nil, accountId: [Int]? = nil, createdAtMin: DateTime? = nil, createdAtMax: DateTime? = nil, createdBy: [ID]? = nil, deletedAtMin: DateTime? = nil, deletedAtMax: DateTime? = nil, isDeleted: Bool? = nil, deletedBy: [ID]? = nil, offset: Int? = nil, limit: Int, sortBy: String? = nil, order: String? = nil) {
                    self.id = id
                    self.accountId = accountId
                    self.createdAtMin = createdAtMin
                    self.createdAtMax = createdAtMax
                    self.createdBy = createdBy
                    self.deletedAtMin = deletedAtMin
                    self.deletedAtMax = deletedAtMax
                    self.isDeleted = isDeleted
                    self.deletedBy = deletedBy
                    self.offset = offset
                    self.limit = limit
                    self.sortBy = sortBy
                    self.order = order
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: GetAccountDeactivations.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(id: [Int]? = nil, accountId: [Int]? = nil, createdAtMin: DateTime? = nil, createdAtMax: DateTime? = nil, createdBy: [ID]? = nil, deletedAtMin: DateTime? = nil, deletedAtMax: DateTime? = nil, isDeleted: Bool? = nil, deletedBy: [ID]? = nil, offset: Int? = nil, limit: Int, sortBy: String? = nil, order: String? = nil) {
                let options = Options(id: id, accountId: accountId, createdAtMin: createdAtMin, createdAtMax: createdAtMax, createdBy: createdBy, deletedAtMin: deletedAtMin, deletedAtMax: deletedAtMax, isDeleted: isDeleted, deletedBy: deletedBy, offset: offset, limit: limit, sortBy: sortBy, order: order)
                self.init(options: options)
            }

            public override var queryParameters: [String: Any] {
                var params: [String: Any] = [:]
                if let id = options.id?.map({ String(describing: $0) }).joined(separator: ",") {
                  params["id"] = id
                }
                if let accountId = options.accountId?.map({ String(describing: $0) }).joined(separator: ",") {
                  params["accountId"] = accountId
                }
                if let createdAtMin = options.createdAtMin?.encode() {
                  params["createdAtMin"] = createdAtMin
                }
                if let createdAtMax = options.createdAtMax?.encode() {
                  params["createdAtMax"] = createdAtMax
                }
                if let createdBy = options.createdBy?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["createdBy"] = createdBy
                }
                if let deletedAtMin = options.deletedAtMin?.encode() {
                  params["deletedAtMin"] = deletedAtMin
                }
                if let deletedAtMax = options.deletedAtMax?.encode() {
                  params["deletedAtMax"] = deletedAtMax
                }
                if let isDeleted = options.isDeleted {
                  params["isDeleted"] = isDeleted
                }
                if let deletedBy = options.deletedBy?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["deletedBy"] = deletedBy
                }
                if let offset = options.offset {
                  params["offset"] = offset
                }
                params["limit"] = options.limit
                if let sortBy = options.sortBy {
                  params["sortBy"] = sortBy
                }
                if let order = options.order {
                  params["order"] = order
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** Return account deactivations based upon request parameters */
            public class Status400: BirchModel, Decodable, AutoEquatable {

                public var attribute: String?

                public var details: EvenDetails?

                public var message: String?

                public var type: String?

                public init(attribute: String? = nil, details: EvenDetails? = nil, message: String? = nil, type: String? = nil) {
                    self.attribute = attribute
                    self.details = details
                    self.message = message
                    self.type = type
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    attribute = try container.decodeIfPresent("attribute")
                    details = try container.decodeIfPresent("details")
                    message = try container.decodeIfPresent("message")
                    type = try container.decodeIfPresent("type")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encodeIfPresent(attribute, forKey: "attribute")
                    try container.encodeIfPresent(details, forKey: "details")
                    try container.encodeIfPresent(message, forKey: "message")
                    try container.encodeIfPresent(type, forKey: "type")
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status400 else { return false }
                  guard self.attribute == object.attribute else { return false }
                  guard self.details == object.details else { return false }
                  guard self.message == object.message else { return false }
                  guard self.type == object.type else { return false }
                  return true
                }

                public static func == (lhs: Status400, rhs: Status400) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }
            public typealias SuccessType = [EvenAccountDeactivation]

            /** Success */
            case status200([EvenAccountDeactivation])

            /** Invalid request */
            case status400([Status400])

            public var success: [EvenAccountDeactivation]? {
                switch self {
                case .status200(let response): return response
                default: return nil
                }
            }

            public var failure: [Status400]? {
                switch self {
                case .status400(let response): return response
                default: return nil
                }
            }

            /// either success or failure value. Success is anything in the 200..<300 status code range
            public var responseResult: APIResponseResult<[EvenAccountDeactivation], [Status400]> {
                if let successValue = success {
                    return .success(successValue)
                } else if let failureValue = failure {
                    return .failure(failureValue)
                } else {
                    fatalError("Response does not have success or failure response")
                }
            }

            public var response: Any {
                switch self {
                case .status200(let response): return response
                case .status400(let response): return response
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                case .status400: return 400
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                case .status400: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 200: self = try .status200(decoder.decode([EvenAccountDeactivation].self, from: data))
                case 400: self = try .status400(decoder.decode([Status400].self, from: data))
                default: throw APIClientError.unexpectedStatusCode(statusCode: statusCode, data: data)
                }
            }

            public var description: String {
                return "\(statusCode) \(successful ? "success" : "failure")"
            }

            public var debugDescription: String {
                var string = description
                let responseString = "\(response)"
                if responseString != "()" {
                    string += "\n\(responseString)"
                }
                return string
            }
        }
    }
}
