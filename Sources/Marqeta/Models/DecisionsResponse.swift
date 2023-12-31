//
// DecisionsResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains information on the decision model returned by the issuing bank if a decision has been rendered.  Returned when retrieving an application after a decision has been rendered. */

public struct DecisionsResponse: Codable {

    public enum Status: String, Codable { 
        case submitted = "SUBMITTED"
        case decisioning = "DECISIONING"
        case manualReview = "MANUAL_REVIEW"
        case approved = "APPROVED"
        case declined = "DECLINED"
        case expired = "EXPIRED"
        case rejected = "REJECTED"
        case error = "ERROR"
    }
    public enum CardProductLevel: String, Codable { 
        case premium = "PREMIUM"
        case traditional = "TRADITIONAL"
    }
    /** Unique identifier of the application. */
    public var applicationToken: String
    /** Unique identifier of the decision made based on the decision model.  See &#x60;decision_model.status&#x60; for the current state of the application. */
    public var decisionId: String
    /** Status of the decision on the application. */
    public var status: Status
    /** Date and time when the decision was submitted, in UTC. */
    public var submittedDateTime: Date
    /** Unique identifier of the decision model.  See &#x60;decision_model.status&#x60; for the current state of the application. */
    public var token: String
    /** Unique identifier of the applicant, the user applying for a credit account. */
    public var userToken: String
    /** Indicates the version of the Notice of Adverse Action (NOAA) template used. Can have these possible values:  * &#x60;AA0&#x60; - score denial with score disclosure * &#x60;AA1&#x60; - individual reason with score disclosure * &#x60;AA2&#x60; - individual reason without score disclosure * &#x60;AA3&#x60; - locked and frozen * &#x60;AA4&#x60; - fraud related */
    public var adverseActionTemplateCode: String?
    /** The tier of the card product. */
    public var cardProductLevel: CardProductLevel?
    /** Date and time when the decision model was created on the Marqeta platform, in UTC. */
    public var createdDate: Date?
    public var creditBureau: CreditBureau?
    /** The maximum line of credit extended to the user, also the maximum balance the credit account can carry. */
    public var creditLimit: Int?
    /** The user&#x27;s credit score. */
    public var creditScore: Int?
    /** Date and time when the credit score went into effect. */
    public var creditScoreDate: Date?
    /** Date and time when the decision on the application was rendered, in UTC. */
    public var decisionDate: Date?
    /** An array of reasons that explain why the application was declined. */
    public var denialReasons: [String]?
    /** Date when the decision model expires. */
    public var expireDate: Date?
    /** Number of percentage points added to the prime rate, used to calculate the purchase APR. */
    public var margin: Decimal?
    /** The current prime rate set by the Fed. */
    public var primeRate: Decimal?
    /** The purchase APR approved for the user. */
    public var purchaseApr: Decimal?
    /** A value of &#x60;true&#x60; indicates that the user received the credit product&#x27;s best APR.  If &#x60;false&#x60;, you must display to the user the following: &#x60;score_factors&#x60;, &#x60;credit_score&#x60;, &#x60;credit_score_date&#x60;, &#x60;credit_bureau&#x60;, &#x60;score_range&#x60;. */
    public var receivedBestRate: Bool?
    /** Factors that the bureau used to determine the user&#x27;s credit score. */
    public var scoreFactors: [String]?
    /** The range in which the user&#x27;s credit score falls. */
    public var scoreRange: String?

    public init(applicationToken: String, decisionId: String, status: Status, submittedDateTime: Date, token: String, userToken: String, adverseActionTemplateCode: String? = nil, cardProductLevel: CardProductLevel? = nil, createdDate: Date? = nil, creditBureau: CreditBureau? = nil, creditLimit: Int? = nil, creditScore: Int? = nil, creditScoreDate: Date? = nil, decisionDate: Date? = nil, denialReasons: [String]? = nil, expireDate: Date? = nil, margin: Decimal? = nil, primeRate: Decimal? = nil, purchaseApr: Decimal? = nil, receivedBestRate: Bool? = nil, scoreFactors: [String]? = nil, scoreRange: String? = nil) {
        self.applicationToken = applicationToken
        self.decisionId = decisionId
        self.status = status
        self.submittedDateTime = submittedDateTime
        self.token = token
        self.userToken = userToken
        self.adverseActionTemplateCode = adverseActionTemplateCode
        self.cardProductLevel = cardProductLevel
        self.createdDate = createdDate
        self.creditBureau = creditBureau
        self.creditLimit = creditLimit
        self.creditScore = creditScore
        self.creditScoreDate = creditScoreDate
        self.decisionDate = decisionDate
        self.denialReasons = denialReasons
        self.expireDate = expireDate
        self.margin = margin
        self.primeRate = primeRate
        self.purchaseApr = purchaseApr
        self.receivedBestRate = receivedBestRate
        self.scoreFactors = scoreFactors
        self.scoreRange = scoreRange
    }

    public enum CodingKeys: String, CodingKey { 
        case applicationToken = "application_token"
        case decisionId = "decision_id"
        case status
        case submittedDateTime = "submitted_date_time"
        case token
        case userToken = "user_token"
        case adverseActionTemplateCode = "adverse_action_template_code"
        case cardProductLevel = "card_product_level"
        case createdDate = "created_date"
        case creditBureau = "credit_bureau"
        case creditLimit = "credit_limit"
        case creditScore = "credit_score"
        case creditScoreDate = "credit_score_date"
        case decisionDate = "decision_date"
        case denialReasons = "denial_reasons"
        case expireDate = "expire_date"
        case margin
        case primeRate = "prime_rate"
        case purchaseApr = "purchase_apr"
        case receivedBestRate = "received_best_rate"
        case scoreFactors = "score_factors"
        case scoreRange = "score_range"
    }

}
