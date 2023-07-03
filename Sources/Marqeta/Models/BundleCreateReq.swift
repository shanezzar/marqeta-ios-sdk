//
// BundleCreateReq.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains information on a bundle. */

public struct BundleCreateReq: Codable {

    /** Unique identifier of the APR policy. */
    public var aprPolicyToken: String
    /** Unique identifier of the credit product policy. */
    public var creditProductPolicyToken: String
    /** Description of the bundle. */
    public var _description: String
    /** Unique identifier of the document policy. */
    public var documentPolicyToken: String
    /** Unique identifier of the fee policy. */
    public var feePolicyToken: String
    /** Name of the bundle. */
    public var name: String
    /** Unique identifier of the offer policy. */
    public var offerPolicyToken: String?
    /** Unique identifier of the reward policy. */
    public var rewardPolicyToken: String?
    public var status: BundleResourceStatus
    /** Unique identifier of the bundle. */
    public var token: String?

    public init(aprPolicyToken: String, creditProductPolicyToken: String, _description: String, documentPolicyToken: String, feePolicyToken: String, name: String, offerPolicyToken: String? = nil, rewardPolicyToken: String? = nil, status: BundleResourceStatus, token: String? = nil) {
        self.aprPolicyToken = aprPolicyToken
        self.creditProductPolicyToken = creditProductPolicyToken
        self._description = _description
        self.documentPolicyToken = documentPolicyToken
        self.feePolicyToken = feePolicyToken
        self.name = name
        self.offerPolicyToken = offerPolicyToken
        self.rewardPolicyToken = rewardPolicyToken
        self.status = status
        self.token = token
    }

    public enum CodingKeys: String, CodingKey { 
        case aprPolicyToken = "apr_policy_token"
        case creditProductPolicyToken = "credit_product_policy_token"
        case _description = "description"
        case documentPolicyToken = "document_policy_token"
        case feePolicyToken = "fee_policy_token"
        case name
        case offerPolicyToken = "offer_policy_token"
        case rewardPolicyToken = "reward_policy_token"
        case status
        case token
    }

}
