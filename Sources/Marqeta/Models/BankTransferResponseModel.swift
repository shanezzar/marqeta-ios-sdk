//
// BankTransferResponseModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct BankTransferResponseModel: Codable {

    public enum Channel: String, Codable { 
        case api = "API"
        case system = "SYSTEM"
        case admin = "ADMIN"
    }
    public enum StandardEntryClassCode: String, Codable { 
        case web = "WEB"
        case ppd = "PPD"
        case ccd = "CCD"
    }
    public enum Status: String, Codable { 
        case initiated = "INITIATED"
        case pending = "PENDING"
        case processing = "PROCESSING"
        case submitted = "SUBMITTED"
        case returned = "RETURNED"
        case completed = "COMPLETED"
        case error = "ERROR"
        case cancelled = "CANCELLED"
        case reversalPend = "REVERSAL_PEND"
        case reversalComp = "REVERSAL_COMP"
        case reversalDecl = "REVERSAL_DECL"
    }
    public enum TransferSpeed: String, Codable { 
        case standard = "STANDARD"
        case sameDay = "SAME_DAY"
    }
    public enum ModelType: String, Codable { 
        case push = "PUSH"
        case pull = "PULL"
    }
    /** Amount to push or pull. */
    public var amount: Decimal
    /** Field required in older versions of the API, but no longer used. */
    public var batchNumber: String?
    /** default &#x3D; API */
    public var channel: Channel?
    public var createdBy: String?
    /** Date and time when the ACH transfer was created, in UTC. */
    public var createdTime: Date?
    /** Valid alpha-3 link:https://www.iso.org/iso-4217-currency-codes.html[ISO 4217 currency code, window&#x3D;\&quot;_blank\&quot;] */
    public var currencyCode: String?
    /** ACH funding source token for the external account. */
    public var fundingSourceToken: String
    /** Date and time when the ACH transfer was last modified, in UTC. */
    public var lastModifiedTime: Date?
    /** Additional text describing the ACH transfer. */
    public var memo: String?
    /** Standardized ACH return code for a returned transaction, generally sent by the RDFI.  Transactions can be returned for any of the reasons listed in the &lt;&lt;/developer-guides/ach-origination#_nacha_ach_return_codes, NACHA ACH return codes table&gt;&gt; of the ACH Origination Guide. */
    public var returnCode: String?
    /** Human-readable description correlating to the &#x60;return_code&#x60;, such as &#x60;Insufficient funds&#x60;, if a return code is present in the response. */
    public var returnReason: String?
    /** Three-letter code identifying the type of entry.  * *WEB* — An internet-initiated entry * *PPD* — Prearranged Payment and Deposit * *CCD* — Cash Concentration and Disbursement */
    public var standardEntryClassCode: StandardEntryClassCode?
    /** Description of the transaction, as it will appear on the receiver&#x27;s bank statement. */
    public var statementDescriptor: String?
    /** New state of the ACH transfer. */
    public var status: Status?
    /** Unique identifier of the ACH transfer to retrieve. */
    public var token: String?
    /** Specifies how quickly to initiate the ACH transfer.  *NOTE:* Same-day transfers are limited to a maximum amount of $100,000. */
    public var transferSpeed: TransferSpeed?
    /** Array of ACH transfer transition objects. */
    public var transitions: [BankTransferTransitionResponseModel]?
    /** Specifies whether the ACH transfer is a push (credit) or pull (debit). */
    public var type: ModelType

    public init(amount: Decimal, batchNumber: String? = nil, channel: Channel? = nil, createdBy: String? = nil, createdTime: Date? = nil, currencyCode: String? = nil, fundingSourceToken: String, lastModifiedTime: Date? = nil, memo: String? = nil, returnCode: String? = nil, returnReason: String? = nil, standardEntryClassCode: StandardEntryClassCode? = nil, statementDescriptor: String? = nil, status: Status? = nil, token: String? = nil, transferSpeed: TransferSpeed? = nil, transitions: [BankTransferTransitionResponseModel]? = nil, type: ModelType) {
        self.amount = amount
        self.batchNumber = batchNumber
        self.channel = channel
        self.createdBy = createdBy
        self.createdTime = createdTime
        self.currencyCode = currencyCode
        self.fundingSourceToken = fundingSourceToken
        self.lastModifiedTime = lastModifiedTime
        self.memo = memo
        self.returnCode = returnCode
        self.returnReason = returnReason
        self.standardEntryClassCode = standardEntryClassCode
        self.statementDescriptor = statementDescriptor
        self.status = status
        self.token = token
        self.transferSpeed = transferSpeed
        self.transitions = transitions
        self.type = type
    }

    public enum CodingKeys: String, CodingKey { 
        case amount
        case batchNumber = "batch_number"
        case channel
        case createdBy = "created_by"
        case createdTime = "created_time"
        case currencyCode = "currency_code"
        case fundingSourceToken = "funding_source_token"
        case lastModifiedTime = "last_modified_time"
        case memo
        case returnCode = "return_code"
        case returnReason = "return_reason"
        case standardEntryClassCode = "standard_entry_class_code"
        case statementDescriptor = "statement_descriptor"
        case status
        case token
        case transferSpeed = "transfer_speed"
        case transitions
        case type
    }

}
