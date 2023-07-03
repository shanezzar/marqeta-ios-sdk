//
// KycResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct KycResponse: Codable {

    /** The business account holder on which the identity check was performed. */
    public var businessToken: String?
    /** Time when the KYC verification was performed. */
    public var createdTime: Date
    /** Time when the KYC verification was last updated. */
    public var lastModifiedTime: Date
    /** If &#x60;true&#x60;, the user account holder is designated as having passed a verification check without Marqeta performing the check.  This override is used when verification is performed through another mechanism, such as with an alternative KYC provider or directly with the account holder. */
    public var manualOverride: Bool?
    /** Notes pertaining to a manual override. This field is included in the response only when the &#x60;manual_override&#x60; field is set to &#x60;true&#x60;. */
    public var notes: String?
    /** If you verified the account holder&#x27;s identity by performing a KYC verification outside of the Marqeta platform, you can use the &#x60;reference_id&#x60; field to store the reference number returned by that KYC provider. This field is included in the response only when the &#x60;manual_override&#x60; field is set to &#x60;true&#x60;.  *NOTE:* When you submit a KYC verification request with &#x60;manual_override&#x3D;false&#x60;, the Marqeta platform performs the verification through one of its KYC providers. If the KYC provider responds with a reference identifier, that identifier is passed to you by way of this field in the response. */
    public var referenceId: String?
    public var result: Result?
    /** The unique identifier of the identity check. */
    public var token: String?
    /** The user account holder on which the identity check was performed. */
    public var userToken: String?

    public init(businessToken: String? = nil, createdTime: Date, lastModifiedTime: Date, manualOverride: Bool? = nil, notes: String? = nil, referenceId: String? = nil, result: Result? = nil, token: String? = nil, userToken: String? = nil) {
        self.businessToken = businessToken
        self.createdTime = createdTime
        self.lastModifiedTime = lastModifiedTime
        self.manualOverride = manualOverride
        self.notes = notes
        self.referenceId = referenceId
        self.result = result
        self.token = token
        self.userToken = userToken
    }

    public enum CodingKeys: String, CodingKey { 
        case businessToken = "business_token"
        case createdTime = "created_time"
        case lastModifiedTime = "last_modified_time"
        case manualOverride = "manual_override"
        case notes
        case referenceId = "reference_id"
        case result
        case token
        case userToken = "user_token"
    }

}
