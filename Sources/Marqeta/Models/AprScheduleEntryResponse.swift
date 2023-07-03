//
// AprScheduleEntryResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct AprScheduleEntryResponse: Codable {

    public enum ModelType: String, Codable { 
        case fixed = "FIXED"
        case variable = "VARIABLE"
    }
    /** Whether the APR is ignored for the current billing cycle and applied on the next. */
    public var applyNextCycle: Bool?
    /** Date and time when the APR goes into effect, in UTC. */
    public var effectiveDate: Date?
    /** The number of percentage points added to the prime rate, used to calculate a variable value.  Used for variable values only. */
    public var margin: Float?
    /** Indicates whether the APR value is fixed or variable. */
    public var type: ModelType?
    /** Percentage value of the APR.  If the APR type is &#x60;FIXED&#x60;, this is the value of the fixed rate. If the APR type is &#x60;VARIABLE&#x60;, the value is calculated by adding the margin to the prime rate that was stored on Marqeta&#x27;s credit platform when your credit program was created.  When backdating an APR, this value cannot be greater than the value of the effective APR on the backdated date. */
    public var value: Decimal

    public init(applyNextCycle: Bool? = nil, effectiveDate: Date? = nil, margin: Float? = nil, type: ModelType? = nil, value: Decimal) {
        self.applyNextCycle = applyNextCycle
        self.effectiveDate = effectiveDate
        self.margin = margin
        self.type = type
        self.value = value
    }

    public enum CodingKeys: String, CodingKey { 
        case applyNextCycle = "apply_next_cycle"
        case effectiveDate = "effective_date"
        case margin
        case type
        case value
    }

}
