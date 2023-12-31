//
// WalletProviderProfile.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains information held and provided by the digital wallet provider. */

public struct WalletProviderProfile: Codable {

    public var account: Account?
    /** Score from the device. */
    public var deviceScore: String?
    /** Source from which the digital wallet provider obtained the card primary account number (PAN). */
    public var panSource: String?
    /** Reason for the wallet provider&#x27;s provisioning decision.  * *01* – Cardholder&#x27;s wallet account is too new relative to launch. * *02* – Cardholder&#x27;s wallet account is too new relative to provisioning request. * *03* – Cardholder&#x27;s wallet account/card pair is newer than date threshold. * *04* – Changes made to account data within the account threshold. * *05* – Suspicious transactions linked to this account. * *06* – Account has not had activity in the last year. * *07* – Suspended cards in the secure element. * *08* – Device was put in lost mode in the last seven days for longer than the duration threshold. * *09* – The number of provisioning attempts on this device in 24 hours exceeds threshold. * *0A* – There have been more than the threshold number of different cards attempted at provisioning to this phone in 24 hours. * *0B* – The card provisioning attempt contains a distinct name in excess of the threshold. * *0C* – The device score is less than 3. * *0D* – The account score is less than 4. * *0E* – Device provisioning location outside of the cardholder&#x27;s wallet account home country. * *0G* – Suspect fraud. */
    public var reasonCode: String?
    /** Array of recommendation reasons from the digital wallet provider. */
    public var recommendationReasons: [String]?
    public var riskAssessment: RiskAssessment?

    public init(account: Account? = nil, deviceScore: String? = nil, panSource: String? = nil, reasonCode: String? = nil, recommendationReasons: [String]? = nil, riskAssessment: RiskAssessment? = nil) {
        self.account = account
        self.deviceScore = deviceScore
        self.panSource = panSource
        self.reasonCode = reasonCode
        self.recommendationReasons = recommendationReasons
        self.riskAssessment = riskAssessment
    }

    public enum CodingKeys: String, CodingKey { 
        case account
        case deviceScore = "device_score"
        case panSource = "pan_source"
        case reasonCode = "reason_code"
        case recommendationReasons = "recommendation_reasons"
        case riskAssessment = "risk_assessment"
    }

}
