//
// JitAddressVerification.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains address verification data consisting of address data entered by the cardholder, address data held by the Marqeta platform, and an assertion by the Marqeta platform as to whether the two sets of data match. */

public struct JitAddressVerification: Codable {

    public var gateway: AddressVerificationSource?
    public var issuer: AddressVerificationSource?
    public var request: AvsInformation?

    public init(gateway: AddressVerificationSource? = nil, issuer: AddressVerificationSource? = nil, request: AvsInformation? = nil) {
        self.gateway = gateway
        self.issuer = issuer
        self.request = request
    }


}
