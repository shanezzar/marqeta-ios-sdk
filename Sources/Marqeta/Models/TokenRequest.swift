//
// TokenRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct TokenRequest: Codable {

    /** Payment card account number. */
    public var accountNumber: String
    /** Unique identifier of the business account holder. This token is required if the &#x60;user_token&#x60; is not included. */
    public var businessToken: String?
    /** Payment card CVV2 number. */
    public var cvvNumber: String
    /** Payment card expiration date. */
    public var expDate: String
    /** If there are multiple funding sources, this field specifies which source is used by default in funding calls. If there is only one funding source, the system ignores this field and always uses that source. */
    public var isDefaultAccount: Bool?
    /** Postal code of the account holder (user or business). */
    public var postalCode: String?
    /** Unique identifier of the funding account. If you do not include a token, the system will generate one automatically. As this token is necessary for use in other calls, we recommend that you define a simple and easy to remember string rather than letting the system generate a token for you. This value cannot be updated. */
    public var token: String?
    /** Unique identifier of the user account holder. This token is required if the &#x60;business_token&#x60; is not included. */
    public var userToken: String?
    public var zip: String?

    public init(accountNumber: String, businessToken: String? = nil, cvvNumber: String, expDate: String, isDefaultAccount: Bool? = nil, postalCode: String? = nil, token: String? = nil, userToken: String? = nil, zip: String? = nil) {
        self.accountNumber = accountNumber
        self.businessToken = businessToken
        self.cvvNumber = cvvNumber
        self.expDate = expDate
        self.isDefaultAccount = isDefaultAccount
        self.postalCode = postalCode
        self.token = token
        self.userToken = userToken
        self.zip = zip
    }

    public enum CodingKeys: String, CodingKey { 
        case accountNumber = "account_number"
        case businessToken = "business_token"
        case cvvNumber = "cvv_number"
        case expDate = "exp_date"
        case isDefaultAccount = "is_default_account"
        case postalCode = "postal_code"
        case token
        case userToken = "user_token"
        case zip
    }

}
