//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension API.Account {

    /** Delete an account owner */
    public enum DeleteAccountOwner {

        public static let service = APIService<Response>(id: "deleteAccountOwner", tag: "Account", method: "DELETE", path: "/accounts/owners/{id}", hasBody: false, securityRequirements: [SecurityRequirement(type: "oauth", scopes: ["finance:write"])])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** Account Owner id */
                public var id: Int

                public init(id: Int) {
                    self.id = id
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: DeleteAccountOwner.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(id: Int) {
                let options = Options(id: id)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "id" + "}", with: "\(self.options.id)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = String

            /** Success */
            case status204(String)

            /** Unknown ID */
            case status404

            public var success: String? {
                switch self {
                case .status204(let response): return response
                default: return nil
                }
            }

            public var response: Any {
                switch self {
                case .status204(let response): return response
                default: return ()
                }
            }

            public var statusCode: Int {
                switch self {
                case .status204: return 204
                case .status404: return 404
                }
            }

            public var successful: Bool {
                switch self {
                case .status204: return true
                case .status404: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 204: self = try .status204(decoder.decode(String.self, from: data))
                case 404: self = .status404
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
