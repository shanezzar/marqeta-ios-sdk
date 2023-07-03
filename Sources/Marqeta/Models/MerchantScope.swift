//
// MerchantScope.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Defines the group of merchants to which the velocity control applies.  Populate no more than one field of the &#x60;merchant_scope&#x60; object. If no fields are populated, the velocity control applies to all merchants. */

public struct MerchantScope: Codable {

    /** Merchant Category Code (MCC). Identifies the type of products or services provided by the merchant.  Enter a value to control spending on a particular type of product or service. */
    public var mcc: String?
    /** Token identifying a group of MCCs. Enter a value to control spending on a group of product or service types.  Send a &#x60;GET&#x60; request to &#x60;/mccgroups&#x60; to retrieve MCC group tokens. */
    public var mccGroup: String?
    /** Merchant identifier (MID). Identifies a specific merchant.  Enter a value to control spending with a particular merchant. */
    public var mid: String?

    public init(mcc: String? = nil, mccGroup: String? = nil, mid: String? = nil) {
        self.mcc = mcc
        self.mccGroup = mccGroup
        self.mid = mid
    }

    public enum CodingKeys: String, CodingKey { 
        case mcc
        case mccGroup = "mcc_group"
        case mid
    }

}
