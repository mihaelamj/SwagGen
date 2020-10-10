//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension API.LedgerItemReconciliation {

    /**
    Get ledger item reconiliations

    Returns a list of ledger item reconciliations that match the specified criteria.
    */
    public enum GetLedgerItemReconciliations {

        public static let service = APIService<Response>(id: "getLedgerItemReconciliations", tag: "Ledger Item Reconciliation", method: "GET", path: "/ledgerItemReconciliations", hasBody: false, securityRequirements: [SecurityRequirement(type: "oauth", scopes: ["finance:read"])])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** A comma separated list of Ledger Item ids */
                public var ids: [Int]?

                /** A comma separated list of Ledger Item ids */
                public var ledgerItemIds: [Int]?

                /** Ledger Item reconciliation type */
                public var reconciliationType: EvenReconciliationType?

                /** beginning of range createdAt */
                public var createdAtStart: DateTime?

                /** end of range createdAt */
                public var createdAtEnd: DateTime?

                /** comma separated list of uuids */
                public var createdBy: [ID]?

                /** beginning of range for deletedAt */
                public var deletedAtStart: DateTime?

                /** end of range for deletedAt */
                public var deletedAtEnd: DateTime?

                /** comma separated list of uuids */
                public var deletedBy: [ID]?

                /** default 100 */
                public var limit: Int

                /** default is 0 */
                public var offset: Int?

                /** default is created_at */
                public var sortBy: String?

                /** default case is asc */
                public var order: EvenOrder?

                /** default case is true */
                public var excludeDeleted: Bool?

                public init(ids: [Int]? = nil, ledgerItemIds: [Int]? = nil, reconciliationType: EvenReconciliationType? = nil, createdAtStart: DateTime? = nil, createdAtEnd: DateTime? = nil, createdBy: [ID]? = nil, deletedAtStart: DateTime? = nil, deletedAtEnd: DateTime? = nil, deletedBy: [ID]? = nil, limit: Int, offset: Int? = nil, sortBy: String? = nil, order: EvenOrder? = nil, excludeDeleted: Bool? = nil) {
                    self.ids = ids
                    self.ledgerItemIds = ledgerItemIds
                    self.reconciliationType = reconciliationType
                    self.createdAtStart = createdAtStart
                    self.createdAtEnd = createdAtEnd
                    self.createdBy = createdBy
                    self.deletedAtStart = deletedAtStart
                    self.deletedAtEnd = deletedAtEnd
                    self.deletedBy = deletedBy
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
                super.init(service: GetLedgerItemReconciliations.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(ids: [Int]? = nil, ledgerItemIds: [Int]? = nil, reconciliationType: EvenReconciliationType? = nil, createdAtStart: DateTime? = nil, createdAtEnd: DateTime? = nil, createdBy: [ID]? = nil, deletedAtStart: DateTime? = nil, deletedAtEnd: DateTime? = nil, deletedBy: [ID]? = nil, limit: Int, offset: Int? = nil, sortBy: String? = nil, order: EvenOrder? = nil, excludeDeleted: Bool? = nil) {
                let options = Options(ids: ids, ledgerItemIds: ledgerItemIds, reconciliationType: reconciliationType, createdAtStart: createdAtStart, createdAtEnd: createdAtEnd, createdBy: createdBy, deletedAtStart: deletedAtStart, deletedAtEnd: deletedAtEnd, deletedBy: deletedBy, limit: limit, offset: offset, sortBy: sortBy, order: order, excludeDeleted: excludeDeleted)
                self.init(options: options)
            }

            public override var queryParameters: [String: Any] {
                var params: [String: Any] = [:]
                if let ids = options.ids?.map({ String(describing: $0) }).joined(separator: ",") {
                  params["ids"] = ids
                }
                if let ledgerItemIds = options.ledgerItemIds?.map({ String(describing: $0) }).joined(separator: ",") {
                  params["ledgerItemIds"] = ledgerItemIds
                }
                if let reconciliationType = options.reconciliationType?.encode() {
                  params["reconciliationType"] = reconciliationType
                }
                if let createdAtStart = options.createdAtStart?.encode() {
                  params["createdAtStart"] = createdAtStart
                }
                if let createdAtEnd = options.createdAtEnd?.encode() {
                  params["createdAtEnd"] = createdAtEnd
                }
                if let createdBy = options.createdBy?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["createdBy"] = createdBy
                }
                if let deletedAtStart = options.deletedAtStart?.encode() {
                  params["deletedAtStart"] = deletedAtStart
                }
                if let deletedAtEnd = options.deletedAtEnd?.encode() {
                  params["deletedAtEnd"] = deletedAtEnd
                }
                if let deletedBy = options.deletedBy?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["deletedBy"] = deletedBy
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
            public typealias SuccessType = [EvenLedgerItemReconciliation]

            /** Success */
            case status200([EvenLedgerItemReconciliation])

            /** Invalid request */
            case status400([EvenApiError])

            public var success: [EvenLedgerItemReconciliation]? {
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
            public var responseResult: APIResponseResult<[EvenLedgerItemReconciliation], [EvenApiError]> {
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
                case 200: self = try .status200(decoder.decode([EvenLedgerItemReconciliation].self, from: data))
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
