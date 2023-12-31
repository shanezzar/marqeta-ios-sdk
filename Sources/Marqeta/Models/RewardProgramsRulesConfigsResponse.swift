//
// RewardProgramsRulesConfigsResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct RewardProgramsRulesConfigsResponse: Codable {

    public var accrualType: AccrualType
    /** Date and time when the reward rules config was created on the Marqeta platform, in UTC. */
    public var createdTime: Date
    /** Minimum amount that the balance for a billing cycle can be to apply the specified reward percentage. For example, if the &#x60;greater_than&#x60; value is &#x60;500&#x60;, the account holder earns _x_% of the account balance if they spend over $500 during a billing cycle. */
    public var greaterThan: Decimal?
    /** A value of &#x60;true&#x60; indicates that the reward rules config is active. */
    public var isActive: Bool
    /** Maximum amount that the balance for a billing cycle can be to apply the specified reward percentage. For example, if the &#x60;less_than&#x60; value is &#x60;1500&#x60;, the account holder earns _x_% of the account balance if they spend under $1500 during a billing cycle. */
    public var lessThan: Decimal?
    /** The reward percentage applied when the balance for a billing cycle is within the range specified in the &#x60;less_than&#x60; and &#x60;greater_than&#x60; fields. For example, if the &#x60;percentage&#x60; is &#x60;1&#x60;, the account holder earns 1% of the account balance if they spend between the &#x60;less_than&#x60; and &#x60;greater_than&#x60; amounts during a billing cycle. */
    public var percentage: Int
    /** Unique identifier of the reward program on which the rules config is applied. */
    public var rewardProgramToken: String
    /** Unique identifier of the reward rules config. */
    public var token: String
    /** Date and time when the reward rules config was last updated on the Marqeta platform, in UTC. */
    public var updatedTime: Date

    public init(accrualType: AccrualType, createdTime: Date, greaterThan: Decimal? = nil, isActive: Bool, lessThan: Decimal? = nil, percentage: Int, rewardProgramToken: String, token: String, updatedTime: Date) {
        self.accrualType = accrualType
        self.createdTime = createdTime
        self.greaterThan = greaterThan
        self.isActive = isActive
        self.lessThan = lessThan
        self.percentage = percentage
        self.rewardProgramToken = rewardProgramToken
        self.token = token
        self.updatedTime = updatedTime
    }

    public enum CodingKeys: String, CodingKey { 
        case accrualType = "accrual_type"
        case createdTime = "created_time"
        case greaterThan = "greater_than"
        case isActive = "is_active"
        case lessThan = "less_than"
        case percentage
        case rewardProgramToken = "reward_program_token"
        case token
        case updatedTime = "updated_time"
    }

}
