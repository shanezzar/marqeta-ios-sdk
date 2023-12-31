//
// StatementReward.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains information on statement rewards. */

public struct StatementReward: Codable {

    /** Date and time when the statement reward was created on Marqeta&#x27;s credit platform, in UTC. */
    public var createdTime: Date?
    /** Amount of rewards received in the current billing cycle. */
    public var currentBillingCycleReward: Decimal?
    /** Amount of rewards received in the previous billing cycle. */
    public var previousBillingCycleReward: Decimal?
    /** Unique identifier of the rewards for a specific statement. */
    public var token: String?

    public init(createdTime: Date? = nil, currentBillingCycleReward: Decimal? = nil, previousBillingCycleReward: Decimal? = nil, token: String? = nil) {
        self.createdTime = createdTime
        self.currentBillingCycleReward = currentBillingCycleReward
        self.previousBillingCycleReward = previousBillingCycleReward
        self.token = token
    }

    public enum CodingKeys: String, CodingKey { 
        case createdTime = "created_time"
        case currentBillingCycleReward = "current_billing_cycle_reward"
        case previousBillingCycleReward = "previous_billing_cycle_reward"
        case token
    }

}
