//
// InterestCalculation.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains the configurations for interest calculation. */

public struct InterestCalculation: Codable {

    public enum DayCount: String, Codable { 
        case actual = "ACTUAL"
    }
    public enum ExcludeTranTypes: String, Codable { 
        case latePaymentFee = "LATE_PAYMENT_FEE"
        case annualFee = "ANNUAL_FEE"
        case monthlyFee = "MONTHLY_FEE"
        case cashBackStatementCredit = "CASH_BACK_STATEMENT_CREDIT"
        case returnedPaymentFee = "RETURNED_PAYMENT_FEE"
    }
    public enum GraceDaysApplication: String, Codable { 
        case nextCycleDate = "NEXT_CYCLE_DATE"
    }
    public enum InterestApplication: String, Codable { 
        case principal = "PRINCIPAL"
        case fees = "FEES"
        case interest = "INTEREST"
    }
    public enum Method: String, Codable { 
        case avgDailyBalanceWithNewTransactions = "AVG_DAILY_BALANCE_WITH_NEW_TRANSACTIONS"
    }
    public var applicationOfCredits: ApplicationOfCredits
    /** Day-count convention. */
    public var dayCount: DayCount
    /** One or more transactions that are excluded from current billing period&#x27;s interest charge, but included in next. */
    public var excludeTranTypes: [ExcludeTranTypes]?
    /** Determines the last day of grace period based on which interest charges are calculated. */
    public var graceDaysApplication: GraceDaysApplication
    /** One or more balance types on which interest is applied. */
    public var interestApplication: [InterestApplication]
    public var interestOnGraceReactivation: InterestOnGraceReactivationEnum
    /** Method of interest calculation. */
    public var method: Method
    /** When interest is applied, this value determines the minimum amount of interest that can be charged. */
    public var minimumInterest: Decimal

    public init(applicationOfCredits: ApplicationOfCredits, dayCount: DayCount, excludeTranTypes: [ExcludeTranTypes]? = nil, graceDaysApplication: GraceDaysApplication, interestApplication: [InterestApplication], interestOnGraceReactivation: InterestOnGraceReactivationEnum, method: Method, minimumInterest: Decimal) {
        self.applicationOfCredits = applicationOfCredits
        self.dayCount = dayCount
        self.excludeTranTypes = excludeTranTypes
        self.graceDaysApplication = graceDaysApplication
        self.interestApplication = interestApplication
        self.interestOnGraceReactivation = interestOnGraceReactivation
        self.method = method
        self.minimumInterest = minimumInterest
    }

    public enum CodingKeys: String, CodingKey { 
        case applicationOfCredits = "application_of_credits"
        case dayCount = "day_count"
        case excludeTranTypes = "exclude_tran_types"
        case graceDaysApplication = "grace_days_application"
        case interestApplication = "interest_application"
        case interestOnGraceReactivation = "interest_on_grace_reactivation"
        case method
        case minimumInterest = "minimum_interest"
    }

}
