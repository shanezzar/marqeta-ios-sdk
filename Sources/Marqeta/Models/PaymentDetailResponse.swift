//
// PaymentDetailResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Response containing payment details with transition history */

public struct PaymentDetailResponse: Codable {

    public enum Method: String, Codable { 
        case ach = "ACH"
        case check = "CHECK"
        case debit = "DEBIT"
        case cash = "CASH"
    }
    /** Unique identifier of the credit account on which the payment is made. */
    public var accountToken: String
    /** Total amount of the payment. */
    public var amount: Decimal
    /** Date and time when the payment was created on Marqeta&#x27;s credit platform, in UTC. */
    public var createdTime: Date
    public var currencyCode: CurrencyCode
    /** Description of the payment. */
    public var _description: String
    /** After a payment completes, the number of days to hold the available credit on the account before increasing it. */
    public var holdDays: Int
    /** Date and time when the available credit hold is released. */
    public var holdEndTime: Date?
    /** Whether the available credit hold was manually released for this payment. */
    public var isManuallyReleased: Bool?
    /** Customer-defined additional information about the payment (for example, a check number). */
    public var metadata: String?
    /** Method of payment. */
    public var method: Method
    /** Whether the available credit is on hold for this payment. */
    public var onHold: Bool?
    /** Unique identifier of the payment schedule. */
    public var paymentScheduleToken: String?
    /** Unique identifier of the payment source. Required for ACH payments. */
    public var paymentSourceToken: String?
    public var refundDetails: RefundDetailsResponse?
    public var returnedDetails: ReturnedDetails?
    public var status: PaymentStatus
    /** Unique identifier of the payment.  If in the &#x60;detail_object&#x60;, unique identifier of the detail object. */
    public var token: String
    /** Contains one or more &#x60;transitions&#x60; objects, which contain information on a payment status transition. */
    public var transitions: [PaymentTransitionResponse]
    /** Date and time when the payment was last updated on Marqeta&#x27;s credit platform, in UTC. */
    public var updatedTime: Date

    public init(accountToken: String, amount: Decimal, createdTime: Date, currencyCode: CurrencyCode, _description: String, holdDays: Int, holdEndTime: Date? = nil, isManuallyReleased: Bool? = nil, metadata: String? = nil, method: Method, onHold: Bool? = nil, paymentScheduleToken: String? = nil, paymentSourceToken: String? = nil, refundDetails: RefundDetailsResponse? = nil, returnedDetails: ReturnedDetails? = nil, status: PaymentStatus, token: String, transitions: [PaymentTransitionResponse], updatedTime: Date) {
        self.accountToken = accountToken
        self.amount = amount
        self.createdTime = createdTime
        self.currencyCode = currencyCode
        self._description = _description
        self.holdDays = holdDays
        self.holdEndTime = holdEndTime
        self.isManuallyReleased = isManuallyReleased
        self.metadata = metadata
        self.method = method
        self.onHold = onHold
        self.paymentScheduleToken = paymentScheduleToken
        self.paymentSourceToken = paymentSourceToken
        self.refundDetails = refundDetails
        self.returnedDetails = returnedDetails
        self.status = status
        self.token = token
        self.transitions = transitions
        self.updatedTime = updatedTime
    }

    public enum CodingKeys: String, CodingKey { 
        case accountToken = "account_token"
        case amount
        case createdTime = "created_time"
        case currencyCode = "currency_code"
        case _description = "description"
        case holdDays = "hold_days"
        case holdEndTime = "hold_end_time"
        case isManuallyReleased = "is_manually_released"
        case metadata
        case method
        case onHold = "on_hold"
        case paymentScheduleToken = "payment_schedule_token"
        case paymentSourceToken = "payment_source_token"
        case refundDetails = "refund_details"
        case returnedDetails = "returned_details"
        case status
        case token
        case transitions
        case updatedTime = "updated_time"
    }

}
