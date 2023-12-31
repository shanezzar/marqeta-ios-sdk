//
// DisputeTransitionResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Information about a transaction dispute update request. */

public struct DisputeTransitionResponse: Codable {

    /** Unique identifier of the credit account on which the dispute was updated. */
    public var accountToken: String
    /** Amount of the updated dispute, based on the resolution. */
    public var amount: Decimal
    /** Date and time when the dispute update was created on Marqeta&#x27;s credit platform, in UTC. */
    public var createdTime: Date
    /** Additional information on the dispute update (for example, a reason for the dispute update). */
    public var notes: String?
    public var status: DisputeStatus
    /** Unique identifier of the dispute update. */
    public var token: String

    public init(accountToken: String, amount: Decimal, createdTime: Date, notes: String? = nil, status: DisputeStatus, token: String) {
        self.accountToken = accountToken
        self.amount = amount
        self.createdTime = createdTime
        self.notes = notes
        self.status = status
        self.token = token
    }

    public enum CodingKeys: String, CodingKey { 
        case accountToken = "account_token"
        case amount
        case createdTime = "created_time"
        case notes
        case status
        case token
    }

}
