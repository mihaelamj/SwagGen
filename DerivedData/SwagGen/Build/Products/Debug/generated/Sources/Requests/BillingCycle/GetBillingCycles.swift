//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension API.BillingCycle {

    /**
    Get billing cycles

    Return a list of billing cycles that match the specified criteria
    */
    public enum GetBillingCycles {

        public static let service = APIService<Response>(id: "getBillingCycles", tag: "Billing Cycle", method: "GET", path: "/billingCycles", hasBody: false, securityRequirements: [SecurityRequirement(type: "oauth", scopes: ["finance:read"])])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** A comma separated list of Ledger Item ids */
                public var ids: [Int]?

                /** A comma separated list of Account ids */
                public var accountIds: [Int]?

                /** Ledger Item Type, either payable or receivable */
                public var ledgerItemType: [String]?

                /** beginning of effectiveAt range */
                public var effectiveAtStart: [DateDay]?

                /** end of effectiveAt range */
                public var effectiveAtEnd: DateDay?

                /** The amount of time allowed between cycle end and payment due */
                public var netD: [Int]?

                /** start of createdAtStart range */
                public var createdAtStart: DateTime?

                /** end of createdAtStart range */
                public var createdAtEnd: DateTime?

                public var createdByUuid: [ID]?

                /** start of range for deletedAt */
                public var deletedAtStart: DateTime?

                /** end of range for deletedAt */
                public var deletedAtEnd: DateTime?

                /** comma separated list of uuid */
                public var deletedByUuid: [ID]?

                /** limit the results, default 100 */
                public var limit: Int

                /** default 0 */
                public var offset: Int?

                public var sortBy: String?

                /** default asc */
                public var order: EvenOrder?

                /** ignore deleted items, default true */
                public var excludeDeleted: Bool?

                public init(ids: [Int]? = nil, accountIds: [Int]? = nil, ledgerItemType: [String]? = nil, effectiveAtStart: [DateDay]? = nil, effectiveAtEnd: DateDay? = nil, netD: [Int]? = nil, createdAtStart: DateTime? = nil, createdAtEnd: DateTime? = nil, createdByUuid: [ID]? = nil, deletedAtStart: DateTime? = nil, deletedAtEnd: DateTime? = nil, deletedByUuid: [ID]? = nil, limit: Int, offset: Int? = nil, sortBy: String? = nil, order: EvenOrder? = nil, excludeDeleted: Bool? = nil) {
                    self.ids = ids
                    self.accountIds = accountIds
                    self.ledgerItemType = ledgerItemType
                    self.effectiveAtStart = effectiveAtStart
                    self.effectiveAtEnd = effectiveAtEnd
                    self.netD = netD
                    self.createdAtStart = createdAtStart
                    self.createdAtEnd = createdAtEnd
                    self.createdByUuid = createdByUuid
                    self.deletedAtStart = deletedAtStart
                    self.deletedAtEnd = deletedAtEnd
                    self.deletedByUuid = deletedByUuid
                    self.limit = limit
                    self.offset = offset
                    self.sortBy = sortBy
                    self.order = order
                    self.excludeDeleted = excludeDeleted
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: GetBillingCycles.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(ids: [Int]? = nil, accountIds: [Int]? = nil, ledgerItemType: [String]? = nil, effectiveAtStart: [DateDay]? = nil, effectiveAtEnd: DateDay? = nil, netD: [Int]? = nil, createdAtStart: DateTime? = nil, createdAtEnd: DateTime? = nil, createdByUuid: [ID]? = nil, deletedAtStart: DateTime? = nil, deletedAtEnd: DateTime? = nil, deletedByUuid: [ID]? = nil, limit: Int, offset: Int? = nil, sortBy: String? = nil, order: EvenOrder? = nil, excludeDeleted: Bool? = nil) {
                let options = Options(ids: ids, accountIds: accountIds, ledgerItemType: ledgerItemType, effectiveAtStart: effectiveAtStart, effectiveAtEnd: effectiveAtEnd, netD: netD, createdAtStart: createdAtStart, createdAtEnd: createdAtEnd, createdByUuid: createdByUuid, deletedAtStart: deletedAtStart, deletedAtEnd: deletedAtEnd, deletedByUuid: deletedByUuid, limit: limit, offset: offset, sortBy: sortBy, order: order, excludeDeleted: excludeDeleted)
                self.init(options: options)
            }

            public override var queryParameters: [String: Any] {
                var params: [String: Any] = [:]
                if let ids = options.ids?.map({ String(describing: $0) }).joined(separator: ",") {
                  params["ids"] = ids
                }
                if let accountIds = options.accountIds?.map({ String(describing: $0) }).joined(separator: ",") {
                  params["accountIds"] = accountIds
                }
                if let ledgerItemType = options.ledgerItemType?.joined(separator: ",") {
                  params["ledgerItemType"] = ledgerItemType
                }
                if let effectiveAtStart = options.effectiveAtStart?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["effectiveAtStart"] = effectiveAtStart
                }
                if let effectiveAtEnd = options.effectiveAtEnd?.encode() {
                  params["effectiveAtEnd"] = effectiveAtEnd
                }
                if let netD = options.netD?.map({ String(describing: $0) }).joined(separator: ",") {
                  params["netD"] = netD
                }
                if let createdAtStart = options.createdAtStart?.encode() {
                  params["createdAtStart"] = createdAtStart
                }
                if let createdAtEnd = options.createdAtEnd?.encode() {
                  params["createdAtEnd"] = createdAtEnd
                }
                if let createdByUuid = options.createdByUuid?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["createdByUuid"] = createdByUuid
                }
                if let deletedAtStart = options.deletedAtStart?.encode() {
                  params["deletedAtStart"] = deletedAtStart
                }
                if let deletedAtEnd = options.deletedAtEnd?.encode() {
                  params["deletedAtEnd"] = deletedAtEnd
                }
                if let deletedByUuid = options.deletedByUuid?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["deletedByUuid"] = deletedByUuid
                }
                params["limit"] = options.limit
                if let offset = options.offset {
                  params["offset"] = offset
                }
                if let sortBy = options.sortBy {
                  params["sortBy"] = sortBy
                }
                if let order = options.order?.encode() {
                  params["order"] = order
                }
                if let excludeDeleted = options.excludeDeleted {
                  params["excludeDeleted"] = excludeDeleted
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = [EvenBillingCycle]

            /** Success */
            case status200([EvenBillingCycle])

            /** Invalid request */
            case status400([EvenApiError])

            public var success: [EvenBillingCycle]? {
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
            public var responseResult: APIResponseResult<[EvenBillingCycle], [EvenApiError]> {
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
                case 200: self = try .status200(decoder.decode([EvenBillingCycle].self, from: data))
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
