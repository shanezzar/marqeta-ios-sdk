//
// AutoReloadModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains information about an auto reload. See &lt;&lt;/core-api/auto-reload, Auto Reloads&gt;&gt; for more information.  Returned if an auto reload was executed. */

public struct AutoReloadModel: Codable {

    /** Specifies whether the auto reload is active.  Only one auto reload per level, per object, can be active. */
    public var active: Bool?
    public var association: AutoReloadAssociation?
    /** Three-digit link:https://www.iso.org/iso-4217-currency-codes.html[ISO 4217 currency code, window&#x3D;\&quot;_blank\&quot;]. */
    public var currencyCode: String
    /** Unique identifier of the funding source address to use for this auto reload.  If your funding source is an ACH account, then a &#x60;funding_source_address_token&#x60; is not required. If your funding source is a payment card, you must have at least one funding source address in order to create a GPA order.  Send a &#x60;GET&#x60; request to &#x60;/fundingsources/addresses/user/{user_token}&#x60; to retrieve address tokens for a user.  Send a &#x60;GET&#x60; request to &#x60;/fundingsources/addresses/business/{business_token}&#x60; to retrieve address tokens for a business. */
    public var fundingSourceAddressToken: String?
    /** Unique identifier of the funding source to use for this auto reload.  Send a &#x60;GET&#x60; request to &#x60;/fundingsources/user/{user_token}&#x60; to retrieve funding source tokens for a user.  Send a &#x60;GET&#x60; request to &#x60;/fundingsources/business/{business_token}&#x60; to retrieve funding source tokens for a business. */
    public var fundingSourceToken: String?
    public var orderScope: OrderScope
    /** Unique identifier of the auto reload.  If you do not include a token, the system will generate one automatically. This token is necessary for use in other API calls, so we recommend that rather than let the system generate one, you use a simple string that is easy to remember. This value cannot be updated. */
    public var token: String?

    public init(active: Bool? = nil, association: AutoReloadAssociation? = nil, currencyCode: String, fundingSourceAddressToken: String? = nil, fundingSourceToken: String? = nil, orderScope: OrderScope, token: String? = nil) {
        self.active = active
        self.association = association
        self.currencyCode = currencyCode
        self.fundingSourceAddressToken = fundingSourceAddressToken
        self.fundingSourceToken = fundingSourceToken
        self.orderScope = orderScope
        self.token = token
    }

    public enum CodingKeys: String, CodingKey { 
        case active
        case association
        case currencyCode = "currency_code"
        case fundingSourceAddressToken = "funding_source_address_token"
        case fundingSourceToken = "funding_source_token"
        case orderScope = "order_scope"
        case token
    }

}
