//
// PolicyDocumentAssetReq.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Request details for a specific asset. */

public struct PolicyDocumentAssetReq: Codable {

    /** Unique identifier of the asset, which is a type of document that contains finalized values. The values are finalized when the bundle containing the document is created. */
    public var assetToken: String

    public init(assetToken: String) {
        self.assetToken = assetToken
    }

    public enum CodingKeys: String, CodingKey { 
        case assetToken = "asset_token"
    }

}
