//
// BankTransferTransitionResponseModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct BankTransferTransitionResponseModel: Codable {

    public enum Channel: String, Codable { 
        case api = "API"
        case system = "SYSTEM"
        case admin = "ADMIN"
    }
    public enum Status: String, Codable { 
        case pending = "PENDING"
        case processing = "PROCESSING"
        case submitted = "SUBMITTED"
        case returned = "RETURNED"
        case completed = "COMPLETED"
        case cancelled = "CANCELLED"
        case reversalPend = "REVERSAL_PEND"
        case reversalComp = "REVERSAL_COMP"
    }
    public var amount: Decimal?
    /** Unique identifier of the ACH transfer being transitioned. */
    public var bankTransferToken: String
    /** Field required in older versions of the API, but no longer used. */
    public var batchNumber: String?
    /** Mechanism by which the transaction was initiated. */
    public var channel: Channel
    /** Date and time when the ACH transfer was created, in UTC. */
    public var createdTime: Date?
    public var effectiveDate: Date?
    /** Date and time when the ACH transfer was last modified. */
    public var lastModifiedTime: Date?
    /** Not currently used. */
    public var programReserveToken: String?
    /** Explanation of why the transition is being made, for example \&quot;Created by POST call on API\&quot;. Returned if this information was supplied when the transition was originally created. */
    public var reason: String?
    /** Standardized ACH return code for a returned transaction, generally sent by the RDFI.  Transactions can be returned for any of the reasons listed in the &lt;&lt;/developer-guides/ach-origination#_nacha_ach_return_codes, NACHA ACH return codes table&gt;&gt; of the ACH Origination Guide. */
    public var returnCode: String?
    /** Human-readable description correlating to the &#x60;return_code&#x60;, such as &#x60;Insufficient funds&#x60;, if a return code is present in the response. */
    public var returnReason: String?
    public var reversalAfter45Days: Bool?
    /** New state of the ACH transfer. */
    public var status: Status
    /** Unique identifier of the bank transfer transition. */
    public var token: String?
    /** Transaction token for JIT-related ledger entries for the ACH transfer. */
    public var transactionJitToken: String?
    /** Transaction token for *non*-JIT-related ledger entries for the ACH transfer. */
    public var transactionToken: String?

    public init(amount: Decimal? = nil, bankTransferToken: String, batchNumber: String? = nil, channel: Channel, createdTime: Date? = nil, effectiveDate: Date? = nil, lastModifiedTime: Date? = nil, programReserveToken: String? = nil, reason: String? = nil, returnCode: String? = nil, returnReason: String? = nil, reversalAfter45Days: Bool? = nil, status: Status, token: String? = nil, transactionJitToken: String? = nil, transactionToken: String? = nil) {
        self.amount = amount
        self.bankTransferToken = bankTransferToken
        self.batchNumber = batchNumber
        self.channel = channel
        self.createdTime = createdTime
        self.effectiveDate = effectiveDate
        self.lastModifiedTime = lastModifiedTime
        self.programReserveToken = programReserveToken
        self.reason = reason
        self.returnCode = returnCode
        self.returnReason = returnReason
        self.reversalAfter45Days = reversalAfter45Days
        self.status = status
        self.token = token
        self.transactionJitToken = transactionJitToken
        self.transactionToken = transactionToken
    }

    public enum CodingKeys: String, CodingKey { 
        case amount
        case bankTransferToken = "bank_transfer_token"
        case batchNumber = "batch_number"
        case channel
        case createdTime = "created_time"
        case effectiveDate = "effective_date"
        case lastModifiedTime = "last_modified_time"
        case programReserveToken = "program_reserve_token"
        case reason
        case returnCode = "return_code"
        case returnReason = "return_reason"
        case reversalAfter45Days = "reversal_after_45_days"
        case status
        case token
        case transactionJitToken = "transaction_jit_token"
        case transactionToken = "transaction_token"
    }

}
