//
// PolicyAprResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains information on an APR policy. */

public struct PolicyAprResponse: Codable {

    /** Date and time when the APR policy was created on Marqeta&#x27;s credit platform, in UTC. */
    public var createdTime: Date?
    /** Description of the APR policy. */
    public var _description: String?
    /** Date the APR goes into effect, in UTC. */
    public var effectiveDate: Date?
    /** Name of the APR policy. */
    public var name: String?
    public var purchases: PolicyAprPurchaseResponse?
    /** Unique identifier of the APR policy. */
    public var token: String?
    /** Date and time when the APR policy was last updated on Marqeta&#x27;s credit platform, in UTC. */
    public var updatedTime: Date?

    public init(createdTime: Date? = nil, _description: String? = nil, effectiveDate: Date? = nil, name: String? = nil, purchases: PolicyAprPurchaseResponse? = nil, token: String? = nil, updatedTime: Date? = nil) {
        self.createdTime = createdTime
        self._description = _description
        self.effectiveDate = effectiveDate
        self.name = name
        self.purchases = purchases
        self.token = token
        self.updatedTime = updatedTime
    }

    public enum CodingKeys: String, CodingKey { 
        case createdTime = "created_time"
        case _description = "description"
        case effectiveDate = "effective_date"
        case name
        case purchases
        case token
        case updatedTime = "updated_time"
    }

}
