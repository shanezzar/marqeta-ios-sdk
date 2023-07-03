//
// ReversalModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ReversalModel: Codable {

    public var amount: Decimal
    public var findOriginalWindowDays: Int?
    public var isAdvice: Bool?
    public var networkFees: [NetworkFeeModel]?
    public var originalTransactionToken: String
    public var webhook: Webhook?

    public init(amount: Decimal, findOriginalWindowDays: Int? = nil, isAdvice: Bool? = nil, networkFees: [NetworkFeeModel]? = nil, originalTransactionToken: String, webhook: Webhook? = nil) {
        self.amount = amount
        self.findOriginalWindowDays = findOriginalWindowDays
        self.isAdvice = isAdvice
        self.networkFees = networkFees
        self.originalTransactionToken = originalTransactionToken
        self.webhook = webhook
    }

    public enum CodingKeys: String, CodingKey { 
        case amount
        case findOriginalWindowDays = "find_original_window_days"
        case isAdvice = "is_advice"
        case networkFees = "network_fees"
        case originalTransactionToken = "original_transaction_token"
        case webhook
    }

}
