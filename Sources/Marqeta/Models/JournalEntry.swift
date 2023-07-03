//
// JournalEntry.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import AnyCodable


/** Contains information about a journal entry. */

public struct JournalEntry: Codable {

    public enum Group: String, Codable { 
        case purchase = "PURCHASE"
        case refund = "REFUND"
        case dispute = "DISPUTE"
        case originalCredit = "ORIGINAL_CREDIT"
        case fee = "FEE"
        case reward = "REWARD"
        case interest = "INTEREST"
        case payment = "PAYMENT"
        case adjustment = "ADJUSTMENT"
        case balanceTransfer = "BALANCE_TRANSFER"
        case cashAdvance = "CASH_ADVANCE"
        case balanceRefund = "BALANCE_REFUND"
    }
    public enum Status: String, Codable { 
        case pending = "PENDING"
        case posted = "POSTED"
        case declined = "DECLINED"
        case error = "ERROR"
        case cleared = "CLEARED"
    }
    /** Unique identifier of the credit account associated with the credit card used to make the journal entry. */
    public var accountToken: String
    /** Amount of the journal entry. */
    public var amount: Decimal
    /** Unique identifier of the credit card used to make the journal entry. */
    public var cardToken: String
    /** Date and time when the journal entry was created on Marqeta&#x27;s credit platform, in UTC. */
    public var createdTime: Date
    public var currencyCode: CurrencyCode
    /** Contains the journal entry&#x27;s full details. The fields returned in this object vary based on the journal entry group.  The following lists each journal entry group and the specific fields returned for each group.  * Purchases and refunds: see the &lt;&lt;/core-api/transactions#getTransactions, transactions&gt;&gt; response fields.  * Disputes: see the &lt;&lt;/core-api/credit-disputes#retrieveDispute, account disputes response fields.&gt;&gt;  * Original credit transaction (OCT): see the &lt;&lt;/core-api/push-to-card-payments#_create_push_to_card_disbursement, Push-to-Card disbursement&gt;&gt; fields.  * Rewards: see the &lt;&lt;/core-api/credit-account-rewards#createReward, account reward&gt;&gt; response fields.  * Payments: see the &lt;&lt;/core-api/credit-account-payments#retrievePayment, account payment&gt;&gt; response fields.  * Balance refunds: see the &lt;&lt;/core-api/credit-balance-refunds#createBalanceRefund, balance refund&gt;&gt; response fields.  * Adjustments: see the &lt;&lt;/core-api/credit-account-adjustments#retrieveAdjustment, account adjustment&gt;&gt; response fields.  * Interest and fees: see fields below. */
    public var detailObject: AnyCodable?
    /** Unique identifier of the journal entry&#x27;s full details. */
    public var detailToken: String
    /** Unique identifier of the dispute, if the journal entry is disputed. */
    public var disputeToken: String?
    /** Group to which the journal entry belongs. */
    public var group: Group
    /** Eight-digit numeric identifier of the journal entry, an alternate identifier to the UUID that is useful for remembering and referencing. */
    public var _id: String
    /** Date and time when the journal entry impacts the account balance.  For purchases, this is the time of the authorization.  For purchase authorization clearings, this is the time when the transaction is settled. */
    public var impactTime: Date
    /** Merchant name or description for the journal entry. */
    public var memo: String
    /** Unique identifier of the original journal entry. If the current journal entry is the original, this field is returned empty. */
    public var relatedToken: String?
    /** For purchases, the date and time of the authorization, which is when the user initiates the journal entry.  For other journal entry groups, equivalent to &#x60;impact_time&#x60;. */
    public var requestTime: Date
    /** Unique identifier of the root journal entry. If the current journal entry is the root, this field is returned empty. */
    public var rootToken: String?
    /** Status of the journal entry when it was initially recorded and had an impact on the balance, either &#x60;PENDING&#x60; or &#x60;POSTED&#x60;. This field is immutable and may not represent the current status.  To view the current status of purchases, refunds, OCTs, and payments, see the &#x60;detail_object.state&#x60; field. These journal entries start in &#x60;PENDING&#x60; and can transition to &#x60;CLEARED&#x60;, &#x60;DECLINED&#x60;, or &#x60;ERROR&#x60;. This transition of status is only sent through webhook event notifications.  Journal entries that are final transactions, such as clearings, start and remain in a &#x60;POSTED&#x60; state.  *NOTE*: &#x60;CLEARED&#x60;, &#x60;DECLINED&#x60;, and &#x60;ERROR&#x60; are special statuses that do not have an impact on the account balance, and are not recorded in the journal. For these special statuses, &#x60;impact_time&#x60;, &#x60;request_time&#x60;, &#x60;created_time&#x60;, &#x60;token&#x60;, and &#x60;id&#x60; are returned blank. */
    public var status: Status
    /** Unique identifier of the journal entry. */
    public var token: String
    /** The journal entry event type. */
    public var type: String
    /** Unique identifier of the credit user. */
    public var userToken: String

    public init(accountToken: String, amount: Decimal, cardToken: String, createdTime: Date, currencyCode: CurrencyCode, detailObject: AnyCodable? = nil, detailToken: String, disputeToken: String? = nil, group: Group, _id: String, impactTime: Date, memo: String, relatedToken: String? = nil, requestTime: Date, rootToken: String? = nil, status: Status, token: String, type: String, userToken: String) {
        self.accountToken = accountToken
        self.amount = amount
        self.cardToken = cardToken
        self.createdTime = createdTime
        self.currencyCode = currencyCode
        self.detailObject = detailObject
        self.detailToken = detailToken
        self.disputeToken = disputeToken
        self.group = group
        self._id = _id
        self.impactTime = impactTime
        self.memo = memo
        self.relatedToken = relatedToken
        self.requestTime = requestTime
        self.rootToken = rootToken
        self.status = status
        self.token = token
        self.type = type
        self.userToken = userToken
    }

    public enum CodingKeys: String, CodingKey { 
        case accountToken = "account_token"
        case amount
        case cardToken = "card_token"
        case createdTime = "created_time"
        case currencyCode = "currency_code"
        case detailObject = "detail_object"
        case detailToken = "detail_token"
        case disputeToken = "dispute_token"
        case group
        case _id = "id"
        case impactTime = "impact_time"
        case memo
        case relatedToken = "related_token"
        case requestTime = "request_time"
        case rootToken = "root_token"
        case status
        case token
        case type
        case userToken = "user_token"
    }

}
