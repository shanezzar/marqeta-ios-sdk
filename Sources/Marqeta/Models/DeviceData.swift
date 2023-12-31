//
// DeviceData.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains information on user&#x27;s device fingerprint. Usually obtained through a component embedded in the application. */

public struct DeviceData: Codable {

    /** The data generated by the embedded component. */
    public var data: String?
    /** The provider of the embedded component. */
    public var provider: String?

    public init(data: String? = nil, provider: String? = nil) {
        self.data = data
        self.provider = provider
    }


}
