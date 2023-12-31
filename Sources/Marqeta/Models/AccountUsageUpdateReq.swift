//
// AccountUsageUpdateReq.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains information on how a credit account is used and what types of balances are permitted on the account. */

public struct AccountUsageUpdateReq: Codable {

    /** Contains one or more annual percentage rates (APRs) associated with the credit account. */
    public var aprs: [AprScheduleUpdateReq]?
    public var type: BalanceType

    public init(aprs: [AprScheduleUpdateReq]? = nil, type: BalanceType) {
        self.aprs = aprs
        self.type = type
    }


}
