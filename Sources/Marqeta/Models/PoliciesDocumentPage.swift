//
// PoliciesDocumentPage.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** List response details for paginated document policies. */

public struct PoliciesDocumentPage: Codable {

    /** Number of resources returned. */
    public var count: Int
    /** One or more document policies. */
    public var data: [PolicyDocumentResponse]
    /** Sort order index of the last resource in the returned array. */
    public var endIndex: Int
    /** A value of &#x60;true&#x60; indicates that more unreturned resources exist. */
    public var isMore: Bool
    /** Sort order index of the first resource in the returned array. */
    public var startIndex: Int

    public init(count: Int, data: [PolicyDocumentResponse], endIndex: Int, isMore: Bool, startIndex: Int) {
        self.count = count
        self.data = data
        self.endIndex = endIndex
        self.isMore = isMore
        self.startIndex = startIndex
    }

    public enum CodingKeys: String, CodingKey { 
        case count
        case data
        case endIndex = "end_index"
        case isMore = "is_more"
        case startIndex = "start_index"
    }

}
