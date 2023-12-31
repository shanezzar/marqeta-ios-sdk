//
// RewardResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct RewardResponse: Codable {

    /** Unique identifier of the account on which the reward exists. */
    public var accountToken: String?
    /** Amount of the reward. */
    public var amount: Decimal
    /** The total amount to which a percentage reward method is applied (for example, if a 3% reward is applied to 100, then &#x60;100&#x60; is the &#x60;applied_to_amount&#x60; value).  This field is not applicable for a flat fee method.  Returned for auto-cash back reward types only. */
    public var appliedToAmount: Decimal?
    /** Date and time when the reward was created on Marqeta&#x27;s credit platform, in UTC. */
    public var createdTime: Date
    public var currencyCode: CurrencyCode
    /** Description of the reward. */
    public var _description: String
    public var method: Method?
    /** Additional information about the reward. */
    public var note: String?
    /** Unique identifier of the reward.  If in the &#x60;detail_object&#x60;, unique identifier of the detail object. */
    public var token: String
    public var type: RewardType
    /** Date and time when the reward was last updated on Marqeta&#x27;s credit platform, in UTC. */
    public var updatedTime: Date
    /** Value of the percentage or flat amount.  Returned for auto-cash back reward types only. */
    public var value: Decimal?

    public init(accountToken: String? = nil, amount: Decimal, appliedToAmount: Decimal? = nil, createdTime: Date, currencyCode: CurrencyCode, _description: String, method: Method? = nil, note: String? = nil, token: String, type: RewardType, updatedTime: Date, value: Decimal? = nil) {
        self.accountToken = accountToken
        self.amount = amount
        self.appliedToAmount = appliedToAmount
        self.createdTime = createdTime
        self.currencyCode = currencyCode
        self._description = _description
        self.method = method
        self.note = note
        self.token = token
        self.type = type
        self.updatedTime = updatedTime
        self.value = value
    }

    public enum CodingKeys: String, CodingKey { 
        case accountToken = "account_token"
        case amount
        case appliedToAmount = "applied_to_amount"
        case createdTime = "created_time"
        case currencyCode = "currency_code"
        case _description = "description"
        case method
        case note
        case token
        case type
        case updatedTime = "updated_time"
        case value
    }

}
