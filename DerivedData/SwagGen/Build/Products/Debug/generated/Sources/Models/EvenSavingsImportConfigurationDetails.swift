//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class EvenSavingsImportConfigurationDetails: BirchModel, Decodable, AutoEquatable {

    public var accountOpenedTimestampProcessor: EvenAppliedTimestampProcessor

    public var accountFundedTimestampProcessor: EvenAppliedTimestampProcessor

    public var mobileApplicationInstalledTimestampProcessor: EvenAppliedTimestampProcessor

    public var mobileApplicationBankLinkedTimestampProcessor: EvenAppliedTimestampProcessor

    public var offerClickedTimestampProcessor: EvenAppliedTimestampProcessor

    public var offerClickedCountProcessor: EvenAppliedTimestampProcessor

    public var fundedAmountProcessor: EvenAppliedTimestampProcessor

    public init(accountOpenedTimestampProcessor: EvenAppliedTimestampProcessor, accountFundedTimestampProcessor: EvenAppliedTimestampProcessor, mobileApplicationInstalledTimestampProcessor: EvenAppliedTimestampProcessor, mobileApplicationBankLinkedTimestampProcessor: EvenAppliedTimestampProcessor, offerClickedTimestampProcessor: EvenAppliedTimestampProcessor, offerClickedCountProcessor: EvenAppliedTimestampProcessor, fundedAmountProcessor: EvenAppliedTimestampProcessor) {
        self.accountOpenedTimestampProcessor = accountOpenedTimestampProcessor
        self.accountFundedTimestampProcessor = accountFundedTimestampProcessor
        self.mobileApplicationInstalledTimestampProcessor = mobileApplicationInstalledTimestampProcessor
        self.mobileApplicationBankLinkedTimestampProcessor = mobileApplicationBankLinkedTimestampProcessor
        self.offerClickedTimestampProcessor = offerClickedTimestampProcessor
        self.offerClickedCountProcessor = offerClickedCountProcessor
        self.fundedAmountProcessor = fundedAmountProcessor
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        accountOpenedTimestampProcessor = try container.decode("accountOpenedTimestampProcessor")
        accountFundedTimestampProcessor = try container.decode("accountFundedTimestampProcessor")
        mobileApplicationInstalledTimestampProcessor = try container.decode("mobileApplicationInstalledTimestampProcessor")
        mobileApplicationBankLinkedTimestampProcessor = try container.decode("mobileApplicationBankLinkedTimestampProcessor")
        offerClickedTimestampProcessor = try container.decode("offerClickedTimestampProcessor")
        offerClickedCountProcessor = try container.decode("offerClickedCountProcessor")
        fundedAmountProcessor = try container.decode("fundedAmountProcessor")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(accountOpenedTimestampProcessor, forKey: "accountOpenedTimestampProcessor")
        try container.encode(accountFundedTimestampProcessor, forKey: "accountFundedTimestampProcessor")
        try container.encode(mobileApplicationInstalledTimestampProcessor, forKey: "mobileApplicationInstalledTimestampProcessor")
        try container.encode(mobileApplicationBankLinkedTimestampProcessor, forKey: "mobileApplicationBankLinkedTimestampProcessor")
        try container.encode(offerClickedTimestampProcessor, forKey: "offerClickedTimestampProcessor")
        try container.encode(offerClickedCountProcessor, forKey: "offerClickedCountProcessor")
        try container.encode(fundedAmountProcessor, forKey: "fundedAmountProcessor")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? EvenSavingsImportConfigurationDetails else { return false }
      guard self.accountOpenedTimestampProcessor == object.accountOpenedTimestampProcessor else { return false }
      guard self.accountFundedTimestampProcessor == object.accountFundedTimestampProcessor else { return false }
      guard self.mobileApplicationInstalledTimestampProcessor == object.mobileApplicationInstalledTimestampProcessor else { return false }
      guard self.mobileApplicationBankLinkedTimestampProcessor == object.mobileApplicationBankLinkedTimestampProcessor else { return false }
      guard self.offerClickedTimestampProcessor == object.offerClickedTimestampProcessor else { return false }
      guard self.offerClickedCountProcessor == object.offerClickedCountProcessor else { return false }
      guard self.fundedAmountProcessor == object.fundedAmountProcessor else { return false }
      return true
    }

    public static func == (lhs: EvenSavingsImportConfigurationDetails, rhs: EvenSavingsImportConfigurationDetails) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
