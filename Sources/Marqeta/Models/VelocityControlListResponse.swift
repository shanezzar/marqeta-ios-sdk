//
// VelocityControlListResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VelocityControlListResponse: Codable {

    /** Number of resources retrieved.  This field is returned if there are resources in your returned array. */
    public var count: Int?
    /** Array of velocity control objects.  Objects are returned as appropriate to your query. */
    public var data: [VelocityControlResponse]?
    /** Sort order index of the last resource in the returned array.  This field is returned if there are resources in your returned array. */
    public var endIndex: Int?
    /** A value of &#x60;true&#x60; indicates that more unreturned resources exist. A value of &#x60;false&#x60; indicates that no more unreturned resources exist.  This field is returned if there are resources in your returned array. */
    public var isMore: Bool?
    /** The sort order index of the last resource in the returned array.  This field is returned if there are resources in your returned array. */
    public var startIndex: Int?

    public init(count: Int? = nil, data: [VelocityControlResponse]? = nil, endIndex: Int? = nil, isMore: Bool? = nil, startIndex: Int? = nil) {
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
