//
// DelinquencyStateResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains details of the delinquency state of an account. */

public struct DelinquencyStateResponse: Codable {

    /** Unique identifier of the credit account. */
    public var accountToken: String
    /** One or more delinquency buckets for an account. Each delinquency bucket represents a billing cycle during which the account was delinquent. */
    public var buckets: [DelinquencyBucketResponse]?
    /** Amount that is due for the current billing cycle. */
    public var currentDue: Decimal
    /** Date and time when the account was last made current on the Marqeta platform, in UTC.  If the account was never delinquent, this field returns the date and time the account was created on the Marqeta platform, in UTC.  If &#x60;is_delinquent&#x60; is &#x60;true&#x60;, a null value is returned. */
    public var dateAccountCurrent: Date?
    /** Date and time when the account last fell delinquent on the Marqeta platform, in UTC.  If &#x60;is_delinquent&#x60; is &#x60;false&#x60;, a null value is returned. */
    public var dateAccountDelinquent: Date?
    /** A value of &#x60;true&#x60; indicates that the account is currently delinquent. */
    public var isDelinquent: Bool
    /** Total number of days that the account is past due. */
    public var totalDaysPastDue: Int
    /** Total amount that is due for the current billing cycle; the sum of &#x60;total_past_due_amount&#x60; and &#x60;current_due_amount&#x60;. */
    public var totalDue: Decimal
    /** Total amount that is past due. */
    public var totalPastDue: Decimal

    public init(accountToken: String, buckets: [DelinquencyBucketResponse]? = nil, currentDue: Decimal, dateAccountCurrent: Date? = nil, dateAccountDelinquent: Date? = nil, isDelinquent: Bool, totalDaysPastDue: Int, totalDue: Decimal, totalPastDue: Decimal) {
        self.accountToken = accountToken
        self.buckets = buckets
        self.currentDue = currentDue
        self.dateAccountCurrent = dateAccountCurrent
        self.dateAccountDelinquent = dateAccountDelinquent
        self.isDelinquent = isDelinquent
        self.totalDaysPastDue = totalDaysPastDue
        self.totalDue = totalDue
        self.totalPastDue = totalPastDue
    }

    public enum CodingKeys: String, CodingKey { 
        case accountToken = "account_token"
        case buckets
        case currentDue = "current_due"
        case dateAccountCurrent = "date_account_current"
        case dateAccountDelinquent = "date_account_delinquent"
        case isDelinquent = "is_delinquent"
        case totalDaysPastDue = "total_days_past_due"
        case totalDue = "total_due"
        case totalPastDue = "total_past_due"
    }

}
