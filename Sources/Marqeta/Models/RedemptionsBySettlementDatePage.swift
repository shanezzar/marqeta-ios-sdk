//
// RedemptionsBySettlementDatePage.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Return paginated redemptions by settlement date. */

public struct RedemptionsBySettlementDatePage: Codable {

    /** Number of resources returned. */
    public var count: Int
    /** Sort order index of the last resource in the returned array. */
    public var endIndex: Int64
    /** A value of &#x60;true&#x60; indicates that more unreturned resources exist. */
    public var isMore: Bool
    /** Sort order index of the first resource in the returned array. */
    public var startIndex: Int64
    /** List of redemptions. */
    public var data: [RedemptionsBySettlementDateResponse]

    public init(count: Int, endIndex: Int64, isMore: Bool, startIndex: Int64, data: [RedemptionsBySettlementDateResponse]) {
        self.count = count
        self.endIndex = endIndex
        self.isMore = isMore
        self.startIndex = startIndex
        self.data = data
    }

    public enum CodingKeys: String, CodingKey { 
        case count
        case endIndex = "end_index"
        case isMore = "is_more"
        case startIndex = "start_index"
        case data
    }

}
