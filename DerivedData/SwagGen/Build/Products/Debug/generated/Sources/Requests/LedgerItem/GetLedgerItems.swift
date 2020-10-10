//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension API.LedgerItem {

    /**
    Get ledger items

    Returns a list of ledger items that match the specified criteria.
    */
    public enum GetLedgerItems {

        public static let service = APIService<Response>(id: "getLedgerItems", tag: "Ledger Item", method: "GET", path: "/ledgerItems", hasBody: false, securityRequirements: [SecurityRequirement(type: "oauth", scopes: ["finance:read"])])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** A comma separated list of Ledger Item ids */
                public var ids: [Int]?

                /** A comma separated list of Account ids */
                public var accountIds: [Int]?

                /** ledger item start date */
                public var startDate: [DateDay]?

                /** ledger item end date */
                public var endDate: DateDay?

                public var dueDate: DateDay?

                /** Ledger Item Type, either payable or receivable */
                public var ledgerItemType: [String]?

                /** Reconciliation type, either paid or ignored */
                public var reconciliationType: [String]?

                public var reason: [EvenLedgerItemReason]?

                /** The amount of time allowed between cycle end and payment due */
                public var netD: [Int]?

                /** Fuzzy search parameter */
                public var q: [String]?

                public var createdAtStart: DateTime?

                public var createdAtEnd: DateTime?

                public var createdBy: [ID]?

                public var deletedAtStart: DateTime?

                public var deletedAtEnd: DateTime?

                public var deletedBy: [ID]?

                public var limit: Int

                public var offset: Int?

                public var sortBy: String?

                public var order: EvenOrder?

                public var excludeDeleted: Bool?

                public init(ids: [Int]? = nil, accountIds: [Int]? = nil, startDate: [DateDay]? = nil, endDate: DateDay? = nil, dueDate: DateDay? = nil, ledgerItemType: [String]? = nil, reconciliationType: [String]? = nil, reason: [EvenLedgerItemReason]? = nil, netD: [Int]? = nil, q: [String]? = nil, createdAtStart: DateTime? = nil, createdAtEnd: DateTime? = nil, createdBy: [ID]? = nil, deletedAtStart: DateTime? = nil, deletedAtEnd: DateTime? = nil, deletedBy: [ID]? = nil, limit: Int, offset: Int? = nil, sortBy: String? = nil, order: EvenOrder? = nil, excludeDeleted: Bool? = nil) {
                    self.ids = ids
                    self.accountIds = accountIds
                    self.startDate = startDate
                    self.endDate = endDate
                    self.dueDate = dueDate
                    self.ledgerItemType = ledgerItemType
                    self.reconciliationType = reconciliationType
                    self.reason = reason
                    self.netD = netD
                    self.q = q
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
                super.init(service: GetLedgerItems.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(ids: [Int]? = nil, accountIds: [Int]? = nil, startDate: [DateDay]? = nil, endDate: DateDay? = nil, dueDate: DateDay? = nil, ledgerItemType: [String]? = nil, reconciliationType: [String]? = nil, reason: [EvenLedgerItemReason]? = nil, netD: [Int]? = nil, q: [String]? = nil, createdAtStart: DateTime? = nil, createdAtEnd: DateTime? = nil, createdBy: [ID]? = nil, deletedAtStart: DateTime? = nil, deletedAtEnd: DateTime? = nil, deletedBy: [ID]? = nil, limit: Int, offset: Int? = nil, sortBy: String? = nil, order: EvenOrder? = nil, excludeDeleted: Bool? = nil) {
                let options = Options(ids: ids, accountIds: accountIds, startDate: startDate, endDate: endDate, dueDate: dueDate, ledgerItemType: ledgerItemType, reconciliationType: reconciliationType, reason: reason, netD: netD, q: q, createdAtStart: createdAtStart, createdAtEnd: createdAtEnd, createdBy: createdBy, deletedAtStart: deletedAtStart, deletedAtEnd: deletedAtEnd, deletedBy: deletedBy, limit: limit, offset: offset, sortBy: sortBy, order: order, excludeDeleted: excludeDeleted)
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
                if let startDate = options.startDate?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["startDate"] = startDate
                }
                if let endDate = options.endDate?.encode() {
                  params["endDate"] = endDate
                }
                if let dueDate = options.dueDate?.encode() {
                  params["dueDate"] = dueDate
                }
                if let ledgerItemType = options.ledgerItemType?.joined(separator: ",") {
                  params["ledgerItemType"] = ledgerItemType
                }
                if let reconciliationType = options.reconciliationType?.joined(separator: ",") {
                  params["reconciliationType"] = reconciliationType
                }
                if let reason = options.reason?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["reason"] = reason
                }
                if let netD = options.netD?.map({ String(describing: $0) }).joined(separator: ",") {
                  params["netD"] = netD
                }
                if let q = options.q?.joined(separator: ",") {
                  params["q"] = q
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
            public typealias SuccessType = [EvenLedgerItem]

            /** Success */
            case status200([EvenLedgerItem])

            /** Invalid request */
            case status400([EvenApiError])

            public var success: [EvenLedgerItem]? {
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
            public var responseResult: APIResponseResult<[EvenLedgerItem], [EvenApiError]> {
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
                case 200: self = try .status200(decoder.decode([EvenLedgerItem].self, from: data))
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
