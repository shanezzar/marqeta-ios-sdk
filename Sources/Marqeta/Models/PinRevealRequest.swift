//
// PinRevealRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct PinRevealRequest: Codable {

    public enum CardholderVerificationMethod: String, Codable { 
        case biometricFace = "BIOMETRIC_FACE"
        case biometricFingerprint = "BIOMETRIC_FINGERPRINT"
        case login = "LOGIN"
        case expCvv = "EXP_CVV"
        case otpCvv = "OTP_CVV"
        case otp = "OTP"
        case other = "OTHER"
    }
    /** The supplemental method used to verify the cardholder&#x27;s identity before revealing the card&#x27;s personal identification number (PIN).  The possible cardholder verification methods are:  * *BIOMETRIC_FACE:* In-app authentication via facial recognition * *BIOMETRIC_FINGERPRINT:* In-app authentication via biometric fingerprint * *EXP_CVV:* In-app authentication by entering the card&#x27;s expiration date and card verification value (CVV) * *LOGIN:* In-app authentication by re-entering the app password * *OTP:* Two-factor authentication involving a one-time password (OTP) * *OTP_CVV:* Two-factor authentication involving the card&#x27;s CVV and an OTP * *OTHER:* Authentication that relies on other secure methods */
    public var cardholderVerificationMethod: CardholderVerificationMethod
    /** Unique value generated as a result of issuing a &#x60;POST&#x60; request to the &#x60;/pins/controltoken&#x60; endpoint. This value cannot be updated. */
    public var controlToken: String

    public init(cardholderVerificationMethod: CardholderVerificationMethod, controlToken: String) {
        self.cardholderVerificationMethod = cardholderVerificationMethod
        self.controlToken = controlToken
    }

    public enum CodingKeys: String, CodingKey { 
        case cardholderVerificationMethod = "cardholder_verification_method"
        case controlToken = "control_token"
    }

}
