//
// NetworkFraudView.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains network-provided information about fraud determinations. */

public struct NetworkFraudView: Codable {

    /** _(Visa only)_ Account holder risk condition code evaluated by the card network. A higher score indicates a greater likelihood that the card number is compromised. */
    public var accountRiskScore: String?
    /** _(Visa only)_ Unique code that describes the main driver of the &#x60;account_risk_score&#x60;. */
    public var accountRiskScoreReasonCode: String?
    /** Network-provided risk score for the transaction. A higher score indicates higher risk. Useful for making authorization decisions. */
    public var transactionRiskScore: Int?
    /** _(Mastercard only)_ Unique code that describes the main driver of the &#x60;transaction_risk_score&#x60;. */
    public var transactionRiskScoreReasonCode: String?
    /** _(Mastercard only)_ Description of the &#x60;transaction_risk_score_reason_code&#x60;. */
    public var transactionRiskScoreReasonDescription: String?

    public init(accountRiskScore: String? = nil, accountRiskScoreReasonCode: String? = nil, transactionRiskScore: Int? = nil, transactionRiskScoreReasonCode: String? = nil, transactionRiskScoreReasonDescription: String? = nil) {
        self.accountRiskScore = accountRiskScore
        self.accountRiskScoreReasonCode = accountRiskScoreReasonCode
        self.transactionRiskScore = transactionRiskScore
        self.transactionRiskScoreReasonCode = transactionRiskScoreReasonCode
        self.transactionRiskScoreReasonDescription = transactionRiskScoreReasonDescription
    }

    public enum CodingKeys: String, CodingKey { 
        case accountRiskScore = "account_risk_score"
        case accountRiskScoreReasonCode = "account_risk_score_reason_code"
        case transactionRiskScore = "transaction_risk_score"
        case transactionRiskScoreReasonCode = "transaction_risk_score_reason_code"
        case transactionRiskScoreReasonDescription = "transaction_risk_score_reason_description"
    }

}
