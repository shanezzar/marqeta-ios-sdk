//
// IssuerFraudView.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains one or more fraud determinations by the card network that apply to either the transaction or the cardholder&#x27;s account. */

public struct IssuerFraudView: Codable {

    public var fraudScoreReasons: [String]?
    /** The rules violated by the transaction. */
    public var recommendedAction: String?
    /** The fraud rating, or level of risk associated with the transaction. */
    public var riskLevel: String?
    /** The RiskControl tags that were triggered by the transaction. */
    public var riskcontrolTags: [RiskcontrolTags]?
    /** The rules violated by the transaction. */
    public var ruleViolations: [String]?
    /** The risk score generated by RiskControl. This is either the Mastercard Decision Intelligence or Visa Advance Authorization transaction risk score. */
    public var score: Int?
    /** Provides a list of rules triggered by a fraud event, along with the information on tags and rule characteristics. */
    public var triggeredRules: [TriggeredRule]?

    public init(fraudScoreReasons: [String]? = nil, recommendedAction: String? = nil, riskLevel: String? = nil, riskcontrolTags: [RiskcontrolTags]? = nil, ruleViolations: [String]? = nil, score: Int? = nil, triggeredRules: [TriggeredRule]? = nil) {
        self.fraudScoreReasons = fraudScoreReasons
        self.recommendedAction = recommendedAction
        self.riskLevel = riskLevel
        self.riskcontrolTags = riskcontrolTags
        self.ruleViolations = ruleViolations
        self.score = score
        self.triggeredRules = triggeredRules
    }

    public enum CodingKeys: String, CodingKey { 
        case fraudScoreReasons = "fraud_score_reasons"
        case recommendedAction = "recommended_action"
        case riskLevel = "risk_level"
        case riskcontrolTags = "riskcontrol_tags"
        case ruleViolations = "rule_violations"
        case score
        case triggeredRules = "triggered_rules"
    }

}
