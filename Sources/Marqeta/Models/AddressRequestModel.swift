//
// AddressRequestModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Address associated with the business. */

public struct AddressRequestModel: Codable {

    /** Street name and number of the address.  This field is required for KYC verification (US-based accounts only). Cannot perform KYC if set to a PO Box. */
    public var address1: String?
    /** Additional address information. */
    public var address2: String?
    /** City of the address.  This field is required for KYC verification (US-based accounts only). */
    public var city: String?
    /** Country of the address. */
    public var country: String?
    /** Postal code of the address.  This field is required for KYC verification (US-based accounts only). */
    public var postalCode: String?
    /** State of the address.  This field is required for KYC verification (US-based accounts only). */
    public var state: String?
    /** United States ZIP code of the address. */
    public var zip: String?

    public init(address1: String? = nil, address2: String? = nil, city: String? = nil, country: String? = nil, postalCode: String? = nil, state: String? = nil, zip: String? = nil) {
        self.address1 = address1
        self.address2 = address2
        self.city = city
        self.country = country
        self.postalCode = postalCode
        self.state = state
        self.zip = zip
    }

    public enum CodingKeys: String, CodingKey { 
        case address1
        case address2
        case city
        case country
        case postalCode = "postal_code"
        case state
        case zip
    }

}
