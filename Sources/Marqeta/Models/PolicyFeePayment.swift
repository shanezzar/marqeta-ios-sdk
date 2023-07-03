//
// PolicyFeePayment.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains information on a specific fee in a fee policy. */

public struct PolicyFeePayment: Codable {

    public var defaultMethod: FeeMethod?
    /** Amount of the fee. */
    public var defaultValue: Decimal?

    public init(defaultMethod: FeeMethod? = nil, defaultValue: Decimal? = nil) {
        self.defaultMethod = defaultMethod
        self.defaultValue = defaultValue
    }

    public enum CodingKeys: String, CodingKey { 
        case defaultMethod = "default_method"
        case defaultValue = "default_value"
    }

}