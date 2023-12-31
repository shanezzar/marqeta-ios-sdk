//
// PolicyAprTierReq.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Request details for the APR for a risk tier. */

public struct PolicyAprTierReq: Codable {

    /** The number of percentage points added to the prime rate, used to calculate a variable APR value. */
    public var marginRate: Decimal

    public init(marginRate: Decimal) {
        self.marginRate = marginRate
    }

    public enum CodingKeys: String, CodingKey { 
        case marginRate = "margin_rate"
    }

}
