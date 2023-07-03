//
// PaymentScheduleResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** A future one-time or recurring payment schedule. */

public struct PaymentScheduleResponse: Codable {

    public enum PaymentDay: String, Codable { 
        case paymentDueDay = "PAYMENT_DUE_DAY"
    }
    /** Unique identifier of the credit account on which the payment schedule is made. */
    public var accountToken: String
    /** Amount of the payment.  Returned if the &#x60;amount_category&#x60; is &#x60;FIXED&#x60;. */
    public var amount: Decimal?
    public var amountCategory: PaymentScheduleAmountCategory
    /** Date and time when the payment schedule was created on Marqeta&#x27;s credit platform, in UTC. */
    public var createdTime: Date?
    public var currencyCode: CurrencyCode
    /** Description of the payment schedule. */
    public var _description: String?
    public var frequency: PaymentScheduleFrequency
    /** The date to make a one-time payment.  Returned if &#x60;frequency&#x60; is &#x60;ONCE&#x60;. */
    public var nextPaymentImpactDate: Date?
    /** Day on which monthly payments are made.  Returned if the &#x60;frequency&#x60; is &#x60;MONTHLY&#x60;. */
    public var paymentDay: PaymentDay?
    /** Unique identifier of a payment source. */
    public var paymentSourceToken: String
    public var status: PaymentScheduleStatus
    /** Unique identifier of the payment schedule. */
    public var token: String
    /** Date and time when the payment schedule was last updated on Marqeta&#x27;s credit platform, in UTC. */
    public var updatedTime: Date?

    public init(accountToken: String, amount: Decimal? = nil, amountCategory: PaymentScheduleAmountCategory, createdTime: Date? = nil, currencyCode: CurrencyCode, _description: String? = nil, frequency: PaymentScheduleFrequency, nextPaymentImpactDate: Date? = nil, paymentDay: PaymentDay? = nil, paymentSourceToken: String, status: PaymentScheduleStatus, token: String, updatedTime: Date? = nil) {
        self.accountToken = accountToken
        self.amount = amount
        self.amountCategory = amountCategory
        self.createdTime = createdTime
        self.currencyCode = currencyCode
        self._description = _description
        self.frequency = frequency
        self.nextPaymentImpactDate = nextPaymentImpactDate
        self.paymentDay = paymentDay
        self.paymentSourceToken = paymentSourceToken
        self.status = status
        self.token = token
        self.updatedTime = updatedTime
    }

    public enum CodingKeys: String, CodingKey { 
        case accountToken = "account_token"
        case amount
        case amountCategory = "amount_category"
        case createdTime = "created_time"
        case currencyCode = "currency_code"
        case _description = "description"
        case frequency
        case nextPaymentImpactDate = "next_payment_impact_date"
        case paymentDay = "payment_day"
        case paymentSourceToken = "payment_source_token"
        case status
        case token
        case updatedTime = "updated_time"
    }

}