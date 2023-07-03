//
// AccountConfigMinPayment.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains configurations for a minimum payment override on a credit account, which overrides the minimum payment configurations on the associated credit product. */

public struct AccountConfigMinPayment: Codable {

    /** Whether the minimum payment override is currently active. */
    public var active: Bool?
    /** Flat amount of the minimum payment override. */
    public var minPaymentFlatAmount: Decimal?
    /** Percentage of the total statement balance used to calculate the minimum payment override amount. */
    public var minPaymentPercentage: Decimal?
    /** Date and time when the minimum payment override ends, in UTC. */
    public var overrideEndTime: Date?
    /** Date and time when the minimum payment override starts, in UTC. */
    public var overrideStartTime: Date?

    public init(active: Bool? = nil, minPaymentFlatAmount: Decimal? = nil, minPaymentPercentage: Decimal? = nil, overrideEndTime: Date? = nil, overrideStartTime: Date? = nil) {
        self.active = active
        self.minPaymentFlatAmount = minPaymentFlatAmount
        self.minPaymentPercentage = minPaymentPercentage
        self.overrideEndTime = overrideEndTime
        self.overrideStartTime = overrideStartTime
    }

    public enum CodingKeys: String, CodingKey { 
        case active
        case minPaymentFlatAmount = "min_payment_flat_amount"
        case minPaymentPercentage = "min_payment_percentage"
        case overrideEndTime = "override_end_time"
        case overrideStartTime = "override_start_time"
    }

}