//
// UserTransitionResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct UserTransitionResponse: Codable {

    public enum Channel: String, Codable { 
        case api = "API"
        case ivr = "IVR"
        case fraud = "FRAUD"
        case admin = "ADMIN"
        case system = "SYSTEM"
    }
    public enum ReasonCode: String, Codable { 
        case _00 = "00"
        case _01 = "01"
        case _02 = "02"
        case _03 = "03"
        case _04 = "04"
        case _05 = "05"
        case _06 = "06"
        case _07 = "07"
        case _08 = "08"
        case _09 = "09"
        case _10 = "10"
        case _11 = "11"
        case _12 = "12"
        case _13 = "13"
        case _14 = "14"
        case _15 = "15"
        case _16 = "16"
        case _17 = "17"
        case _18 = "18"
        case _19 = "19"
        case _20 = "20"
        case _21 = "21"
        case _22 = "22"
        case _23 = "23"
        case _24 = "24"
        case _25 = "25"
        case _26 = "26"
        case _27 = "27"
        case _28 = "28"
        case _29 = "29"
        case _30 = "30"
        case _31 = "31"
    }
    public enum Status: String, Codable { 
        case unverified = "UNVERIFIED"
        case limited = "LIMITED"
        case active = "ACTIVE"
        case suspended = "SUSPENDED"
        case closed = "CLOSED"
    }
    /** Mechanism by which the transaction was initiated. */
    public var channel: Channel
    /** Date and time when the resource was created, in UTC. */
    public var createdTime: Date?
    /** Date and time when the resource was last modified, in UTC. */
    public var lastModifiedTime: Date?
    /** Additional information about the status change. */
    public var reason: String?
    /** Identifies the standardized reason for the transition:  *00:* Object activated for the first time.  *01:* Requested by you.  *02:* Inactivity over time.  *03:* This address cannot accept mail or the addressee is unknown.  *04:* Negative account balance.  *05:* Account under review.  *06:* Suspicious activity was identified.  *07:* Activity outside the program parameters was identified.  *08:* Confirmed fraud was identified.  *09:* Matched with an Office of Foreign Assets Control list.  *10:* Card was reported lost.  *11:* Card information was cloned.  *12:* Account or card information was compromised.  *13:* Temporary status change while on hold/leave.  *14:* Initiated by Marqeta.  *15:* Initiated by issuer.  *16:* Card expired.  *17:* Failed KYC.  *18:* Changed to &#x60;ACTIVE&#x60; because information was properly validated.  *19:* Changed to &#x60;ACTIVE&#x60; because account activity was properly validated.  *20:* Change occurred prior to the normalization of reason codes.  *21:* Initiated by a third party, often a digital wallet provider.  *22:* PIN retry limit reached.  *23:* Card was reported stolen.  *24:* Address issue.  *25:* Name issue.  *26:* SSN issue.  *27:* DOB issue.  *28:* Email issue.  *29:* Phone issue.  *30:* Account/fulfillment mismatch.  *31:* Other reason. */
    public var reasonCode: ReasonCode
    /** Specifies the new status of the user. */
    public var status: Status
    /** Unique identifier of the user transition. */
    public var token: String
    /** Unique identifier of the user whose status was transitioned. */
    public var userToken: String?

    public init(channel: Channel, createdTime: Date? = nil, lastModifiedTime: Date? = nil, reason: String? = nil, reasonCode: ReasonCode, status: Status, token: String, userToken: String? = nil) {
        self.channel = channel
        self.createdTime = createdTime
        self.lastModifiedTime = lastModifiedTime
        self.reason = reason
        self.reasonCode = reasonCode
        self.status = status
        self.token = token
        self.userToken = userToken
    }

    public enum CodingKeys: String, CodingKey { 
        case channel
        case createdTime = "created_time"
        case lastModifiedTime = "last_modified_time"
        case reason
        case reasonCode = "reason_code"
        case status
        case token
        case userToken = "user_token"
    }

}
