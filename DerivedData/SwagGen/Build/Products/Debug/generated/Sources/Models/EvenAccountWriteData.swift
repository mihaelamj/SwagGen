//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class EvenAccountWriteData: BirchModel, Decodable, AutoEquatable {

    public var name: String

    public var accountOwners: AccountOwners?

    public var address1: String?

    public var address2: String?

    public var address3: String?

    public var billingName: String?

    public var city: String?

    public var country: String?

    public var email: String?

    public var phoneNumber: String?

    public var receivableBillingName: String?

    public var state: String?

    public var zipcode: String?

    public class AccountOwners: BirchModel, Decodable, AutoEquatable {

        public var supplyManager: String

        public var demandManager: String

        public var supplyYieldManager: String

        public var demandYieldManager: String

        public init(supplyManager: String, demandManager: String, supplyYieldManager: String, demandYieldManager: String) {
            self.supplyManager = supplyManager
            self.demandManager = demandManager
            self.supplyYieldManager = supplyYieldManager
            self.demandYieldManager = demandYieldManager
        }

        public required init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            supplyManager = try container.decode("supplyManager")
            demandManager = try container.decode("demandManager")
            supplyYieldManager = try container.decode("supplyYieldManager")
            demandYieldManager = try container.decode("demandYieldManager")
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encode(supplyManager, forKey: "supplyManager")
            try container.encode(demandManager, forKey: "demandManager")
            try container.encode(supplyYieldManager, forKey: "supplyYieldManager")
            try container.encode(demandYieldManager, forKey: "demandYieldManager")
        }

        public func isEqual(to object: Any?) -> Bool {
          guard let object = object as? AccountOwners else { return false }
          guard self.supplyManager == object.supplyManager else { return false }
          guard self.demandManager == object.demandManager else { return false }
          guard self.supplyYieldManager == object.supplyYieldManager else { return false }
          guard self.demandYieldManager == object.demandYieldManager else { return false }
          return true
        }

        public static func == (lhs: AccountOwners, rhs: AccountOwners) -> Bool {
            return lhs.isEqual(to: rhs)
        }
    }

    public init(name: String, accountOwners: AccountOwners? = nil, address1: String? = nil, address2: String? = nil, address3: String? = nil, billingName: String? = nil, city: String? = nil, country: String? = nil, email: String? = nil, phoneNumber: String? = nil, receivableBillingName: String? = nil, state: String? = nil, zipcode: String? = nil) {
        self.name = name
        self.accountOwners = accountOwners
        self.address1 = address1
        self.address2 = address2
        self.address3 = address3
        self.billingName = billingName
        self.city = city
        self.country = country
        self.email = email
        self.phoneNumber = phoneNumber
        self.receivableBillingName = receivableBillingName
        self.state = state
        self.zipcode = zipcode
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        name = try container.decode("name")
        accountOwners = try container.decodeIfPresent("accountOwners")
        address1 = try container.decodeIfPresent("address1")
        address2 = try container.decodeIfPresent("address2")
        address3 = try container.decodeIfPresent("address3")
        billingName = try container.decodeIfPresent("billingName")
        city = try container.decodeIfPresent("city")
        country = try container.decodeIfPresent("country")
        email = try container.decodeIfPresent("email")
        phoneNumber = try container.decodeIfPresent("phoneNumber")
        receivableBillingName = try container.decodeIfPresent("receivableBillingName")
        state = try container.decodeIfPresent("state")
        zipcode = try container.decodeIfPresent("zipcode")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(name, forKey: "name")
        try container.encodeIfPresent(accountOwners, forKey: "accountOwners")
        try container.encodeIfPresent(address1, forKey: "address1")
        try container.encodeIfPresent(address2, forKey: "address2")
        try container.encodeIfPresent(address3, forKey: "address3")
        try container.encodeIfPresent(billingName, forKey: "billingName")
        try container.encodeIfPresent(city, forKey: "city")
        try container.encodeIfPresent(country, forKey: "country")
        try container.encodeIfPresent(email, forKey: "email")
        try container.encodeIfPresent(phoneNumber, forKey: "phoneNumber")
        try container.encodeIfPresent(receivableBillingName, forKey: "receivableBillingName")
        try container.encodeIfPresent(state, forKey: "state")
        try container.encodeIfPresent(zipcode, forKey: "zipcode")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? EvenAccountWriteData else { return false }
      guard self.name == object.name else { return false }
      guard self.accountOwners == object.accountOwners else { return false }
      guard self.address1 == object.address1 else { return false }
      guard self.address2 == object.address2 else { return false }
      guard self.address3 == object.address3 else { return false }
      guard self.billingName == object.billingName else { return false }
      guard self.city == object.city else { return false }
      guard self.country == object.country else { return false }
      guard self.email == object.email else { return false }
      guard self.phoneNumber == object.phoneNumber else { return false }
      guard self.receivableBillingName == object.receivableBillingName else { return false }
      guard self.state == object.state else { return false }
      guard self.zipcode == object.zipcode else { return false }
      return true
    }

    public static func == (lhs: EvenAccountWriteData, rhs: EvenAccountWriteData) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}