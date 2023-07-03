//
// VelocityControlRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VelocityControlRequest: Codable {

    public enum VelocityWindow: String, Codable { 
        case day = "DAY"
        case week = "WEEK"
        case month = "MONTH"
        case lifetime = "LIFETIME"
        case transaction = "TRANSACTION"
    }
    /** Indicates whether the velocity control is active. */
    public var active: Bool?
    /** Maximum monetary sum that can be cleared within the time period defined by the &#x60;velocity_window&#x60; field. */
    public var amountLimit: Decimal
    /** If set to &#x60;true&#x60;, only approved transactions are subject to control. */
    public var approvalsOnly: Bool?
    public var association: SpendControlAssociation?
    /** Three-character ISO 4217 currency code. */
    public var currencyCode: String
    /** If set to &#x60;true&#x60;, cashbacks from a point of sale are subject to control. */
    public var includeCashback: Bool?
    /** If set to &#x60;true&#x60;, original credit transactions (OCT) are subject to control. Your request can contain either a &#x60;money_in_transaction&#x60; object or the &#x60;include_credits&#x60; field, not both. */
    public var includeCredits: Bool?
    /** If set to &#x60;true&#x60;, purchases are subject to control. */
    public var includePurchases: Bool?
    /** If set to &#x60;true&#x60;, transfers are subject to control. */
    public var includeTransfers: Bool?
    /** If set to &#x60;true&#x60;, ATM withdrawals are subject to control. */
    public var includeWithdrawals: Bool?
    public var merchantScope: MerchantScope?
    public var moneyInTransaction: MoneyInTransaction?
    /** Description of how the velocity control restricts spending, for example, \&quot;Max spend of $500 per day\&quot; or \&quot;Max spend of $5000 per month for non-exempt employees\&quot;.  Ensure that the description you provide here adequately captures the kind of restriction exerted by this velocity control, because the Marqeta platform will send this information to you in a webhook in the event that the transaction authorization attempt is declined by the velocity control.  *NOTE:* This field is very important. If your program has multiple velocity controls in place, it is not always clear which one prevented the transaction from being approved. Adding specific details to this field gives you more contextual information when debugging or monitoring declined authorization attempts. */
    public var name: String?
    /** Unique identifier of the velocity control.  If you do not include a token, the system will generate one automatically. This token is necessary for use in other API calls, so we recommend that rather than let the system generate one, you use a simple string that is easy to remember. This value cannot be updated. */
    public var token: String?
    /** Maximum number of times a card can be used within the time period defined by the &#x60;velocity_window&#x60; field.  If &#x60;velocity_window&#x60; is set to &#x60;TRANSACTION&#x60;, do not include a &#x60;usage_limit&#x60; in your request.  Set to &#x60;-1&#x60; to indicate that the card can be used an unlimited number of times. */
    public var usageLimit: Int?
    /** Defines the time period to which the &#x60;amount_limit&#x60; and &#x60;usage_limit&#x60; fields apply:  * *DAY* – one day; days begin at 00:00:00 UTC. * *WEEK* – one week; weeks begin Sundays at 00:00:00 UTC. * *MONTH* – one month; months begin on the first day of month at 00:00:00 UTC. * *LIFETIME* – forever; time period never expires. * *TRANSACTION* – a single transaction.  *NOTE:* If set to &#x60;DAY&#x60;, &#x60;WEEK&#x60;, or &#x60;MONTH&#x60;, the velocity control takes effect retroactively from the beginning of the specified period. The amount and usage data already collected within the first period is counted toward the limits.  *NOTE:* Editing any of the following fields on a velocity control resets its usage and amount count to 0:  * &#x60;merchant_scope.mcc&#x60; * &#x60;merchant_scope.mid&#x60; * &#x60;merchant_scope.mcc_group&#x60; * &#x60;association.user_token&#x60; * &#x60;association.card_product_token&#x60; * &#x60;velocity_window&#x60; */
    public var velocityWindow: VelocityWindow

    public init(active: Bool? = nil, amountLimit: Decimal, approvalsOnly: Bool? = nil, association: SpendControlAssociation? = nil, currencyCode: String, includeCashback: Bool? = nil, includeCredits: Bool? = nil, includePurchases: Bool? = nil, includeTransfers: Bool? = nil, includeWithdrawals: Bool? = nil, merchantScope: MerchantScope? = nil, moneyInTransaction: MoneyInTransaction? = nil, name: String? = nil, token: String? = nil, usageLimit: Int? = nil, velocityWindow: VelocityWindow) {
        self.active = active
        self.amountLimit = amountLimit
        self.approvalsOnly = approvalsOnly
        self.association = association
        self.currencyCode = currencyCode
        self.includeCashback = includeCashback
        self.includeCredits = includeCredits
        self.includePurchases = includePurchases
        self.includeTransfers = includeTransfers
        self.includeWithdrawals = includeWithdrawals
        self.merchantScope = merchantScope
        self.moneyInTransaction = moneyInTransaction
        self.name = name
        self.token = token
        self.usageLimit = usageLimit
        self.velocityWindow = velocityWindow
    }

    public enum CodingKeys: String, CodingKey { 
        case active
        case amountLimit = "amount_limit"
        case approvalsOnly = "approvals_only"
        case association
        case currencyCode = "currency_code"
        case includeCashback = "include_cashback"
        case includeCredits = "include_credits"
        case includePurchases = "include_purchases"
        case includeTransfers = "include_transfers"
        case includeWithdrawals = "include_withdrawals"
        case merchantScope = "merchant_scope"
        case moneyInTransaction = "money_in_transaction"
        case name
        case token
        case usageLimit = "usage_limit"
        case velocityWindow = "velocity_window"
    }

}
