//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** A type of financial product */
/** A type of financial product */
public enum EvenProductSubType: String, Codable, Equatable, CaseIterable {
    case creditCard = "credit_card"
    case securedCard = "secured_card"
    case personalLoan = "personal_loan"
    case studentLoanRefinance = "student_loan_refinance"
    case coApplicantLoan = "co_applicant_loan"
    case lineOfCredit = "line_of_credit"
    case purchase = "purchase"
    case refinance = "refinance"
    case savingsAccount = "savings_account"
    case moneyMarketAccount = "money_market_account"
    case certificateOfDeposit = "certificate_of_deposit"
    case individualRetirementAccount = "individual_retirement_account"
    case cashManagementAccount = "cash_management_account"
    case highInterestChecking = "high_interest_checking"
    case accidentalDeathBenefits = "accidental_death_benefits"
    case termLife = "term_life"
    case undecodable

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = EvenProductSubType(rawValue: rawValue) ?? .undecodable
    }
}
