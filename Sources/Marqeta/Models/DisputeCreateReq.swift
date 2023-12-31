//
// DisputeCreateReq.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Information about a transaction dispute creation request. */

public struct DisputeCreateReq: Codable {

    /** Amount of the dispute. Max value is equal to the value of the original transaction. */
    public var amount: Decimal
    public var category: DisputeCategory
    /** Unique identifier of the journal entry (&#x60;authorization.clearing&#x60; type only) in dispute. */
    public var ledgerEntryToken: String
    /** Additional information on the dispute (for example, a reason for the dispute). */
    public var notes: String?
    /** Unique identifier of the dispute. */
    public var token: String?

    public init(amount: Decimal, category: DisputeCategory, ledgerEntryToken: String, notes: String? = nil, token: String? = nil) {
        self.amount = amount
        self.category = category
        self.ledgerEntryToken = ledgerEntryToken
        self.notes = notes
        self.token = token
    }

    public enum CodingKeys: String, CodingKey { 
        case amount
        case category
        case ledgerEntryToken = "ledger_entry_token"
        case notes
        case token
    }

}
