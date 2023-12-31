//
// RealTimeFeeGroupCreateRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct RealTimeFeeGroupCreateRequest: Codable {

    /** Indicates whether the real-time fee group is active. */
    public var active: Bool?
    /** Unique identifiers of the fees in this real-time fee group. Send a &#x60;GET&#x60; request to &#x60;/fees&#x60; to retrieve fee resource tokens.  No two fees in the group can be applicable to the same transaction type (in other words, each fee must have a different value for its &#x60;real_time_assessment.transaction_type&#x60; field). */
    public var feeTokens: [String]?
    /** Descriptive name for the real-time fee group. */
    public var name: String
    /** Unique identifier of the real-time fee group.  If you do not include a token, the system will generate one automatically. This token is necessary for use in other API calls, so we recommend that rather than let the system generate one, you use a simple string that is easy to remember. This value cannot be updated. */
    public var token: String?

    public init(active: Bool? = nil, feeTokens: [String]? = nil, name: String, token: String? = nil) {
        self.active = active
        self.feeTokens = feeTokens
        self.name = name
        self.token = token
    }

    public enum CodingKeys: String, CodingKey { 
        case active
        case feeTokens = "fee_tokens"
        case name
        case token
    }

}
