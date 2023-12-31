//
// CardAcceptorModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct CardAcceptorModel: Codable {

    public var address: String?
    public var city: String?
    public var country: String?
    public var ecommerceSecurityLevelIndicator: String?
    public var mcc: String?
    public var name: String?
    public var partialApprovalCapable: Bool?
    public var state: String?
    public var zip: String?

    public init(address: String? = nil, city: String? = nil, country: String? = nil, ecommerceSecurityLevelIndicator: String? = nil, mcc: String? = nil, name: String? = nil, partialApprovalCapable: Bool? = nil, state: String? = nil, zip: String? = nil) {
        self.address = address
        self.city = city
        self.country = country
        self.ecommerceSecurityLevelIndicator = ecommerceSecurityLevelIndicator
        self.mcc = mcc
        self.name = name
        self.partialApprovalCapable = partialApprovalCapable
        self.state = state
        self.zip = zip
    }

    public enum CodingKeys: String, CodingKey { 
        case address
        case city
        case country
        case ecommerceSecurityLevelIndicator = "ecommerce_security_level_indicator"
        case mcc
        case name
        case partialApprovalCapable = "partial_approval_capable"
        case state
        case zip
    }

}
