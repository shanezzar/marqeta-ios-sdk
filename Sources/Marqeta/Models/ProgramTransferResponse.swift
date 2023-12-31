//
// ProgramTransferResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains information about a program transfer, which moves funds from an account holder&#x27;s GPA to a program funding source. */

public struct ProgramTransferResponse: Codable {

    /** Amount of program transfer. */
    public var amount: Decimal
    /** Unique identifier of the business account holder. Returned if &#x60;user_token&#x60; is not specified. */
    public var businessToken: String?
    /** Date and time when the program transfer object was created, in UTC. */
    public var createdTime: Date?
    /** Three-digit ISO 4217 currency code. */
    public var currencyCode: String
    /** Contains attributes that define characteristics of one or more fees. */
    public var fees: [FeeDetail]?
    public var jitFunding: JitFundingApi?
    /** Additional description of the program transfer. */
    public var memo: String?
    /** Custom-defined tags you create that are related to the program transfer. */
    public var tags: String?
    /** Unique identifier of the program transfer. */
    public var token: String?
    /** Unique identifier of the transaction. */
    public var transactionToken: String
    /** Unique identifier of the program transfer type. */
    public var typeToken: String
    /** Unique identifier of the user account holder. Returned if &#x60;business_token&#x60; is not specified. */
    public var userToken: String?

    public init(amount: Decimal, businessToken: String? = nil, createdTime: Date? = nil, currencyCode: String, fees: [FeeDetail]? = nil, jitFunding: JitFundingApi? = nil, memo: String? = nil, tags: String? = nil, token: String? = nil, transactionToken: String, typeToken: String, userToken: String? = nil) {
        self.amount = amount
        self.businessToken = businessToken
        self.createdTime = createdTime
        self.currencyCode = currencyCode
        self.fees = fees
        self.jitFunding = jitFunding
        self.memo = memo
        self.tags = tags
        self.token = token
        self.transactionToken = transactionToken
        self.typeToken = typeToken
        self.userToken = userToken
    }

    public enum CodingKeys: String, CodingKey { 
        case amount
        case businessToken = "business_token"
        case createdTime = "created_time"
        case currencyCode = "currency_code"
        case fees
        case jitFunding = "jit_funding"
        case memo
        case tags
        case token
        case transactionToken = "transaction_token"
        case typeToken = "type_token"
        case userToken = "user_token"
    }

}
