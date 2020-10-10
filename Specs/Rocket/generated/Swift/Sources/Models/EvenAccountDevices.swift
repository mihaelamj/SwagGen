//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class EvenAccountDevices: APIModel {

    /** The array of registered playack devices. */
    public var devices: [EvenDevice]

    /** The maximum number of playback devices that can be registered
under an account at a single time.
If there is no maximum defined this value will be `-1`.
 */
    public var maxRegistered: Int

    /** Defines the start and end date of the current deregistration window along with calculated limits.
If undefined then there are no deregistration limits for a period.
For example given a deregistration period of 30 days, this sliding window will start on the
oldest deregistration of the last 30 days, and end 30 days from that deregistration date.
In this window there is a limit on how many devices can be deregistered in 30 days.
If exceeded then no more devices can be deregistered unless the oldest deregistration drops
off the 30 day window.
 */
    public var deregistrationWindow: EvenDeviceRegistrationWindow?

    /** Defines the start and end date of the current registration window along with calculated limits.
If undefined then there are no registration limits for a period.
For example given a registration period of 30 days, this sliding window will start on the
oldest registration of the last 30 days, and end 30 days from that registration date.
In this window there is a limit on how many devices can be registered in 30 days.
If exceeded then no more devices can be registered unless one is deregistered or the
oldest registration drops off the 30 day window.
Deregistration also has potential limits which may prevent a device being deregistered.
In this case the user must wait until the oldest deregistered device is more than 30
days old.
 */
    public var registrationWindow: EvenDeviceRegistrationWindow?

    public init(devices: [EvenDevice], maxRegistered: Int, deregistrationWindow: EvenDeviceRegistrationWindow? = nil, registrationWindow: EvenDeviceRegistrationWindow? = nil) {
        self.devices = devices
        self.maxRegistered = maxRegistered
        self.deregistrationWindow = deregistrationWindow
        self.registrationWindow = registrationWindow
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        devices = try container.decodeArray("devices")
        maxRegistered = try container.decode("maxRegistered")
        deregistrationWindow = try container.decodeIfPresent("deregistrationWindow")
        registrationWindow = try container.decodeIfPresent("registrationWindow")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(devices, forKey: "devices")
        try container.encode(maxRegistered, forKey: "maxRegistered")
        try container.encodeIfPresent(deregistrationWindow, forKey: "deregistrationWindow")
        try container.encodeIfPresent(registrationWindow, forKey: "registrationWindow")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? EvenAccountDevices else { return false }
      guard self.devices == object.devices else { return false }
      guard self.maxRegistered == object.maxRegistered else { return false }
      guard self.deregistrationWindow == object.deregistrationWindow else { return false }
      guard self.registrationWindow == object.registrationWindow else { return false }
      return true
    }

    public static func == (lhs: EvenAccountDevices, rhs: EvenAccountDevices) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}