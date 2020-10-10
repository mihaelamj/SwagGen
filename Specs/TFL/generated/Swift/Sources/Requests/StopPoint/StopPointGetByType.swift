//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension TFL.StopPoint {

    /** Gets all stop points of a given type */
    public enum StopPointGetByType {

        public static let service = APIService<Response>(id: "StopPoint_GetByType", tag: "StopPoint", method: "GET", path: "/StopPoint/Type/{types}", hasBody: false, securityRequirements: [])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** A comma-separated list of the types to return. Max. approx. 12 types. 
            A list of valid stop types can be obtained from the StopPoint/meta/stoptypes endpoint. */
                public var types: [String]

                public init(types: [String]) {
                    self.types = types
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: StopPointGetByType.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(types: [String]) {
                let options = Options(types: types)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "types" + "}", with: "\(self.options.types.joined(separator: ","))")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = [EvenStopPoint]

            /** OK */
            case status200([EvenStopPoint])

            public var success: [EvenStopPoint]? {
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
                case 200: self = try .status200(decoder.decode([EvenStopPoint].self, from: data))
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
