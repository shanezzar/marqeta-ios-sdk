//
// LedgerEntriesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class LedgerEntriesAPI {
    /**
     Retrieve account ledger entry

     - parameter accountToken: (path) The unique identifier of the credit account for which you want to retrieve ledger entries.  Send a &#x60;GET&#x60; request to &#x60;/credit/accounts&#x60; to retrieve existing credit account tokens. 
     - parameter ledgerEntryToken: (path) The unique identifier of the ledger entry you want to retrieve.  Send a &#x60;GET&#x60; request to &#x60;/credit/accounts/{account_token}/ledgerentries&#x60; to retrieve existing ledger entry tokens. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getAccountLedgerEntry(accountToken: String, ledgerEntryToken: String, completion: @escaping ((_ data: LedgerEntry?,_ error: Error?) -> Void)) {
        getAccountLedgerEntryWithRequestBuilder(accountToken: accountToken, ledgerEntryToken: ledgerEntryToken).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Retrieve account ledger entry
     - GET /credit/accounts/{account_token}/ledgerentries/{ledger_entry_token}

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "created_time" : "2000-01-23T04:56:07.000+00:00",
  "amount" : 6.027456183070403,
  "impact_time" : "2000-01-23T04:56:07.000+00:00",
  "account_token" : "account_token",
  "detail_token" : "detail_token",
  "memo" : "Whole Foods Market",
  "type" : "`authorization.clearing`",
  "currency_code" : "USD",
  "token" : "token",
  "request_time" : "2000-01-23T04:56:07.000+00:00",
  "root_token" : "root_token",
  "card_token" : "card_token",
  "detail_object" : { },
  "id" : "id",
  "related_token" : "related_token",
  "dispute_token" : "dispute_token",
  "group" : "PURCHASE",
  "status" : "PENDING"
}}]
     - parameter accountToken: (path) The unique identifier of the credit account for which you want to retrieve ledger entries.  Send a &#x60;GET&#x60; request to &#x60;/credit/accounts&#x60; to retrieve existing credit account tokens. 
     - parameter ledgerEntryToken: (path) The unique identifier of the ledger entry you want to retrieve.  Send a &#x60;GET&#x60; request to &#x60;/credit/accounts/{account_token}/ledgerentries&#x60; to retrieve existing ledger entry tokens. 

     - returns: RequestBuilder<LedgerEntry> 
     */
    open class func getAccountLedgerEntryWithRequestBuilder(accountToken: String, ledgerEntryToken: String) -> RequestBuilder<LedgerEntry> {
        var path = "/credit/accounts/{account_token}/ledgerentries/{ledger_entry_token}"
        let accountTokenPreEscape = "\(accountToken)"
        let accountTokenPostEscape = accountTokenPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{account_token}", with: accountTokenPostEscape, options: .literal, range: nil)
        let ledgerEntryTokenPreEscape = "\(ledgerEntryToken)"
        let ledgerEntryTokenPostEscape = ledgerEntryTokenPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{ledger_entry_token}", with: ledgerEntryTokenPostEscape, options: .literal, range: nil)
        let URLString = Marqeta.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<LedgerEntry>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     * enum for parameter expand
     */
    public enum Expand_listAccountLedgerEntries: String { 
        case detailobject = "detailObject"
    }

    /**
     * enum for parameter sortBy
     */
    public enum SortBy_listAccountLedgerEntries: String { 
        case createdtime = "createdTime"
        case createdtime_1 = "-createdTime"
    }

    /**
     List account ledger entries

     - parameter accountToken: (path) The unique identifier of the credit account for which you want to retrieve ledger entries.  Send a &#x60;GET&#x60; request to &#x60;/credit/accounts&#x60; to retrieve existing credit account tokens. 
     - parameter count: (query) The number of resources to retrieve. (optional, default to 5)
     - parameter startIndex: (query) Sort order index of the first resource in the returned array. (optional, default to 0)
     - parameter startDate: (query) The starting date of the date range from which to return ledger entries. (optional)
     - parameter endDate: (query) The ending date of the date range from which to return ledger entries. (optional)
     - parameter statuses: (query) An array of statuses by which to filter ledger entries. (optional)
     - parameter _description: (query) The description of the ledger entries to return. (optional)
     - parameter groups: (query) An array of groups by which to filter ledger entries.  To return all ledger entry groups, do not include this query parameter. (optional)
     - parameter amount: (query) The number of ledger entries to return. (optional)
     - parameter expand: (query) Embeds the specified object into the response. (optional)
     - parameter sortBy: (query) Field on which to sort. Prefix the field name with a hyphen (&#x60;-&#x60;) to sort in descending order. Omit the hyphen to sort in ascending order.  *NOTE:* You must sort using system field names such as &#x60;createdTime&#x60;, and not by the field names appearing in response bodies such as &#x60;created_time&#x60;. (optional, default to -createdTime)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func listAccountLedgerEntries(accountToken: String, count: Int? = nil, startIndex: Int? = nil, startDate: Date? = nil, endDate: Date? = nil, statuses: [String]? = nil, _description: String? = nil, groups: [String]? = nil, amount: Decimal? = nil, expand: Expand_listAccountLedgerEntries? = nil, sortBy: SortBy_listAccountLedgerEntries? = nil, completion: @escaping ((_ data: LedgerEntriesPage?,_ error: Error?) -> Void)) {
        listAccountLedgerEntriesWithRequestBuilder(accountToken: accountToken, count: count, startIndex: startIndex, startDate: startDate, endDate: endDate, statuses: statuses, _description: _description, groups: groups, amount: amount, expand: expand, sortBy: sortBy).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     List account ledger entries
     - GET /credit/accounts/{account_token}/ledgerentries

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "is_more" : true,
  "data" : [ {
    "created_time" : "2000-01-23T04:56:07.000+00:00",
    "amount" : 6.027456183070403,
    "impact_time" : "2000-01-23T04:56:07.000+00:00",
    "account_token" : "account_token",
    "detail_token" : "detail_token",
    "memo" : "Whole Foods Market",
    "type" : "`authorization.clearing`",
    "currency_code" : "USD",
    "token" : "token",
    "request_time" : "2000-01-23T04:56:07.000+00:00",
    "root_token" : "root_token",
    "card_token" : "card_token",
    "detail_object" : { },
    "id" : "id",
    "related_token" : "related_token",
    "dispute_token" : "dispute_token",
    "group" : "PURCHASE",
    "status" : "PENDING"
  }, {
    "created_time" : "2000-01-23T04:56:07.000+00:00",
    "amount" : 6.027456183070403,
    "impact_time" : "2000-01-23T04:56:07.000+00:00",
    "account_token" : "account_token",
    "detail_token" : "detail_token",
    "memo" : "Whole Foods Market",
    "type" : "`authorization.clearing`",
    "currency_code" : "USD",
    "token" : "token",
    "request_time" : "2000-01-23T04:56:07.000+00:00",
    "root_token" : "root_token",
    "card_token" : "card_token",
    "detail_object" : { },
    "id" : "id",
    "related_token" : "related_token",
    "dispute_token" : "dispute_token",
    "group" : "PURCHASE",
    "status" : "PENDING"
  } ],
  "start_index" : 5,
  "count" : 0,
  "end_index" : 1
}}]
     - parameter accountToken: (path) The unique identifier of the credit account for which you want to retrieve ledger entries.  Send a &#x60;GET&#x60; request to &#x60;/credit/accounts&#x60; to retrieve existing credit account tokens. 
     - parameter count: (query) The number of resources to retrieve. (optional, default to 5)
     - parameter startIndex: (query) Sort order index of the first resource in the returned array. (optional, default to 0)
     - parameter startDate: (query) The starting date of the date range from which to return ledger entries. (optional)
     - parameter endDate: (query) The ending date of the date range from which to return ledger entries. (optional)
     - parameter statuses: (query) An array of statuses by which to filter ledger entries. (optional)
     - parameter _description: (query) The description of the ledger entries to return. (optional)
     - parameter groups: (query) An array of groups by which to filter ledger entries.  To return all ledger entry groups, do not include this query parameter. (optional)
     - parameter amount: (query) The number of ledger entries to return. (optional)
     - parameter expand: (query) Embeds the specified object into the response. (optional)
     - parameter sortBy: (query) Field on which to sort. Prefix the field name with a hyphen (&#x60;-&#x60;) to sort in descending order. Omit the hyphen to sort in ascending order.  *NOTE:* You must sort using system field names such as &#x60;createdTime&#x60;, and not by the field names appearing in response bodies such as &#x60;created_time&#x60;. (optional, default to -createdTime)

     - returns: RequestBuilder<LedgerEntriesPage> 
     */
    open class func listAccountLedgerEntriesWithRequestBuilder(accountToken: String, count: Int? = nil, startIndex: Int? = nil, startDate: Date? = nil, endDate: Date? = nil, statuses: [String]? = nil, _description: String? = nil, groups: [String]? = nil, amount: Decimal? = nil, expand: Expand_listAccountLedgerEntries? = nil, sortBy: SortBy_listAccountLedgerEntries? = nil) -> RequestBuilder<LedgerEntriesPage> {
        var path = "/credit/accounts/{account_token}/ledgerentries"
        let accountTokenPreEscape = "\(accountToken)"
        let accountTokenPostEscape = accountTokenPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{account_token}", with: accountTokenPostEscape, options: .literal, range: nil)
        let URLString = Marqeta.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "count": count?.encodeToJSON(), 
                        "start_index": startIndex?.encodeToJSON(), 
                        "start_date": startDate?.encodeToJSON(), 
                        "end_date": endDate?.encodeToJSON(), 
                        "statuses": statuses, 
                        "description": _description, 
                        "groups": groups, 
                        "amount": amount, 
                        "expand": expand?.rawValue, 
                        "sort_by": sortBy?.rawValue
        ])


        let requestBuilder: RequestBuilder<LedgerEntriesPage>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     * enum for parameter eventType
     */
    public enum EventType_resendWebhookEvent: String { 
        case ledgerentry = "ledgerentry"
        case journalentry = "journalentry"
        case accounttransition = "accounttransition"
        case accountstatement = "accountstatement"
        case paymenttransition = "paymenttransition"
        case delinquencytransition = "delinquencytransition"
    }

    /**
     Resend credit event notification

     - parameter eventType: (path) Specifies the type of event you want to resend. 
     - parameter resourceToken: (path) The unique identifier of the resource for which you want to resend a notification.  Send a &#x60;GET&#x60; request to &#x60;/credit/accounts/{account_token}/journalentries&#x60; to retrieve existing journal entry tokens.  Send a &#x60;GET&#x60; request to &#x60;/credit/accounts/{account_token}/ledgerentries&#x60; to retrieve existing ledger entry tokens.  Send a &#x60;GET&#x60; request to &#x60;/accounts/{account_token}/accounttransitions&#x60; to retrieve existing account transition tokens.  Send a &#x60;GET&#x60; request to &#x60;/credit/accounts/{account_token}/payments/{payment_token}&#x60; to retrieve existing payment transition tokens.  Send a &#x60;GET&#x60; request to &#x60;/accounts/{account_token}/statements&#x60; to retrieve existing statement summary tokens.  Send a &#x60;GET&#x60; request to &#x60;/accounts/{account_token}/delinquencystate/transitions&#x60; to retrieve existing delinquency state transition tokens. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func resendWebhookEvent(eventType: EventType_resendWebhookEvent, resourceToken: String, completion: @escaping ((_ data: WebhookEventResendContainerResponse?,_ error: Error?) -> Void)) {
        resendWebhookEventWithRequestBuilder(eventType: eventType, resourceToken: resourceToken).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Resend credit event notification
     - POST /credit/webhooks/{event_type}/{resource_token}

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "unused" : "unused"
}}]
     - parameter eventType: (path) Specifies the type of event you want to resend. 
     - parameter resourceToken: (path) The unique identifier of the resource for which you want to resend a notification.  Send a &#x60;GET&#x60; request to &#x60;/credit/accounts/{account_token}/journalentries&#x60; to retrieve existing journal entry tokens.  Send a &#x60;GET&#x60; request to &#x60;/credit/accounts/{account_token}/ledgerentries&#x60; to retrieve existing ledger entry tokens.  Send a &#x60;GET&#x60; request to &#x60;/accounts/{account_token}/accounttransitions&#x60; to retrieve existing account transition tokens.  Send a &#x60;GET&#x60; request to &#x60;/credit/accounts/{account_token}/payments/{payment_token}&#x60; to retrieve existing payment transition tokens.  Send a &#x60;GET&#x60; request to &#x60;/accounts/{account_token}/statements&#x60; to retrieve existing statement summary tokens.  Send a &#x60;GET&#x60; request to &#x60;/accounts/{account_token}/delinquencystate/transitions&#x60; to retrieve existing delinquency state transition tokens. 

     - returns: RequestBuilder<WebhookEventResendContainerResponse> 
     */
    open class func resendWebhookEventWithRequestBuilder(eventType: EventType_resendWebhookEvent, resourceToken: String) -> RequestBuilder<WebhookEventResendContainerResponse> {
        var path = "/credit/webhooks/{event_type}/{resource_token}"
        let eventTypePreEscape = "\(eventType.rawValue)"
        let eventTypePostEscape = eventTypePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{event_type}", with: eventTypePostEscape, options: .literal, range: nil)
        let resourceTokenPreEscape = "\(resourceToken)"
        let resourceTokenPostEscape = resourceTokenPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{resource_token}", with: resourceTokenPostEscape, options: .literal, range: nil)
        let URLString = Marqeta.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<WebhookEventResendContainerResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
}