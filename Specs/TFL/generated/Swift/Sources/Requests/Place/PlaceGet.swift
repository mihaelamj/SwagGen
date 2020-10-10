//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension TFL.Place {

    /** Gets the place with the given id. */
    public enum PlaceGet {

        public static let service = APIService<Response>(id: "Place_Get", tag: "Place", method: "GET", path: "/Place/{id}", hasBody: false, securityRequirements: [])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** The id of the place, you can use the /Place/Types/{types} endpoint to get a list of places for a given type including their ids */
                public var id: String

                /** Defaults to false. If true child places e.g. individual charging stations at a charge point while be included, otherwise just the URLs of any child places will be returned */
                public var includeChildren: Bool?

                public init(id: String, includeChildren: Bool? = nil) {
                    self.id = id
                    self.includeChildren = includeChildren
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: PlaceGet.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(id: String, includeChildren: Bool? = nil) {
                let options = Options(id: id, includeChildren: includeChildren)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "id" + "}", with: "\(self.options.id)")
            }

            public override var queryParameters: [String: Any] {
                var params: [String: Any] = [:]
                if let includeChildren = options.includeChildren {
                  params["includeChildren"] = includeChildren
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = [EvenPlace]

            /** OK */
            case status200([EvenPlace])

            public var success: [EvenPlace]? {
                switch self {
                case .status200(let response): return response
                }
            }

            public var response: Any {
                switch self {
                case .status200(let response): return response
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 200: self = try .status200(decoder.decode([EvenPlace].self, from: data))
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
