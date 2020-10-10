//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension API.DemandDataImport {

    /** Create a demand data import */
    public enum CreateDemandDataImport {

        public static let service = APIService<Response>(id: "createDemandDataImport", tag: "Demand Data Import", method: "POST", path: "/demandDataImports", hasBody: true, securityRequirements: [SecurityRequirement(type: "oauth", scopes: ["finance:write"])])

        public final class Request: APIRequest<Response> {

            public var body: EvenDemandDataImportCreateData?

            public init(body: EvenDemandDataImportCreateData?, encoder: RequestEncoder? = nil) {
                self.body = body
                super.init(service: CreateDemandDataImport.service) { defaultEncoder in
                    return try (encoder ?? defaultEncoder).encode(body)
                }
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = EvenDemandDataImport

            /** Success */
            case status201(EvenDemandDataImport)

            /** Invalid request */
            case status400([EvenApiError])

            public var success: EvenDemandDataImport? {
                switch self {
                case .status201(let response): return response
                default: return nil
                }
            }

            public var failure: [EvenApiError]? {
                switch self {
                case .status400(let response): return response
                default: return nil
                }
            }

            /// either success or failure value. Success is anything in the 200..<300 status code range
            public var responseResult: APIResponseResult<EvenDemandDataImport, [EvenApiError]> {
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
                case .status201(let response): return response
                case .status400(let response): return response
                }
            }

            public var statusCode: Int {
                switch self {
                case .status201: return 201
                case .status400: return 400
                }
            }

            public var successful: Bool {
                switch self {
                case .status201: return true
                case .status400: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 201: self = try .status201(decoder.decode(EvenDemandDataImport.self, from: data))
                case 400: self = try .status400(decoder.decode([EvenApiError].self, from: data))
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
