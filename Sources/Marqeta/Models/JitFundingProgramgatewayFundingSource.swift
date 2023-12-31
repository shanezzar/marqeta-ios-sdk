//
// JitFundingProgramgatewayFundingSource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct JitFundingProgramgatewayFundingSource: Codable {

    public enum RefundsDestination: String, Codable { 
        case gateway = "GATEWAY"
        case gpa = "GPA"
        case waterfall = "WATERFALL"
    }
    /** If set to &#x60;true&#x60;, this card product is always funded from this program gateway funding source. */
    public var alwaysFund: Bool?
    /** Specifies whether JIT Funding is enabled or disabled for the program gateway funding source. A value of &#x60;true&#x60; indicates that the program gateway funding source is enabled and will be debited when swipes occur. */
    public var enabled: Bool?
    /** Unique identifier of the already existing funding source. Required if JIT Funding is enabled. */
    public var fundingSourceToken: String?
    /** Specifies the return destination for refunds in the case of a transaction reversal. In most cases, you should set the value to &#x60;GATEWAY&#x60;, which returns funds to the program gateway funding source. Setting to &#x60;GPA&#x60; returns the funds to the user&#x27;s GPA, which creates a positive account balance and introduces the potential of a transaction being authorized without a JIT Funding request being sent to the gateway. */
    public var refundsDestination: RefundsDestination?

    public init(alwaysFund: Bool? = nil, enabled: Bool? = nil, fundingSourceToken: String? = nil, refundsDestination: RefundsDestination? = nil) {
        self.alwaysFund = alwaysFund
        self.enabled = enabled
        self.fundingSourceToken = fundingSourceToken
        self.refundsDestination = refundsDestination
    }

    public enum CodingKeys: String, CodingKey { 
        case alwaysFund = "always_fund"
        case enabled
        case fundingSourceToken = "funding_source_token"
        case refundsDestination = "refunds_destination"
    }

}
