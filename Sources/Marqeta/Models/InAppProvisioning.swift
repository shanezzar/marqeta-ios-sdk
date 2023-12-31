//
// InAppProvisioning.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct InAppProvisioning: Codable {

    public var addressVerification: DigitalWalletTokenAddressVerification?
    /** Specifies if in-app provisioning is enabled. */
    public var enabled: Bool?

    public init(addressVerification: DigitalWalletTokenAddressVerification? = nil, enabled: Bool? = nil) {
        self.addressVerification = addressVerification
        self.enabled = enabled
    }

    public enum CodingKeys: String, CodingKey { 
        case addressVerification = "address_verification"
        case enabled
    }

}
