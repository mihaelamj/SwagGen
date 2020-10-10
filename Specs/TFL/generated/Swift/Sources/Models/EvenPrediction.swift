//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** DTO to capture the prediction details */
public class EvenPrediction: APIModel {

    /** Bearing (between 0 to 359) */
    public var bearing: String?

    /** The current location of the vehicle. */
    public var currentLocation: String?

    /** Name of the destination */
    public var destinationName: String?

    /** Naptan Identifier for the prediction's destination */
    public var destinationNaptanId: String?

    /** Direction (unified to inbound/outbound) */
    public var direction: String?

    /** The expected arrival time of the vehicle at the stop/station */
    public var expectedArrival: DateTime?

    /** The identitier for the prediction */
    public var id: String?

    /** Unique identifier for the Line */
    public var lineId: String?

    /** Line Name */
    public var lineName: String?

    /** The mode name of the station/line the prediction relates to */
    public var modeName: String?

    /** Identifier for the prediction */
    public var naptanId: String?

    /** The type of the operation (1: is new or has been updated, 2: should be deleted from any client cache) */
    public var operationType: Int?

    /** Platform name (for bus, this is the stop letter) */
    public var platformName: String?

    /** Station name */
    public var stationName: String?

    /** The expiry time for the prediction */
    public var timeToLive: DateTime?

    /** Prediction of the Time to station in seconds */
    public var timeToStation: Int?

    /** Timestamp for when the prediction was inserted/modified (source column drives what objects are broadcast on each iteration) */
    public var timestamp: DateTime?

    /** Keep the original timestamp from MongoDb fo debugging purposes */
    public var timing: EvenPredictionTiming?

    /** Routing information or other descriptive text about the path of the vehicle towards the destination */
    public var towards: String?

    /** The actual vehicle in transit (for train modes, the leading car of the rolling set) */
    public var vehicleId: String?

    public init(bearing: String? = nil, currentLocation: String? = nil, destinationName: String? = nil, destinationNaptanId: String? = nil, direction: String? = nil, expectedArrival: DateTime? = nil, id: String? = nil, lineId: String? = nil, lineName: String? = nil, modeName: String? = nil, naptanId: String? = nil, operationType: Int? = nil, platformName: String? = nil, stationName: String? = nil, timeToLive: DateTime? = nil, timeToStation: Int? = nil, timestamp: DateTime? = nil, timing: EvenPredictionTiming? = nil, towards: String? = nil, vehicleId: String? = nil) {
        self.bearing = bearing
        self.currentLocation = currentLocation
        self.destinationName = destinationName
        self.destinationNaptanId = destinationNaptanId
        self.direction = direction
        self.expectedArrival = expectedArrival
        self.id = id
        self.lineId = lineId
        self.lineName = lineName
        self.modeName = modeName
        self.naptanId = naptanId
        self.operationType = operationType
        self.platformName = platformName
        self.stationName = stationName
        self.timeToLive = timeToLive
        self.timeToStation = timeToStation
        self.timestamp = timestamp
        self.timing = timing
        self.towards = towards
        self.vehicleId = vehicleId
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        bearing = try container.decodeIfPresent("bearing")
        currentLocation = try container.decodeIfPresent("currentLocation")
        destinationName = try container.decodeIfPresent("destinationName")
        destinationNaptanId = try container.decodeIfPresent("destinationNaptanId")
        direction = try container.decodeIfPresent("direction")
        expectedArrival = try container.decodeIfPresent("expectedArrival")
        id = try container.decodeIfPresent("id")
        lineId = try container.decodeIfPresent("lineId")
        lineName = try container.decodeIfPresent("lineName")
        modeName = try container.decodeIfPresent("modeName")
        naptanId = try container.decodeIfPresent("naptanId")
        operationType = try container.decodeIfPresent("operationType")
        platformName = try container.decodeIfPresent("platformName")
        stationName = try container.decodeIfPresent("stationName")
        timeToLive = try container.decodeIfPresent("timeToLive")
        timeToStation = try container.decodeIfPresent("timeToStation")
        timestamp = try container.decodeIfPresent("timestamp")
        timing = try container.decodeIfPresent("timing")
        towards = try container.decodeIfPresent("towards")
        vehicleId = try container.decodeIfPresent("vehicleId")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(bearing, forKey: "bearing")
        try container.encodeIfPresent(currentLocation, forKey: "currentLocation")
        try container.encodeIfPresent(destinationName, forKey: "destinationName")
        try container.encodeIfPresent(destinationNaptanId, forKey: "destinationNaptanId")
        try container.encodeIfPresent(direction, forKey: "direction")
        try container.encodeIfPresent(expectedArrival, forKey: "expectedArrival")
        try container.encodeIfPresent(id, forKey: "id")
        try container.encodeIfPresent(lineId, forKey: "lineId")
        try container.encodeIfPresent(lineName, forKey: "lineName")
        try container.encodeIfPresent(modeName, forKey: "modeName")
        try container.encodeIfPresent(naptanId, forKey: "naptanId")
        try container.encodeIfPresent(operationType, forKey: "operationType")
        try container.encodeIfPresent(platformName, forKey: "platformName")
        try container.encodeIfPresent(stationName, forKey: "stationName")
        try container.encodeIfPresent(timeToLive, forKey: "timeToLive")
        try container.encodeIfPresent(timeToStation, forKey: "timeToStation")
        try container.encodeIfPresent(timestamp, forKey: "timestamp")
        try container.encodeIfPresent(timing, forKey: "timing")
        try container.encodeIfPresent(towards, forKey: "towards")
        try container.encodeIfPresent(vehicleId, forKey: "vehicleId")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? EvenPrediction else { return false }
      guard self.bearing == object.bearing else { return false }
      guard self.currentLocation == object.currentLocation else { return false }
      guard self.destinationName == object.destinationName else { return false }
      guard self.destinationNaptanId == object.destinationNaptanId else { return false }
      guard self.direction == object.direction else { return false }
      guard self.expectedArrival == object.expectedArrival else { return false }
      guard self.id == object.id else { return false }
      guard self.lineId == object.lineId else { return false }
      guard self.lineName == object.lineName else { return false }
      guard self.modeName == object.modeName else { return false }
      guard self.naptanId == object.naptanId else { return false }
      guard self.operationType == object.operationType else { return false }
      guard self.platformName == object.platformName else { return false }
      guard self.stationName == object.stationName else { return false }
      guard self.timeToLive == object.timeToLive else { return false }
      guard self.timeToStation == object.timeToStation else { return false }
      guard self.timestamp == object.timestamp else { return false }
      guard self.timing == object.timing else { return false }
      guard self.towards == object.towards else { return false }
      guard self.vehicleId == object.vehicleId else { return false }
      return true
    }

    public static func == (lhs: EvenPrediction, rhs: EvenPrediction) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
