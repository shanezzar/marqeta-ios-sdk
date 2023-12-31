//
// FeeUpdateRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct FeeUpdateRequest: Codable {

    /** Indicates whether the fee is active. */
    public var active: Bool?
    /** Amount of the fee. */
    public var amount: Decimal?
    /** Three-digit ISO 4217 currency code. */
    public var currencyCode: String?
    /** Name of the fee request. */
    public var name: String?
    public var realTimeAssessment: RealTimeFeeAssessmentRequest?
    /** Descriptive metadata about the fee. */
    public var tags: String?

    public init(active: Bool? = nil, amount: Decimal? = nil, currencyCode: String? = nil, name: String? = nil, realTimeAssessment: RealTimeFeeAssessmentRequest? = nil, tags: String? = nil) {
        self.active = active
        self.amount = amount
        self.currencyCode = currencyCode
        self.name = name
        self.realTimeAssessment = realTimeAssessment
        self.tags = tags
    }

    public enum CodingKeys: String, CodingKey { 
        case active
        case amount
        case currencyCode = "currency_code"
        case name
        case realTimeAssessment = "real_time_assessment"
        case tags
    }

}
