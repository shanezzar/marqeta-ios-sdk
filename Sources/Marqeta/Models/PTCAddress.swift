//
// PTCAddress.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct PTCAddress: Codable {

    public var city: String
    public var country: String?
    public var county: String
    public var line1: String
    public var line2: String?
    public var postalCode: String
    public var state: String

    public init(city: String, country: String? = nil, county: String, line1: String, line2: String? = nil, postalCode: String, state: String) {
        self.city = city
        self.country = country
        self.county = county
        self.line1 = line1
        self.line2 = line2
        self.postalCode = postalCode
        self.state = state
    }

    public enum CodingKeys: String, CodingKey { 
        case city
        case country
        case county
        case line1
        case line2
        case postalCode = "postal_code"
        case state
    }

}
