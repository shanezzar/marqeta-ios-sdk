//
// DigitalWalletSamsungPayProvisionRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct DigitalWalletSamsungPayProvisionRequest: Codable {

    public enum DeviceType: String, Codable { 
        case mobilePhone = "MOBILE_PHONE"
        case watch = "WATCH"
        case tablet = "TABLET"
        case wearableDevice = "WEARABLE_DEVICE"
        case householdDevice = "HOUSEHOLD_DEVICE"
        case automobileDevice = "AUTOMOBILE_DEVICE"
    }
    /** Unique identifier of the card resource to use for the provisioning request. */
    public var cardToken: String
    /** User&#x27;s Samsung device unique identifier, as provided by Samsung during the provisioning process. */
    public var deviceId: String
    /** Type of device into which the digital wallet token will be provisioned. */
    public var deviceType: DeviceType
    /** Version of the application making the provisioning request. Used for debugging and fraud prevention. */
    public var provisioningAppVersion: String
    /** User&#x27;s Samsung Wallet account ID, as provided by Samsung during the provisioning process. */
    public var walletUserId: String

    public init(cardToken: String, deviceId: String, deviceType: DeviceType, provisioningAppVersion: String, walletUserId: String) {
        self.cardToken = cardToken
        self.deviceId = deviceId
        self.deviceType = deviceType
        self.provisioningAppVersion = provisioningAppVersion
        self.walletUserId = walletUserId
    }

    public enum CodingKeys: String, CodingKey { 
        case cardToken = "card_token"
        case deviceId = "device_id"
        case deviceType = "device_type"
        case provisioningAppVersion = "provisioning_app_version"
        case walletUserId = "wallet_user_id"
    }

}
