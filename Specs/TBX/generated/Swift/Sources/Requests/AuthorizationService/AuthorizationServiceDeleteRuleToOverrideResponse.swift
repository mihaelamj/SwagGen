//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension TBX.AuthorizationService {

    /** Delete a rule to override the IDP response's */
    public enum AuthorizationServiceDeleteRuleToOverrideResponse {

        public static let service = APIService<Response>(id: "AuthorizationService.deleteRuleToOverrideResponse", tag: "AuthorizationService", method: "DELETE", path: "/AuthorizationServices/overrideRule/{ruleId}", hasBody: false, securityRequirements: [])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** The Rule ID */
                public var ruleId: String

                public init(ruleId: String) {
                    self.ruleId = ruleId
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: AuthorizationServiceDeleteRuleToOverrideResponse.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(ruleId: String) {
                let options = Options(ruleId: ruleId)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "ruleId" + "}", with: "\(self.options.ruleId)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            public class Status200: APIModel {

                public var status: Bool?

                public init(status: Bool? = nil) {
                    self.status = status
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    status = try container.decodeIfPresent("status")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encodeIfPresent(status, forKey: "status")
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status200 else { return false }
                  guard self.status == object.status else { return false }
                  return true
                }

                public static func == (lhs: Status200, rhs: Status200) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }
            public typealias SuccessType = Status200

            /** Request was successful */
            case status200(Status200)

            /** Bad Request  */
            case status400(EvenErrorObject)

            /** Unauthorized  */
            case status401(EvenErrorObject)

            /** Customer or Device not Found */
            case status404(EvenErrorObject)

            /** Device was Logged Out or the customer not longer exists */
            case status410(EvenErrorObject)

            public var success: Status200? {
                switch self {
                case .status200(let response): return response
                default: return nil
                }
            }

            public var failure: EvenErrorObject? {
                switch self {
                case .status400(let response): return response
                case .status401(let response): return response
                case .status404(let response): return response
                case .status410(let response): return response
                default: return nil
                }
            }

            /// either success or failure value. Success is anything in the 200..<300 status code range
            public var responseResult: APIResponseResult<Status200, EvenErrorObject> {
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
                case .status401(let response): return response
                case .status404(let response): return response
                case .status410(let response): return response
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                case .status400: return 400
                case .status401: return 401
                case .status404: return 404
                case .status410: return 410
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                case .status400: return false
                case .status401: return false
                case .status404: return false
                case .status410: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 200: self = try .status200(decoder.decode(Status200.self, from: data))
                case 400: self = try .status400(decoder.decode(EvenErrorObject.self, from: data))
                case 401: self = try .status401(decoder.decode(EvenErrorObject.self, from: data))
                case 404: self = try .status404(decoder.decode(EvenErrorObject.self, from: data))
                case 410: self = try .status410(decoder.decode(EvenErrorObject.self, from: data))
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
