//
// PushToCardDisburseRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct PushToCardDisburseRequest: Codable {

    public var amount: Decimal
    public var currencyCode: String
    public var memo: String?
    public var paymentInstrumentToken: String
    public var softDescriptor: PTCSoftDescriptor?
    public var tags: String?
    public var token: String?

    public init(amount: Decimal, currencyCode: String, memo: String? = nil, paymentInstrumentToken: String, softDescriptor: PTCSoftDescriptor? = nil, tags: String? = nil, token: String? = nil) {
        self.amount = amount
        self.currencyCode = currencyCode
        self.memo = memo
        self.paymentInstrumentToken = paymentInstrumentToken
        self.softDescriptor = softDescriptor
        self.tags = tags
        self.token = token
    }

    public enum CodingKeys: String, CodingKey { 
        case amount
        case currencyCode = "currency_code"
        case memo
        case paymentInstrumentToken = "payment_instrument_token"
        case softDescriptor = "soft_descriptor"
        case tags
        case token
    }

}
