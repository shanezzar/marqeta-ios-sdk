//
// PolicyProductMinPaymentCalculation.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains information used to calculate the minimum payment amount on a credit product policy. */

public struct PolicyProductMinPaymentCalculation: Codable {

    /** Whether to include the overlimit amount when calculating the minimum payment. */
    public var includeOverlimitAmount: Bool
    /** Whether to include the past due amount when calculating the minimum payment. */
    public var includePastDueAmount: Bool
    /** Minimum payment, expressed as a flat amount, due on the payment due day. */
    public var minPaymentFlatAmount: Decimal?
    public var minPaymentPercentage: PolicyProductMinPaymentPercentage?

    public init(includeOverlimitAmount: Bool, includePastDueAmount: Bool, minPaymentFlatAmount: Decimal? = nil, minPaymentPercentage: PolicyProductMinPaymentPercentage? = nil) {
        self.includeOverlimitAmount = includeOverlimitAmount
        self.includePastDueAmount = includePastDueAmount
        self.minPaymentFlatAmount = minPaymentFlatAmount
        self.minPaymentPercentage = minPaymentPercentage
    }

    public enum CodingKeys: String, CodingKey { 
        case includeOverlimitAmount = "include_overlimit_amount"
        case includePastDueAmount = "include_past_due_amount"
        case minPaymentFlatAmount = "min_payment_flat_amount"
        case minPaymentPercentage = "min_payment_percentage"
    }

}
