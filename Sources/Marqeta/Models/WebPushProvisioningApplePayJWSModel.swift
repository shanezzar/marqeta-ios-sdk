//
// WebPushProvisioningApplePayJWSModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Object containing JSON Web Signature (JWS) data. */

public struct WebPushProvisioningApplePayJWSModel: Codable {

    public var header: WebPushProvisioningApplePayJWSHeader
    /** JSON Web Signature (JWS) message payload. */
    public var payload: String
    /** Contains header parameters that are integrity-protected by the JSON Web Signature (JWS). */
    public var protected: String
    /** The JSON Web Signature (JWS). */
    public var signature: String

    public init(header: WebPushProvisioningApplePayJWSHeader, payload: String, protected: String, signature: String) {
        self.header = header
        self.payload = payload
        self.protected = protected
        self.signature = signature
    }


}