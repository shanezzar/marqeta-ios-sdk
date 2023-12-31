//
// AccountConfigPaymentHolds.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains configurations for a payment hold. */

public struct AccountConfigPaymentHolds: Codable {

    /** Number of days to hold an ACH payment. */
    public var achHoldDays: Int?
    /** Number of days to hold a check payment. */
    public var checkHoldDays: Int?

    public init(achHoldDays: Int? = nil, checkHoldDays: Int? = nil) {
        self.achHoldDays = achHoldDays
        self.checkHoldDays = checkHoldDays
    }

    public enum CodingKeys: String, CodingKey { 
        case achHoldDays = "ach_hold_days"
        case checkHoldDays = "check_hold_days"
    }

}
