//
// CardholderAuthenticationData.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains 3D Secure authentication data:  * &#x60;electronic_commerce_indicator&#x60; – The level of verification performed. * &#x60;verification_result&#x60; – The result of the verification. * &#x60;verification_value_created_by&#x60; – The transaction participant who determined the verification result. * &#x60;three_ds_message_version&#x60; – The 3D Secure message version used for authentication. * &#x60;authentication_method&#x60; – The 3D Secure authentication method. * &#x60;authentication_status&#x60; – The 3D Secure authentication status. * &#x60;acquirer_exemption&#x60; – Indicates a 3D Secure authentication exemption from the acquirer. * &#x60;issuer_exemption&#x60; – Indicates a 3D Secure authentication exemption from the issuer. */

public struct CardholderAuthenticationData: Codable {

    /** Indicates 3D Secure authentication exemptions from the acquirer. This array is returned if it is included in the transaction data from the card network. */
    public var acquirerExemption: [String]?
    /** Specifies the 3D Secure authentication method. */
    public var authenticationMethod: String?
    /** Specifies the status of the 3D Secure authentication:  * &#x60;ATTEMPTED&#x60;: Indicates that 3D Secure authentication was requested and processed by the card network. * &#x60;DATA_SHARE_EXEMPTION&#x60;: Indicates that 3D Secure authentication was for information only and exempted. * &#x60;EXEMPTED&#x60;: Indicates that 3D Secure authentication was requested but the challenge was exempted. * &#x60;EXEMPTION_CLAIMED&#x60;: Indicates that 3D Secure authentication was exempted because acquirer transaction risk analysis (TRA) was already performed. * &#x60;SCA_EXEMPTION&#x60;: Indicates that 3D Secure authentication was exempted because strong customer authentication (SCA) was already performed. * &#x60;SUCCESSFUL&#x60;: Indicates that 3D Secure authentication was successful. * &#x60;SUCCESSFUL_NON_PAYMENT&#x60;: Indicates that 3D Secure non-payment authentication was successful. * &#x60;THREEDS_REQUESTER_DATA_SHARE_EXEMPTION&#x60;: Status is deprecated and will be removed from a future release of the Marqeta platform. After June 2023, use &#x60;DATA_SHARE_EXEMPTION&#x60; instead. * &#x60;THREEDS_REQUESTER_SCA_EXEMPTION&#x60;: Status is deprecated and will be removed in a June 2023 release of the Marqeta platform. After June 2023, use &#x60;SCA_EXEMPTION&#x60; instead. * &#x60;THREEDS_REQUESTER_TRA_EXEMPTION&#x60;: Status is deprecated and will be removed in a June 2023 release of the Marqeta platform. After June 2023, use &#x60;EXEMPTION_CLAIMED&#x60; instead. * &#x60;UNAVAILABLE&#x60;: ** For Visa transactions, this status indicates that 3D Secure authentication was requested, but Marqeta&#x27;s access control server (ACS) was not available. ** For Mastercard transactions, this status indicates that 3D Secure authentication was not available. */
    public var authenticationStatus: String?
    /** Status of the 3D Secure authentication attempt, as provided by a transaction participant.  * &#x60;authentication_attempted&#x60;: Merchant attempted to authenticate, but either the issuer or the cardholder does not participate in 3D Secure. * &#x60;authentication_successful&#x60;: Cardholder authentication successful. * &#x60;no_authentication&#x60;: Non-authenticated e-commerce transaction. */
    public var electronicCommerceIndicator: String?
    /** Indicates a 3D Secure authentication exemption from the issuer This field is returned if it is included in the transaction data from the card network. */
    public var issuerExemption: String?
    /** Specifies the 3D Secure message version used for authentication. */
    public var threeDsMessageVersion: String?
    /** Result of cardholder authentication verification value (CAVV) or accountholder authentication value (AAV) verification performed by the card network.  * &#x60;failed&#x60; * &#x60;not_present&#x60; * &#x60;not_provided&#x60; * &#x60;not_verified&#x60; * &#x60;not_verified_authentication_outage&#x60; * &#x60;verified&#x60; * &#x60;verified_amount_greater_than_20_percent&#x60;: For Mastercard AAV verification, indicates that the original authentication amount and final authorization amount are mismatched, and that the final authorization amount exceeds the original authentication amount by more than 20%. This 20% margin falls outside Mastercard&#x27;s suggested tolerance for what a European cardholder might reasonably expect when the total transaction amount is not known in advance. * &#x60;verified_amount_less_than_20_percent&#x60;: For Mastercard AAV verification, indicates that the original authentication amount and final authorization amount are mismatched, and that the final authorization amount exceeds the original authentication amount by 20% or less. This 20% margin falls within Mastercard&#x27;s suggested tolerance for what a European cardholder might reasonably expect when the total transaction amount is not known in advance. */
    public var verificationResult: String?
    /** Transaction participant who determined the verification result. This field is only available for Visa transactions. */
    public var verificationValueCreatedBy: String?

    public init(acquirerExemption: [String]? = nil, authenticationMethod: String? = nil, authenticationStatus: String? = nil, electronicCommerceIndicator: String? = nil, issuerExemption: String? = nil, threeDsMessageVersion: String? = nil, verificationResult: String? = nil, verificationValueCreatedBy: String? = nil) {
        self.acquirerExemption = acquirerExemption
        self.authenticationMethod = authenticationMethod
        self.authenticationStatus = authenticationStatus
        self.electronicCommerceIndicator = electronicCommerceIndicator
        self.issuerExemption = issuerExemption
        self.threeDsMessageVersion = threeDsMessageVersion
        self.verificationResult = verificationResult
        self.verificationValueCreatedBy = verificationValueCreatedBy
    }

    public enum CodingKeys: String, CodingKey { 
        case acquirerExemption = "acquirer_exemption"
        case authenticationMethod = "authentication_method"
        case authenticationStatus = "authentication_status"
        case electronicCommerceIndicator = "electronic_commerce_indicator"
        case issuerExemption = "issuer_exemption"
        case threeDsMessageVersion = "three_ds_message_version"
        case verificationResult = "verification_result"
        case verificationValueCreatedBy = "verification_value_created_by"
    }

}
