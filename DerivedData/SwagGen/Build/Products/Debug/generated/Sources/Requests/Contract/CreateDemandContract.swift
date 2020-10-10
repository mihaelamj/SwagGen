//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension API.Contract {

    /** Create a demand contract */
    public enum CreateDemandContract {

        public static let service = APIService<Response>(id: "createDemandContract", tag: "Contract", method: "POST", path: "/demandContracts", hasBody: true, securityRequirements: [SecurityRequirement(type: "oauth", scopes: ["finance:write"])])

        public final class Request: APIRequest<Response> {

            public var body: EvenDemandContractCreateData

            public init(body: EvenDemandContractCreateData, encoder: RequestEncoder? = nil) {
                self.body = body
                super.init(service: CreateDemandContract.service) { defaultEncoder in
                    return try (encoder ?? defaultEncoder).encode(body)
                }
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = EvenDemandContract

            /** Success */
            case status201(EvenDemandContract)

            public var success: EvenDemandContract? {
                switch self {
                case .status201(let response): return response
                }
            }

            public var response: Any {
                switch self {
                case .status201(let response): return response
                }
            }

            public var statusCode: Int {
                switch self {
                case .status201: return 201
                }
            }

            public var successful: Bool {
                switch self {
                case .status201: return true
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 201: self = try .status201(decoder.decode(EvenDemandContract.self, from: data))
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
