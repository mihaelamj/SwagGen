//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension Rocket.Authorization {

    /** When a user signs out of an application we need to clear some
basic cookies we assigned them during token authorization.
 */
    public enum SignOut {

        public static let service = APIService<Response>(id: "signOut", tag: "authorization", method: "DELETE", path: "/authorization", hasBody: false, securityRequirements: [])

        public final class Request: APIRequest<Response> {

            public init() {
                super.init(service: SignOut.service)
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = Void

            /** OK */
            case status204

            /** Bad request. */
            case status400(EvenServiceError)

            /** Not found. */
            case status404(EvenServiceError)

            /** Internal server error. */
            case status500(EvenServiceError)

            /** Service error. */
            case defaultResponse(statusCode: Int, EvenServiceError)

            public var success: Void? {
                switch self {
                case .status204: return ()
                default: return nil
                }
            }

            public var failure: EvenServiceError? {
                switch self {
                case .status400(let response): return response
                case .status404(let response): return response
                case .status500(let response): return response
                case .defaultResponse(_, let response): return response
                default: return nil
                }
            }

            /// either success or failure value. Success is anything in the 200..<300 status code range
            public var responseResult: APIResponseResult<Void, EvenServiceError> {
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
                case .status400(let response): return response
                case .status404(let response): return response
                case .status500(let response): return response
                case .defaultResponse(_, let response): return response
                default: return ()
                }
            }

            public var statusCode: Int {
                switch self {
                case .status204: return 204
                case .status400: return 400
                case .status404: return 404
                case .status500: return 500
                case .defaultResponse(let statusCode, _): return statusCode
                }
            }

            public var successful: Bool {
                switch self {
                case .status204: return true
                case .status400: return false
                case .status404: return false
                case .status500: return false
                case .defaultResponse: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 204: self = .status204
                case 400: self = try .status400(decoder.decode(EvenServiceError.self, from: data))
                case 404: self = try .status404(decoder.decode(EvenServiceError.self, from: data))
                case 500: self = try .status500(decoder.decode(EvenServiceError.self, from: data))
                default: self = try .defaultResponse(statusCode: statusCode, decoder.decode(EvenServiceError.self, from: data))
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
