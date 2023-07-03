//
// ClearingModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ClearingModel: Codable {

    public var amount: Decimal
    public var cardAcceptor: CardAcceptorModel?
    public var forcePost: Bool?
    public var isRefund: Bool?
    public var mid: String?
    public var networkFees: [NetworkFeeModel]?
    public var originalTransactionToken: String
    public var webhook: Webhook?

    public init(amount: Decimal, cardAcceptor: CardAcceptorModel? = nil, forcePost: Bool? = nil, isRefund: Bool? = nil, mid: String? = nil, networkFees: [NetworkFeeModel]? = nil, originalTransactionToken: String, webhook: Webhook? = nil) {
        self.amount = amount
        self.cardAcceptor = cardAcceptor
        self.forcePost = forcePost
        self.isRefund = isRefund
        self.mid = mid
        self.networkFees = networkFees
        self.originalTransactionToken = originalTransactionToken
        self.webhook = webhook
    }

    public enum CodingKeys: String, CodingKey { 
        case amount
        case cardAcceptor = "card_acceptor"
        case forcePost = "force_post"
        case isRefund = "is_refund"
        case mid
        case networkFees = "network_fees"
        case originalTransactionToken = "original_transaction_token"
        case webhook
    }

}
