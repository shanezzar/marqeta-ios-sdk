//
// AddressVerificationSource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains address verification data consisting of address data entered by the cardholder, address data held by the Marqeta platform, and an assertion by the Marqeta platform as to whether the two sets of data match. */

public struct AddressVerificationSource: Codable {

    public var onFile: AvsInformation?
    public var response: ModelResponse?

    public init(onFile: AvsInformation? = nil, response: ModelResponse? = nil) {
        self.onFile = onFile
        self.response = response
    }

    public enum CodingKeys: String, CodingKey { 
        case onFile = "on_file"
        case response
    }

}
