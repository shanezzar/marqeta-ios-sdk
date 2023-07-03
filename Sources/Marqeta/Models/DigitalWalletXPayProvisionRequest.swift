//
// DigitalWalletXPayProvisionRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct DigitalWalletXPayProvisionRequest: Codable {

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
    /** Unique identifier of the user&#x27;s XPay device, as provided by XPay during the provisioning process. */
    public var deviceId: String
    /** Type of device into which the digital wallet token will be provisioned. */
    public var deviceType: DeviceType
    /** Version of the application making the provisioning request. Used for debugging and fraud prevention. */
    public var provisioningAppVersion: String
    /** Unique numerical identifier of the digital wallet token requestor within the card network. These ID numbers map to &#x60;token_requestor_name&#x60; field values as follows:  *Mastercard*  * 50110030273 – &#x60;APPLE_PAY&#x60; * 50120834693 – &#x60;ANDROID_PAY&#x60; * 50139059239 – &#x60;SAMSUNG_PAY&#x60;  *Visa*  * 40010030273 – &#x60;APPLE_PAY&#x60; * 40010075001 – &#x60;ANDROID_PAY&#x60; * 40010043095 – &#x60;SAMSUNG_PAY&#x60; * 40010075196 – &#x60;MICROSOFT_PAY&#x60; * 40010075338 – &#x60;VISA_CHECKOUT&#x60; * 40010075449 – &#x60;FACEBOOK&#x60; * 40010075839 – &#x60;NETFLIX&#x60; * 40010077056 – &#x60;FITBIT_PAY&#x60; * 40010069887 – &#x60;GARMIN_PAY&#x60; */
    public var tokenRequestorId: String
    /** User&#x27;s XPay account identifier, as provided by XPay during the provisioning process. */
    public var walletAccountId: String

    public init(cardToken: String, deviceId: String, deviceType: DeviceType, provisioningAppVersion: String, tokenRequestorId: String, walletAccountId: String) {
        self.cardToken = cardToken
        self.deviceId = deviceId
        self.deviceType = deviceType
        self.provisioningAppVersion = provisioningAppVersion
        self.tokenRequestorId = tokenRequestorId
        self.walletAccountId = walletAccountId
    }

    public enum CodingKeys: String, CodingKey { 
        case cardToken = "card_token"
        case deviceId = "device_id"
        case deviceType = "device_type"
        case provisioningAppVersion = "provisioning_app_version"
        case tokenRequestorId = "token_requestor_id"
        case walletAccountId = "wallet_account_id"
    }

}
