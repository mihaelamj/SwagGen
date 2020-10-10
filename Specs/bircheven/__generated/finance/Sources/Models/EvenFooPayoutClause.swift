//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public enum EvenFooPayoutClause: Codable, Equatable {
    case costPerCompletedApplicationPayoutClause(EvenCostPerCompletedApplicationPayoutClause)
    case costPerCompletedApplicationByCreditRatingPayoutClause(EvenCostPerCompletedApplicationByCreditRatingPayoutClause)
    case costPerCompletedApplicationBySubIdPayoutClause(EvenCostPerCompletedApplicationBySubIdPayoutClause)
    case costPerLeadPayoutClause(EvenCostPerLeadPayoutClause)
    case costPerLeadByCreditRatingPayoutClause(EvenCostPerLeadByCreditRatingPayoutClause)
    case costPerLeadBySubIdPayoutClause(EvenCostPerLeadBySubIdPayoutClause)
    case revenueShareCreditCardPayoutClause(EvenRevenueShareCreditCardPayoutClause)
    case revenueShareInsurancePayoutClause(EvenRevenueShareInsurancePayoutClause)
    case revenueShareLoanPayoutClause(EvenRevenueShareLoanPayoutClause)
    case revenueShareMortgagePayoutClause(EvenRevenueShareMortgagePayoutClause)
    case revenueShareOtherPayoutClause(EvenRevenueShareOtherPayoutClause)
    case revenueShareSavingsPayoutClause(EvenRevenueShareSavingsPayoutClause)
    case undecodable

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)
        let discriminator: String = try container.decode("key")
        switch discriminator {
        case "CostPerCompletedApplicationByCreditRatingPayoutClause":
            self = .costPerCompletedApplicationByCreditRatingPayoutClause(try EvenCostPerCompletedApplicationByCreditRatingPayoutClause(from: decoder))
        case "CostPerCompletedApplicationBySubIdPayoutClause":
            self = .costPerCompletedApplicationBySubIdPayoutClause(try EvenCostPerCompletedApplicationBySubIdPayoutClause(from: decoder))
        case "CostPerCompletedApplicationPayoutClause":
            self = .costPerCompletedApplicationPayoutClause(try EvenCostPerCompletedApplicationPayoutClause(from: decoder))
        case "CostPerLeadByCreditRatingPayoutClause":
            self = .costPerLeadByCreditRatingPayoutClause(try EvenCostPerLeadByCreditRatingPayoutClause(from: decoder))
        case "CostPerLeadBySubIdPayoutClause":
            self = .costPerLeadBySubIdPayoutClause(try EvenCostPerLeadBySubIdPayoutClause(from: decoder))
        case "CostPerLeadPayoutClause":
            self = .costPerLeadPayoutClause(try EvenCostPerLeadPayoutClause(from: decoder))
        case "RevenueShareCreditCardPayoutClause":
            self = .revenueShareCreditCardPayoutClause(try EvenRevenueShareCreditCardPayoutClause(from: decoder))
        case "RevenueShareInsurancePayoutClause":
            self = .revenueShareInsurancePayoutClause(try EvenRevenueShareInsurancePayoutClause(from: decoder))
        case "RevenueShareLoanPayoutClause":
            self = .revenueShareLoanPayoutClause(try EvenRevenueShareLoanPayoutClause(from: decoder))
        case "RevenueShareMortgagePayoutClause":
            self = .revenueShareMortgagePayoutClause(try EvenRevenueShareMortgagePayoutClause(from: decoder))
        case "RevenueShareOtherPayoutClause":
            self = .revenueShareOtherPayoutClause(try EvenRevenueShareOtherPayoutClause(from: decoder))
        case "RevenueShareSavingsPayoutClause":
            self = .revenueShareSavingsPayoutClause(try EvenRevenueShareSavingsPayoutClause(from: decoder))
        case "cost_per_completed_application":
            self = .costPerCompletedApplicationPayoutClause(try EvenCostPerCompletedApplicationPayoutClause(from: decoder))
        case "cost_per_completed_application_by_credit_rating":
            self = .costPerCompletedApplicationByCreditRatingPayoutClause(try EvenCostPerCompletedApplicationByCreditRatingPayoutClause(from: decoder))
        case "cost_per_completed_application_by_sub_id":
            self = .costPerCompletedApplicationBySubIdPayoutClause(try EvenCostPerCompletedApplicationBySubIdPayoutClause(from: decoder))
        case "cost_per_lead":
            self = .costPerLeadPayoutClause(try EvenCostPerLeadPayoutClause(from: decoder))
        case "cost_per_lead_by_credit_rating":
            self = .costPerLeadByCreditRatingPayoutClause(try EvenCostPerLeadByCreditRatingPayoutClause(from: decoder))
        case "cost_per_lead_by_sub_id":
            self = .costPerLeadBySubIdPayoutClause(try EvenCostPerLeadBySubIdPayoutClause(from: decoder))
        case "revenue_share_credit_card":
            self = .revenueShareCreditCardPayoutClause(try EvenRevenueShareCreditCardPayoutClause(from: decoder))
        case "revenue_share_insurance":
            self = .revenueShareInsurancePayoutClause(try EvenRevenueShareInsurancePayoutClause(from: decoder))
        case "revenue_share_loan":
            self = .revenueShareLoanPayoutClause(try EvenRevenueShareLoanPayoutClause(from: decoder))
        case "revenue_share_mortgage":
            self = .revenueShareMortgagePayoutClause(try EvenRevenueShareMortgagePayoutClause(from: decoder))
        case "revenue_share_other":
            self = .revenueShareOtherPayoutClause(try EvenRevenueShareOtherPayoutClause(from: decoder))
        case "revenue_share_savings":
            self = .revenueShareSavingsPayoutClause(try EvenRevenueShareSavingsPayoutClause(from: decoder))
        default:
            self = .undecodable
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .costPerCompletedApplicationPayoutClause(let content):
            try container.encode(content)
        case .costPerCompletedApplicationByCreditRatingPayoutClause(let content):
            try container.encode(content)
        case .costPerCompletedApplicationBySubIdPayoutClause(let content):
            try container.encode(content)
        case .costPerLeadPayoutClause(let content):
            try container.encode(content)
        case .costPerLeadByCreditRatingPayoutClause(let content):
            try container.encode(content)
        case .costPerLeadBySubIdPayoutClause(let content):
            try container.encode(content)
        case .revenueShareCreditCardPayoutClause(let content):
            try container.encode(content)
        case .revenueShareInsurancePayoutClause(let content):
            try container.encode(content)
        case .revenueShareLoanPayoutClause(let content):
            try container.encode(content)
        case .revenueShareMortgagePayoutClause(let content):
            try container.encode(content)
        case .revenueShareOtherPayoutClause(let content):
            try container.encode(content)
        case .revenueShareSavingsPayoutClause(let content):
            try container.encode(content)
        case .undecodable:
            try container.encode("undecodable")
        }
    }
}
