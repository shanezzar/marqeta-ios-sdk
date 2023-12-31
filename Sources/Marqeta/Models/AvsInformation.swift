//
// AvsInformation.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains address verification information. */

public struct AvsInformation: Codable {

    /** Postal code of the address. */
    public var postalCode: String?
    /** Street name and number of the address. */
    public var streetAddress: String?
    /** United States ZIP code of the address. */
    public var zip: String?

    public init(postalCode: String? = nil, streetAddress: String? = nil, zip: String? = nil) {
        self.postalCode = postalCode
        self.streetAddress = streetAddress
        self.zip = zip
    }

    public enum CodingKeys: String, CodingKey { 
        case postalCode = "postal_code"
        case streetAddress = "street_address"
        case zip
    }

}
