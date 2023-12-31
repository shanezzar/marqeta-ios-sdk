//
// Special.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains information about merchant onboarding. */

public struct Special: Codable {

    /** If set to &#x60;true&#x60;, cards of this card product type can be used for merchant onboarding. */
    public var merchantOnBoarding: Bool?

    public init(merchantOnBoarding: Bool? = nil) {
        self.merchantOnBoarding = merchantOnBoarding
    }

    public enum CodingKeys: String, CodingKey { 
        case merchantOnBoarding = "merchant_on_boarding"
    }

}
