//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension TBX.UserService {

    /** Create a new Device */
    public enum UserServiceCreateDevice {

        public static let service = APIService<Response>(id: "UserService.createDevice", tag: "UserService", method: "POST", path: "/UserServices/device", hasBody: true, securityRequirements: [])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** The customer subscriber id */
                public var subscriberId: String

                /** The customer country code */
                public var country: String

                /** Device Type */
                public var type: String

                /** Description to device for example the user agent */
                public var description: String

                /** Extra data to device */
                public var attributes: String?

                public init(subscriberId: String, country: String, type: String, description: String, attributes: String? = nil) {
                    self.subscriberId = subscriberId
                    self.country = country
                    self.type = type
                    self.description = description
                    self.attributes = attributes
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: UserServiceCreateDevice.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(subscriberId: String, country: String, type: String, description: String, attributes: String? = nil) {
                let options = Options(subscriberId: subscriberId, country: country, type: type, description: description, attributes: attributes)
                self.init(options: options)
            }

            public override var formParameters: [String: Any] {
                var params: [String: Any] = [:]
                params["subscriberId"] = options.subscriberId
                params["country"] = options.country
                params["type"] = options.type
                params["description"] = options.description
                if let attributes = options.attributes {
                  params["attributes"] = attributes
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = EvenDeviceObject

            /** Request was successful */
            case status200(EvenDeviceObject)

            /** Bad Request  */
            case status400(EvenResponseError)

            /** Unauthorized  */
            case status401(EvenResponseError)

            /** Customer or Device not Found */
            case status404(EvenResponseError)

            /** Device was Logged Out or the customer not longer exists */
            case status410(EvenResponseError)

            public var success: EvenDeviceObject? {
                switch self {
                case .status200(let response): return response
                default: return nil
                }
            }

            public var failure: EvenResponseError? {
                switch self {
                case .status400(let response): return response
                case .status401(let response): return response
                case .status404(let response): return response
                case .status410(let response): return response
                default: return nil
                }
            }

            /// either success or failure value. Success is anything in the 200..<300 status code range
            public var responseResult: APIResponseResult<EvenDeviceObject, EvenResponseError> {
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
                case .status401(let response): return response
                case .status404(let response): return response
                case .status410(let response): return response
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                case .status400: return 400
                case .status401: return 401
                case .status404: return 404
                case .status410: return 410
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                case .status400: return false
                case .status401: return false
                case .status404: return false
                case .status410: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 200: self = try .status200(decoder.decode(EvenDeviceObject.self, from: data))
                case 400: self = try .status400(decoder.decode(EvenResponseError.self, from: data))
                case 401: self = try .status401(decoder.decode(EvenResponseError.self, from: data))
                case 404: self = try .status404(decoder.decode(EvenResponseError.self, from: data))
                case 410: self = try .status410(decoder.decode(EvenResponseError.self, from: data))
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
