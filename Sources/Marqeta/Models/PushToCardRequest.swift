//
// PushToCardRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct PushToCardRequest: Codable {

    public var address1: String
    public var address2: String?
    public var city: String
    public var country: String
    public var cvv: String
    public var expDate: String
    public var nameOnCard: String
    public var pan: String
    public var postalCode: String
    public var state: String
    public var token: String?
    public var userToken: String

    public init(address1: String, address2: String? = nil, city: String, country: String, cvv: String, expDate: String, nameOnCard: String, pan: String, postalCode: String, state: String, token: String? = nil, userToken: String) {
        self.address1 = address1
        self.address2 = address2
        self.city = city
        self.country = country
        self.cvv = cvv
        self.expDate = expDate
        self.nameOnCard = nameOnCard
        self.pan = pan
        self.postalCode = postalCode
        self.state = state
        self.token = token
        self.userToken = userToken
    }

    public enum CodingKeys: String, CodingKey { 
        case address1 = "address_1"
        case address2 = "address_2"
        case city
        case country
        case cvv
        case expDate = "exp_date"
        case nameOnCard = "name_on_card"
        case pan
        case postalCode = "postal_code"
        case state
        case token
        case userToken = "user_token"
    }

}
