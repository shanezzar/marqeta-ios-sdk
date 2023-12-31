//
// FraudView.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains one or more fraud determinations by the card network that apply to either the transaction or the cardholder&#x27;s account. */

public struct FraudView: Codable {

    public var issuerProcessor: IssuerFraudView?
    public var network: NetworkFraudView?
    public var networkAccountIntelligenceScore: NetworkAccountIntelligenceScore?

    public init(issuerProcessor: IssuerFraudView? = nil, network: NetworkFraudView? = nil, networkAccountIntelligenceScore: NetworkAccountIntelligenceScore? = nil) {
        self.issuerProcessor = issuerProcessor
        self.network = network
        self.networkAccountIntelligenceScore = networkAccountIntelligenceScore
    }

    public enum CodingKeys: String, CodingKey { 
        case issuerProcessor = "issuer_processor"
        case network
        case networkAccountIntelligenceScore = "network_account_intelligence_score"
    }

}
