//
// PushToCardListResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct PushToCardListResponse: Codable {

    public var count: Int?
    public var data: [PushToCardResponse]?
    public var endIndex: Int?
    public var isMore: Bool?
    public var startIndex: Int?

    public init(count: Int? = nil, data: [PushToCardResponse]? = nil, endIndex: Int? = nil, isMore: Bool? = nil, startIndex: Int? = nil) {
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
