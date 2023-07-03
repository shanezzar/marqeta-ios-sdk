//
// BalanceInquiryRequestModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct BalanceInquiryRequestModel: Codable {

    public enum AccountType: String, Codable { 
        case checking = "checking"
        case savings = "savings"
        case credit = "credit"
    }
    public var accountType: AccountType
    public var cardAcceptor: CardAcceptorModel
    public var cardToken: String
    public var mid: String
    public var networkFees: [NetworkFeeModel]?
    public var pin: String?
    public var webhook: Webhook?

    public init(accountType: AccountType, cardAcceptor: CardAcceptorModel, cardToken: String, mid: String, networkFees: [NetworkFeeModel]? = nil, pin: String? = nil, webhook: Webhook? = nil) {
        self.accountType = accountType
        self.cardAcceptor = cardAcceptor
        self.cardToken = cardToken
        self.mid = mid
        self.networkFees = networkFees
        self.pin = pin
        self.webhook = webhook
    }

    public enum CodingKeys: String, CodingKey { 
        case accountType = "account_type"
        case cardAcceptor = "card_acceptor"
        case cardToken = "card_token"
        case mid
        case networkFees = "network_fees"
        case pin
        case webhook
    }

}
