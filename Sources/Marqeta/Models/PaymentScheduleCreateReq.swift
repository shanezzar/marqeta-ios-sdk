//
// PaymentScheduleCreateReq.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Information to create a payment schedule. */

public struct PaymentScheduleCreateReq: Codable {

    public enum PaymentDay: String, Codable { 
        case paymentDueDay = "PAYMENT_DUE_DAY"
    }
    /** Amount of the payment.  Required if &#x60;amount_category&#x60; is &#x60;FIXED&#x60;. */
    public var amount: Decimal?
    public var amountCategory: PaymentScheduleAmountCategory
    public var currencyCode: CurrencyCode
    /** Description of the payment schedule. */
    public var _description: String?
    public var frequency: PaymentScheduleFrequency
    /** The date to make a one-time payment.  Required if frequency is &#x60;ONCE&#x60;. */
    public var nextPaymentImpactDate: Date?
    /** Day on which monthly payments are made.  Required if &#x60;frequency&#x60; is &#x60;MONTHLY&#x60;. */
    public var paymentDay: PaymentDay?
    /** Unique identifier of the payment source. */
    public var paymentSourceToken: String
    /** Unique identifier of the payment schedule. */
    public var token: String?

    public init(amount: Decimal? = nil, amountCategory: PaymentScheduleAmountCategory, currencyCode: CurrencyCode, _description: String? = nil, frequency: PaymentScheduleFrequency, nextPaymentImpactDate: Date? = nil, paymentDay: PaymentDay? = nil, paymentSourceToken: String, token: String? = nil) {
        self.amount = amount
        self.amountCategory = amountCategory
        self.currencyCode = currencyCode
        self._description = _description
        self.frequency = frequency
        self.nextPaymentImpactDate = nextPaymentImpactDate
        self.paymentDay = paymentDay
        self.paymentSourceToken = paymentSourceToken
        self.token = token
    }

    public enum CodingKeys: String, CodingKey { 
        case amount
        case amountCategory = "amount_category"
        case currencyCode = "currency_code"
        case _description = "description"
        case frequency
        case nextPaymentImpactDate = "next_payment_impact_date"
        case paymentDay = "payment_day"
        case paymentSourceToken = "payment_source_token"
        case token
    }

}
