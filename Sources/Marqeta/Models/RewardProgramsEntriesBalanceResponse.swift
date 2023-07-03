//
// RewardProgramsEntriesBalanceResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct RewardProgramsEntriesBalanceResponse: Codable {

    /** Date and time the reward entries balance was created on the Marqeta platform, in UTC. */
    public var createdDate: Date?
    /** The ending date (or date-time) of a date range from which to return accrued rewards, in UTC. Reward entries created on or before this date count toward the total reward balance. */
    public var endDate: Date
    /** Unique identifier of the reward program for which to retrieve the reward entries balance. */
    public var rewardProgramToken: String
    /** The starting date (or date-time) of a date range from which to return accrued rewards, in UTC. Reward entries created on or after this date count toward the total reward balance. */
    public var startDate: Date
    /** The total balance of rewards accrued within a date range. */
    public var totalRewardBalance: Decimal

    public init(createdDate: Date? = nil, endDate: Date, rewardProgramToken: String, startDate: Date, totalRewardBalance: Decimal) {
        self.createdDate = createdDate
        self.endDate = endDate
        self.rewardProgramToken = rewardProgramToken
        self.startDate = startDate
        self.totalRewardBalance = totalRewardBalance
    }

    public enum CodingKeys: String, CodingKey { 
        case createdDate = "created_date"
        case endDate = "end_date"
        case rewardProgramToken = "reward_program_token"
        case startDate = "start_date"
        case totalRewardBalance = "total_reward_balance"
    }

}