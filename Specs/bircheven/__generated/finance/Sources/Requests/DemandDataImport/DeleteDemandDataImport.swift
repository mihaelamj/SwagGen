//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension API.DemandDataImport {

    /** Delete a demand data import */
    public enum DeleteDemandDataImport {

        public static let service = APIService<Response>(id: "deleteDemandDataImport", tag: "Demand Data Import", method: "DELETE", path: "/demandDataImports/{id}", hasBody: false, securityRequirements: [SecurityRequirement(type: "oauth", scopes: ["finance:write"])])

        public final class Request: APIRequest<Response> {

            public struct Options {

                public var id: Int

                public init(id: Int) {
                    self.id = id
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: DeleteDemandDataImport.service)
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
            public typealias SuccessType = Void

            /** Success */
            case status204

            /** Unknown ID */
            case status404

            public var success: Void? {
                switch self {
                case .status204: return ()
                default: return nil
                }
            }

            public var response: Any {
                switch self {
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
                case 204: self = .status204
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
