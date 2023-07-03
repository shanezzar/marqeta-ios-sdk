//
// IdentificationResponseModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains identifications associated with the cardholder. */

public struct IdentificationResponseModel: Codable {

    public enum ModelType: String, Codable { 
        case ssn = "SSN"
        case tin = "TIN"
        case sin = "SIN"
        case nin = "NIN"
        case passportNumber = "PASSPORT_NUMBER"
        case driversLicense = "DRIVERS_LICENSE"
        case businessNumber = "BUSINESS_NUMBER"
        case businessTaxId = "BUSINESS_TAX_ID"
        case taxpayerReference = "TAXPAYER_REFERENCE"
    }
    /** Expiration date for the identification, if applicable. */
    public var expirationDate: String?
    /** Type of identification. */
    public var type: ModelType?
    /** Number associated with the identification. */
    public var value: String?

    public init(expirationDate: String? = nil, type: ModelType? = nil, value: String? = nil) {
        self.expirationDate = expirationDate
        self.type = type
        self.value = value
    }

    public enum CodingKeys: String, CodingKey { 
        case expirationDate = "expiration_date"
        case type
        case value
    }

}
