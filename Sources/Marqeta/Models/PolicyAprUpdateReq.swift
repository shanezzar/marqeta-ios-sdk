//
// PolicyAprUpdateReq.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Request details for an APR policy. */

public struct PolicyAprUpdateReq: Codable {

    /** Description of the APR policy. */
    public var _description: String?
    /** Name of the APR policy. */
    public var name: String
    public var purchases: PolicyAprPurchaseReq?
    /** Unique identifier of the APR policy. */
    public var token: String?

    public init(_description: String? = nil, name: String, purchases: PolicyAprPurchaseReq? = nil, token: String? = nil) {
        self._description = _description
        self.name = name
        self.purchases = purchases
        self.token = token
    }

    public enum CodingKeys: String, CodingKey { 
        case _description = "description"
        case name
        case purchases
        case token
    }

}
