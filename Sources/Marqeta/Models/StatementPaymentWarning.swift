//
// StatementPaymentWarning.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains information on statement payment warnings. */

public struct StatementPaymentWarning: Codable {

    public enum Disclosure: String, Codable { 
        case negativeOrNoAmortization = "NEGATIVE_OR_NO_AMORTIZATION"
        case noLifetimeRepayment = "NO_LIFETIME_REPAYMENT"
    }
    public enum PeriodType: String, Codable { 
        case month = "MONTH"
        case year = "YEAR"
    }
    public enum ModelType: String, Codable { 
        case minPayment = "MIN_PAYMENT"
        case _3yEAR = "3_YEAR"
    }
    /** Statement disclosure in the case of negative or no amortization, or no lifetime repayment for the minimum payment warning type.  * &#x60;NEGATIVE_OR_NO_AMORTIZATION&#x60; - Occurs when the interest amount is higher than the minimum payment; results in the outstanding balance remaining in perpetuity. * &#x60;NO_LIFETIME_REPAYMENT&#x60; - Occurs when the interest amount is just below the minimum payment; results in the outstanding balance taking longer than a lifetime to pay off. */
    public var disclosure: Disclosure?
    /** For the minimum payment warning type, this value represents the total amount of interest to pay off the statement balance if only making the minimum payment each month.  For the 3 Year warning type, this value represents the total amount of interest if paying off the statement balance in three years. */
    public var interestPaid: Decimal?
    /** For the minimum payment warning type, this value is 0.  For the 3 Year warning type, this value represents the fixed monthly payment amount required to pay off the statement balance in three years. */
    public var monthlyPayment: Decimal?
    /** For the minimum payment warning type, this value represents the number of periods required to pay off the statement balance.  For the 3 Year warning type, this value is 36 (months). */
    public var payOffPeriod: Int?
    /** Time unit of the pay off period. */
    public var periodType: PeriodType?
    /** For the minimum payment warning type, this value represents the total amount of principal and interest to pay off the statement balance if only making the minimum payment each month.  For the 3 Year warning type, this value represents the total amount of principal and interest if paying off the statement balance in three years. */
    public var totalPaid: Decimal?
    /** Type of statement warning.  * &#x60;MIN_PAYMENT&#x60; - Displays the total estimated payment amount and how long it would take to pay off the statement balance if only making minimum payments. * &#x60;3_YEAR&#x60; - Displays the monthly payment amount and total estimated payment amount if paying off the statement balance in three years. */
    public var type: ModelType?

    public init(disclosure: Disclosure? = nil, interestPaid: Decimal? = nil, monthlyPayment: Decimal? = nil, payOffPeriod: Int? = nil, periodType: PeriodType? = nil, totalPaid: Decimal? = nil, type: ModelType? = nil) {
        self.disclosure = disclosure
        self.interestPaid = interestPaid
        self.monthlyPayment = monthlyPayment
        self.payOffPeriod = payOffPeriod
        self.periodType = periodType
        self.totalPaid = totalPaid
        self.type = type
    }

    public enum CodingKeys: String, CodingKey { 
        case disclosure
        case interestPaid = "interest_paid"
        case monthlyPayment = "monthly_payment"
        case payOffPeriod = "pay_off_period"
        case periodType = "period_type"
        case totalPaid = "total_paid"
        case type
    }

}