//
// ProgramReserveTransactionResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ProgramReserveTransactionResponse: Codable {

    public enum State: String, Codable { 
        case pending = "PENDING"
        case complete = "COMPLETE"
    }
    public enum ModelType: String, Codable { 
        case credit = "CREDIT"
        case debit = "DEBIT"
        case pendingCredit = "PENDING_CREDIT"
        case pendingDebit = "PENDING_DEBIT"
    }
    /** Amount of the program reserve account credit or debit. Sometimes referred to as a _program funding account_. */
    public var amount: Decimal?
    /** Date and time when the resource was created, in UTC. */
    public var createdTime: Date
    /** Three-digit ISO 4217 currency code. */
    public var currencyCode: String?
    public var isCollateral: Bool?
    /** The date and time when the resource was last modified, in UTC. */
    public var lastModifiedTime: Date
    /** Memo or note describing the transaction. */
    public var memo: String?
    /** Transaction state. */
    public var state: State?
    /** Comma-delimited list of tags describing the transaction. */
    public var tags: String?
    /** The unique identifier of the transaction response. */
    public var token: String?
    /** Unique identifier of the transaction. */
    public var transactionToken: String?
    /** Transaction type. */
    public var type: ModelType?

    public init(amount: Decimal? = nil, createdTime: Date, currencyCode: String? = nil, isCollateral: Bool? = nil, lastModifiedTime: Date, memo: String? = nil, state: State? = nil, tags: String? = nil, token: String? = nil, transactionToken: String? = nil, type: ModelType? = nil) {
        self.amount = amount
        self.createdTime = createdTime
        self.currencyCode = currencyCode
        self.isCollateral = isCollateral
        self.lastModifiedTime = lastModifiedTime
        self.memo = memo
        self.state = state
        self.tags = tags
        self.token = token
        self.transactionToken = transactionToken
        self.type = type
    }

    public enum CodingKeys: String, CodingKey { 
        case amount
        case createdTime = "created_time"
        case currencyCode = "currency_code"
        case isCollateral = "is_collateral"
        case lastModifiedTime = "last_modified_time"
        case memo
        case state
        case tags
        case token
        case transactionToken = "transaction_token"
        case type
    }

}