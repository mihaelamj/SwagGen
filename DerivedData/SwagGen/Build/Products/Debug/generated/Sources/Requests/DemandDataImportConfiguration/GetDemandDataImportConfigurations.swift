//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension API.DemandDataImportConfiguration {

    /**
    Get demand data import configurations

    Return demand data import configurations based upon request parameters
    */
    public enum GetDemandDataImportConfigurations {

        public static let service = APIService<Response>(id: "getDemandDataImportConfigurations", tag: "Demand Data Import Configuration", method: "GET", path: "/demandDataImportConfigurations", hasBody: false, securityRequirements: [SecurityRequirement(type: "oauth", scopes: ["finance:read"])])

        public final class Request: APIRequest<Response> {

            public struct Options {

                public var id: [Int]?

                public var demandSubAccountId: [Int]?

                public var includeDeleted: Bool?

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

                public init(id: [Int]? = nil, demandSubAccountId: [Int]? = nil, includeDeleted: Bool? = nil, offset: Int? = nil, limit: Int, sortBy: String? = nil, order: String? = nil) {
                    self.id = id
                    self.demandSubAccountId = demandSubAccountId
                    self.includeDeleted = includeDeleted
                    self.offset = offset
                    self.limit = limit
                    self.sortBy = sortBy
                    self.order = order
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: GetDemandDataImportConfigurations.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(id: [Int]? = nil, demandSubAccountId: [Int]? = nil, includeDeleted: Bool? = nil, offset: Int? = nil, limit: Int, sortBy: String? = nil, order: String? = nil) {
                let options = Options(id: id, demandSubAccountId: demandSubAccountId, includeDeleted: includeDeleted, offset: offset, limit: limit, sortBy: sortBy, order: order)
                self.init(options: options)
            }

            public override var queryParameters: [String: Any] {
                var params: [String: Any] = [:]
                if let id = options.id?.map({ String(describing: $0) }).joined(separator: ",") {
                  params["id"] = id
                }
                if let demandSubAccountId = options.demandSubAccountId?.map({ String(describing: $0) }).joined(separator: ",") {
                  params["demandSubAccountId"] = demandSubAccountId
                }
                if let includeDeleted = options.includeDeleted {
                  params["includeDeleted"] = includeDeleted
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
            public typealias SuccessType = [EvenDemandDataImportConfiguration]

            /** Success */
            case status200([EvenDemandDataImportConfiguration])

            /** Invalid request */
            case status400([EvenApiError])

            public var success: [EvenDemandDataImportConfiguration]? {
                switch self {
                case .status200(let response): return response
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
            public var responseResult: APIResponseResult<[EvenDemandDataImportConfiguration], [EvenApiError]> {
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
                case 200: self = try .status200(decoder.decode([EvenDemandDataImportConfiguration].self, from: data))
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