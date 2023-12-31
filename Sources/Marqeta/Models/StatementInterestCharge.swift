//
// StatementInterestCharge.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains information on statement interest charges. */

public struct StatementInterestCharge: Codable {

    public enum AprType: String, Codable { 
        case goTo = "GO_TO"
    }
    public enum BalanceType: String, Codable { 
        case purchase = "PURCHASE"
    }
    /** Amount of interest calculated for the billing period. */
    public var amount: Decimal?
    /** Type of APR. */
    public var aprType: AprType?
    /** Annual percentage rate. */
    public var aprValue: Decimal?
    /** Average daily balance used to calculate interest. */
    public var balanceSubjectToInterestRate: Decimal?
    /** Type of balance.  * &#x60;PURCHASE&#x60; - The balance on purchases. */
    public var balanceType: BalanceType?

    public init(amount: Decimal? = nil, aprType: AprType? = nil, aprValue: Decimal? = nil, balanceSubjectToInterestRate: Decimal? = nil, balanceType: BalanceType? = nil) {
        self.amount = amount
        self.aprType = aprType
        self.aprValue = aprValue
        self.balanceSubjectToInterestRate = balanceSubjectToInterestRate
        self.balanceType = balanceType
    }

    public enum CodingKeys: String, CodingKey { 
        case amount
        case aprType = "apr_type"
        case aprValue = "apr_value"
        case balanceSubjectToInterestRate = "balance_subject_to_interest_rate"
        case balanceType = "balance_type"
    }

}
