//
// LinkedAccountBalanceResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct LinkedAccountBalanceResponse: Codable {

    public var accountBalance: Decimal?
    public var availableBalance: Decimal?
    public var balanceIsoCurrencyCode: String?
    public var createdTime: Date?
    public var lastModifiedTime: Date?
    public var processorToken: String?

    public init(accountBalance: Decimal? = nil, availableBalance: Decimal? = nil, balanceIsoCurrencyCode: String? = nil, createdTime: Date? = nil, lastModifiedTime: Date? = nil, processorToken: String? = nil) {
        self.accountBalance = accountBalance
        self.availableBalance = availableBalance
        self.balanceIsoCurrencyCode = balanceIsoCurrencyCode
        self.createdTime = createdTime
        self.lastModifiedTime = lastModifiedTime
        self.processorToken = processorToken
    }

    public enum CodingKeys: String, CodingKey { 
        case accountBalance = "account_balance"
        case availableBalance = "available_balance"
        case balanceIsoCurrencyCode = "balance_iso_currency_code"
        case createdTime = "created_time"
        case lastModifiedTime = "last_modified_time"
        case processorToken = "processor_token"
    }

}
