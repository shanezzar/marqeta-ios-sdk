//
// TokenServiceProvider.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains information held and provided by the token service provider (card network). */

public struct TokenServiceProvider: Codable {

    /** Unique value representing a tokenization request (Mastercard only). */
    public var correlationId: String?
    /** Unique identifier of the digital wallet token primary account number (PAN) within the card network. */
    public var panReferenceId: String
    /** _(Mastercard only)_ Represents the confidence level in the digital wallet token. */
    public var tokenAssuranceLevel: String?
    /** Digital wallet&#x27;s decision as to whether the digital wallet token should be provisioned. */
    public var tokenEligibilityDecision: String?
    /** Expiration date of the digital wallet token. */
    public var tokenExpiration: String?
    /** Primary account number (PAN) of the digital wallet token. */
    public var tokenPan: String?
    /** Unique identifier of the digital wallet token within the card network. */
    public var tokenReferenceId: String?
    /** Unique numerical identifier of the token requestor within the card network. These ID numbers map to &#x60;token_requestor_name&#x60; field values as follows:  *Mastercard*  * 50110030273 – &#x60;APPLE_PAY&#x60; * 50120834693 – &#x60;ANDROID_PAY&#x60; * 50139059239 – &#x60;SAMSUNG_PAY&#x60;  *Visa*  * 40010030273 – &#x60;APPLE_PAY&#x60; * 40010075001 – &#x60;ANDROID_PAY&#x60; * 40010043095 – &#x60;SAMSUNG_PAY&#x60; * 40010075196 – &#x60;MICROSOFT_PAY&#x60; * 40010075338 – &#x60;VISA_CHECKOUT&#x60; * 40010075449 – &#x60;FACEBOOK&#x60; * 40010075839 – &#x60;NETFLIX&#x60; * 40010077056 – &#x60;FITBIT_PAY&#x60; * 40010069887 – &#x60;GARMIN_PAY&#x60; */
    public var tokenRequestorId: String?
    /** Name of the token requestor within the card network.  *NOTE:* The list of example values for this field is maintained by the card networks and is subject to change. */
    public var tokenRequestorName: String?
    /** Token score assigned by the digital wallet. */
    public var tokenScore: String?
    /** Type of the digital wallet token. */
    public var tokenType: String?

    public init(correlationId: String? = nil, panReferenceId: String, tokenAssuranceLevel: String? = nil, tokenEligibilityDecision: String? = nil, tokenExpiration: String? = nil, tokenPan: String? = nil, tokenReferenceId: String? = nil, tokenRequestorId: String? = nil, tokenRequestorName: String? = nil, tokenScore: String? = nil, tokenType: String? = nil) {
        self.correlationId = correlationId
        self.panReferenceId = panReferenceId
        self.tokenAssuranceLevel = tokenAssuranceLevel
        self.tokenEligibilityDecision = tokenEligibilityDecision
        self.tokenExpiration = tokenExpiration
        self.tokenPan = tokenPan
        self.tokenReferenceId = tokenReferenceId
        self.tokenRequestorId = tokenRequestorId
        self.tokenRequestorName = tokenRequestorName
        self.tokenScore = tokenScore
        self.tokenType = tokenType
    }

    public enum CodingKeys: String, CodingKey { 
        case correlationId = "correlation_id"
        case panReferenceId = "pan_reference_id"
        case tokenAssuranceLevel = "token_assurance_level"
        case tokenEligibilityDecision = "token_eligibility_decision"
        case tokenExpiration = "token_expiration"
        case tokenPan = "token_pan"
        case tokenReferenceId = "token_reference_id"
        case tokenRequestorId = "token_requestor_id"
        case tokenRequestorName = "token_requestor_name"
        case tokenScore = "token_score"
        case tokenType = "token_type"
    }

}
