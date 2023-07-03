//
// AuthControlMerchantScope.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Defines the group of merchants to which the authorization control applies. This object is required if the &#x60;association&#x60; object is not included in your request. Your request can include both the &#x60;merchant_scope&#x60; and &#x60;association&#x60; objects.  If you include this object in your request, you must populate one or more of its fields. If no fields are populated, the authorization control applies to all merchants. */

public struct AuthControlMerchantScope: Codable {

    /** Merchant Category Code (MCC). Identifies the type of goods or services provided by the merchant.  Enter a value to control access to a particular type of product or service.  See &lt;&lt;/developer-guides/controlling-spending, Controlling Spending&gt;&gt; for links to more information about merchant category codes. */
    public var mcc: String?
    /** Token identifying a group of MCCs.  Enter a value to control access to a group of product or service types. */
    public var mccGroup: String?
    /** Unique identifier of a merchant group.  Enter a value to control access to a group of merchants. */
    public var merchantGroupToken: String?
    /** Merchant identifier (MID). Identifies a specific merchant.  Enter a value to control access to a particular merchant. */
    public var mid: String?

    public init(mcc: String? = nil, mccGroup: String? = nil, merchantGroupToken: String? = nil, mid: String? = nil) {
        self.mcc = mcc
        self.mccGroup = mccGroup
        self.merchantGroupToken = merchantGroupToken
        self.mid = mid
    }

    public enum CodingKeys: String, CodingKey { 
        case mcc
        case mccGroup = "mcc_group"
        case merchantGroupToken = "merchant_group_token"
        case mid
    }

}
