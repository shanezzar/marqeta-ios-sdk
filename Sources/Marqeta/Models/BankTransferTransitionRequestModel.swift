//
// BankTransferTransitionRequestModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct BankTransferTransitionRequestModel: Codable {

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
    /** Token of the ACH transfer you want to transition. */
    public var bankTransferToken: String
    /** Field required in older versions of the API, but no longer used. */
    public var batchNumber: String?
    /** Mechanism by which the transaction was initiated. */
    public var channel: Channel
    public var effectiveDate: Date?
    /** Not currently used. */
    public var programReserveToken: String?
    /** Description of why the ACH transfer status was updated. */
    public var reason: String?
    /** Standardized ACH return code for a returned transaction, generally sent by the RDFI.  Transactions can be returned for any of the reasons listed in the &lt;&lt;/developer-guides/ach-origination#_nacha_ach_return_codes, NACHA ACH return codes table&gt;&gt; of the ACH Origination Guide. */
    public var returnCode: String?
    public var reversalAfter45Days: Bool?
    /** New state of the ACH transfer.  *NOTE:* In production environments, the only value to which you are allowed to transition an ACH transfer is &#x60;CANCELLED&#x60;. */
    public var status: Status
    /** Unique identifier of the bank transfer transition request. */
    public var token: String?

    public init(amount: Decimal? = nil, bankTransferToken: String, batchNumber: String? = nil, channel: Channel, effectiveDate: Date? = nil, programReserveToken: String? = nil, reason: String? = nil, returnCode: String? = nil, reversalAfter45Days: Bool? = nil, status: Status, token: String? = nil) {
        self.amount = amount
        self.bankTransferToken = bankTransferToken
        self.batchNumber = batchNumber
        self.channel = channel
        self.effectiveDate = effectiveDate
        self.programReserveToken = programReserveToken
        self.reason = reason
        self.returnCode = returnCode
        self.reversalAfter45Days = reversalAfter45Days
        self.status = status
        self.token = token
    }

    public enum CodingKeys: String, CodingKey { 
        case amount
        case bankTransferToken = "bank_transfer_token"
        case batchNumber = "batch_number"
        case channel
        case effectiveDate = "effective_date"
        case programReserveToken = "program_reserve_token"
        case reason
        case returnCode = "return_code"
        case reversalAfter45Days = "reversal_after_45_days"
        case status
        case token
    }

}
