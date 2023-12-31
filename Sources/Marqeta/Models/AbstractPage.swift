//
// AbstractPage.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Return paginated entities. */

public struct AbstractPage: Codable {

    /** Number of resources returned. */
    public var count: Int
    /** Sort order index of the last resource in the returned array. */
    public var endIndex: Int64
    /** A value of &#x60;true&#x60; indicates that more unreturned resources exist. */
    public var isMore: Bool
    /** Sort order index of the first resource in the returned array. */
    public var startIndex: Int64

    public init(count: Int, endIndex: Int64, isMore: Bool, startIndex: Int64) {
        self.count = count
        self.endIndex = endIndex
        self.isMore = isMore
        self.startIndex = startIndex
    }

    public enum CodingKeys: String, CodingKey { 
        case count
        case endIndex = "end_index"
        case isMore = "is_more"
        case startIndex = "start_index"
    }

}
