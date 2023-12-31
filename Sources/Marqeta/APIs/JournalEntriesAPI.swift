//
// JournalEntriesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class JournalEntriesAPI {
    /**
     Retrieve account journal entry

     - parameter accountToken: (path) The unique identifier of the credit account for which you want to retrieve journal entries.  Send a &#x60;GET&#x60; request to &#x60;/credit/accounts&#x60; to retrieve existing credit account tokens. 
     - parameter journalEntryToken: (path) The unique identifier of the journal entry you want to retrieve.  Send a &#x60;GET&#x60; request to &#x60;/credit/accounts/{account_token}/journalentries&#x60; to retrieve existing journal entry tokens. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getAccountJournalEntry(accountToken: String, journalEntryToken: String, completion: @escaping ((_ data: JournalEntry?,_ error: Error?) -> Void)) {
        getAccountJournalEntryWithRequestBuilder(accountToken: accountToken, journalEntryToken: journalEntryToken).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Retrieve account journal entry
     - GET /credit/accounts/{account_token}/journalentries/{journal_entry_token}

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
  "user_token" : "user_token",
  "related_token" : "related_token",
  "dispute_token" : "dispute_token",
  "group" : "PURCHASE",
  "status" : "PENDING"
}}]
     - parameter accountToken: (path) The unique identifier of the credit account for which you want to retrieve journal entries.  Send a &#x60;GET&#x60; request to &#x60;/credit/accounts&#x60; to retrieve existing credit account tokens. 
     - parameter journalEntryToken: (path) The unique identifier of the journal entry you want to retrieve.  Send a &#x60;GET&#x60; request to &#x60;/credit/accounts/{account_token}/journalentries&#x60; to retrieve existing journal entry tokens. 

     - returns: RequestBuilder<JournalEntry> 
     */
    open class func getAccountJournalEntryWithRequestBuilder(accountToken: String, journalEntryToken: String) -> RequestBuilder<JournalEntry> {
        var path = "/credit/accounts/{account_token}/journalentries/{journal_entry_token}"
        let accountTokenPreEscape = "\(accountToken)"
        let accountTokenPostEscape = accountTokenPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{account_token}", with: accountTokenPostEscape, options: .literal, range: nil)
        let journalEntryTokenPreEscape = "\(journalEntryToken)"
        let journalEntryTokenPostEscape = journalEntryTokenPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{journal_entry_token}", with: journalEntryTokenPostEscape, options: .literal, range: nil)
        let URLString = Marqeta.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<JournalEntry>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     * enum for parameter statuses
     */
    public enum Statuses_listAccountJournalEntries: String { 
        case posted = "POSTED"
        case pending = "PENDING"
    }

    /**
     * enum for parameter groups
     */
    public enum Groups_listAccountJournalEntries: String { 
        case purchase = "PURCHASE"
        case originalCredit = "ORIGINAL_CREDIT"
        case fee = "FEE"
        case balanceRefund = "BALANCE_REFUND"
        case payment = "PAYMENT"
        case interest = "INTEREST"
        case dispute = "DISPUTE"
        case refund = "REFUND"
        case adjustment = "ADJUSTMENT"
        case reward = "REWARD"
    }

    /**
     * enum for parameter expand
     */
    public enum Expand_listAccountJournalEntries: String { 
        case detailobject = "detailObject"
    }

    /**
     * enum for parameter sortBy
     */
    public enum SortBy_listAccountJournalEntries: String { 
        case createdtime = "createdTime"
        case createdtime_1 = "-createdTime"
        case impacttime = "impactTime"
        case impacttime_3 = "-impactTime"
    }

    /**
     * enum for parameter types
     */
    public enum Types_listAccountJournalEntries: String { 
        case authorization = "authorization"
        case authorizationAdvice = "authorization.advice"
        case authorizationIncremental = "authorization.incremental"
        case authorizationReversal = "authorization.reversal"
        case authorizationReversalIssuerexpiration = "authorization.reversal.issuerexpiration"
        case authorizationClearing = "authorization.clearing"
        case refund = "refund"
        case refundAuthorization = "refund.authorization"
        case refundAuthorizationAdvice = "refund.authorization.advice"
        case refundAuthorizationReversal = "refund.authorization.reversal"
        case refundAuthorizationClearing = "refund.authorization.clearing"
        case refundAuthorizationReversalIssuerexpiration = "refund.authorization.reversal.issuerexpiration"
        case originalcreditAuthorization = "originalcredit.authorization"
        case originalcreditAuthorizationClearing = "originalcredit.authorization.clearing"
        case originalcreditAuthorizationReversal = "originalcredit.authorization.reversal"
        case originalcreditAuthpluscapture = "originalcredit.authpluscapture"
        case originalcreditAuthpluscaptureReversal = "originalcredit.authpluscapture.reversal"
        case originalcreditAuthorizationReversalIssuerexpiration = "originalcredit.authorization.reversal.issuerexpiration"
        case accountBalancerefund = "account.balancerefund"
        case accountRewardCashback = "account.reward.cashback"
        case accountRewardAutoCashback = "account.reward.auto.cashback"
        case accountRewardAutoCashbackReversal = "account.reward.auto.cashback.reversal"
        case accountPayment = "account.payment"
        case accountPaymentCompleted = "account.payment.completed"
        case accountPaymentReturned = "account.payment.returned"
        case accountPaymentCanceled = "account.payment.canceled"
        case accountPaymentRefunded = "account.payment.refunded"
        case accountPaymentCompletedHoldReleased = "account.payment.completed.hold.released"
        case accountPaymentCompletedHold = "account.payment.completed.hold"
        case accountInterest = "account.interest"
        case accountFeePaymentLate = "account.fee.payment.late"
        case accountFeePaymentReturned = "account.fee.payment.returned"
        case accountFeeInterestMinimum = "account.fee.interest.minimum"
        case accountDispute = "account.dispute"
        case accountDisputeReversal = "account.dispute.reversal"
        case accountDisputeWon = "account.dispute.won"
        case accountDisputeLost = "account.dispute.lost"
        case accountDisputeLostGraceperiod = "account.dispute.lost.graceperiod"
        case accountAdjustment = "account.adjustment"
        case accountAdjustmentPurchase = "account.adjustment.purchase"
        case accountAdjustmentFee = "account.adjustment.fee"
        case accountAdjustmentInterest = "account.adjustment.interest"
        case accountAdjustmentReward = "account.adjustment.reward"
        case pindebit = "pindebit"
        case pindebitAuthorizationClearing = "pindebit.authorization.clearing"
        case pindebitRefund = "pindebit.refund"
    }

    /**
     List account journal entries

     - parameter accountToken: (path) The unique identifier of the credit account for which you want to retrieve journal entries.  Send a &#x60;GET&#x60; request to &#x60;/credit/accounts&#x60; to retrieve existing credit account tokens. 
     - parameter count: (query) The number of resources to retrieve. (optional, default to 5)
     - parameter startIndex: (query) Sort order index of the first resource in the returned array. (optional, default to 0)
     - parameter startDate: (query) The starting date of the date range from which to return journal entries. (optional)
     - parameter endDate: (query) The ending date of the date range from which to return journal entries. (optional)
     - parameter startImpactTime: (query) The starting impact_time of the date range from which to return journal entries. (optional)
     - parameter endImpactTime: (query) The ending impact_time of the date range from which to return journal entries. (optional)
     - parameter startCreatedTime: (query) The starting created_date of the date range from which to return journal entries. (optional)
     - parameter endCreatedTime: (query) The ending created_date of the date range from which to return journal entries. (optional)
     - parameter statuses: (query) An array of statuses by which to filter journal entries. (optional)
     - parameter groups: (query) An array of groups by which to filter journal entries.  To return all journal entry groups, do not include this query parameter. (optional)
     - parameter expand: (query) Embeds the specified object into the response. (optional)
     - parameter sortBy: (query) Field on which to sort. Prefix the field name with a hyphen (&#x60;-&#x60;) to sort in descending order. Omit the hyphen to sort in ascending order.  *NOTE:* You must sort using system field names such as &#x60;createdTime&#x60;, and not by the field names appearing in response bodies such as &#x60;created_time&#x60;. (optional, default to -createdTime)
     - parameter cardTokens: (query) An array of card tokens by which to filter journal entries. Returns journal entries associated with the specified card tokens.  Send a &#x60;GET&#x60; request to &#x60;/credit/accounts/{account_token}/cards/&#x60; to retrieve existing card tokens. (optional)
     - parameter userTokens: (query) An array of user tokens by which to filter journal entries. Returns journal entries associated with the specified user tokens.  Send a &#x60;GET&#x60; request to &#x60;/users&#x60; to retrieve existing user tokens. (optional)
     - parameter types: (query) An array of &lt;&lt;/core-api/event-types#_credit_journal_entry_events, event types&gt;&gt; by which to filter journal entries.  To return all event types, do not include this query parameter. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func listAccountJournalEntries(accountToken: String, count: Int? = nil, startIndex: Int? = nil, startDate: String? = nil, endDate: String? = nil, startImpactTime: String? = nil, endImpactTime: String? = nil, startCreatedTime: String? = nil, endCreatedTime: String? = nil, statuses: [String]? = nil, groups: [String]? = nil, expand: Expand_listAccountJournalEntries? = nil, sortBy: SortBy_listAccountJournalEntries? = nil, cardTokens: [String]? = nil, userTokens: [String]? = nil, types: [String]? = nil, completion: @escaping ((_ data: JournalEntriesPage?,_ error: Error?) -> Void)) {
        listAccountJournalEntriesWithRequestBuilder(accountToken: accountToken, count: count, startIndex: startIndex, startDate: startDate, endDate: endDate, startImpactTime: startImpactTime, endImpactTime: endImpactTime, startCreatedTime: startCreatedTime, endCreatedTime: endCreatedTime, statuses: statuses, groups: groups, expand: expand, sortBy: sortBy, cardTokens: cardTokens, userTokens: userTokens, types: types).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     List account journal entries
     - GET /credit/accounts/{account_token}/journalentries

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
    "user_token" : "user_token",
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
    "user_token" : "user_token",
    "related_token" : "related_token",
    "dispute_token" : "dispute_token",
    "group" : "PURCHASE",
    "status" : "PENDING"
  } ],
  "start_index" : 5,
  "count" : 0,
  "end_index" : 1
}}]
     - parameter accountToken: (path) The unique identifier of the credit account for which you want to retrieve journal entries.  Send a &#x60;GET&#x60; request to &#x60;/credit/accounts&#x60; to retrieve existing credit account tokens. 
     - parameter count: (query) The number of resources to retrieve. (optional, default to 5)
     - parameter startIndex: (query) Sort order index of the first resource in the returned array. (optional, default to 0)
     - parameter startDate: (query) The starting date of the date range from which to return journal entries. (optional)
     - parameter endDate: (query) The ending date of the date range from which to return journal entries. (optional)
     - parameter startImpactTime: (query) The starting impact_time of the date range from which to return journal entries. (optional)
     - parameter endImpactTime: (query) The ending impact_time of the date range from which to return journal entries. (optional)
     - parameter startCreatedTime: (query) The starting created_date of the date range from which to return journal entries. (optional)
     - parameter endCreatedTime: (query) The ending created_date of the date range from which to return journal entries. (optional)
     - parameter statuses: (query) An array of statuses by which to filter journal entries. (optional)
     - parameter groups: (query) An array of groups by which to filter journal entries.  To return all journal entry groups, do not include this query parameter. (optional)
     - parameter expand: (query) Embeds the specified object into the response. (optional)
     - parameter sortBy: (query) Field on which to sort. Prefix the field name with a hyphen (&#x60;-&#x60;) to sort in descending order. Omit the hyphen to sort in ascending order.  *NOTE:* You must sort using system field names such as &#x60;createdTime&#x60;, and not by the field names appearing in response bodies such as &#x60;created_time&#x60;. (optional, default to -createdTime)
     - parameter cardTokens: (query) An array of card tokens by which to filter journal entries. Returns journal entries associated with the specified card tokens.  Send a &#x60;GET&#x60; request to &#x60;/credit/accounts/{account_token}/cards/&#x60; to retrieve existing card tokens. (optional)
     - parameter userTokens: (query) An array of user tokens by which to filter journal entries. Returns journal entries associated with the specified user tokens.  Send a &#x60;GET&#x60; request to &#x60;/users&#x60; to retrieve existing user tokens. (optional)
     - parameter types: (query) An array of &lt;&lt;/core-api/event-types#_credit_journal_entry_events, event types&gt;&gt; by which to filter journal entries.  To return all event types, do not include this query parameter. (optional)

     - returns: RequestBuilder<JournalEntriesPage> 
     */
    open class func listAccountJournalEntriesWithRequestBuilder(accountToken: String, count: Int? = nil, startIndex: Int? = nil, startDate: String? = nil, endDate: String? = nil, startImpactTime: String? = nil, endImpactTime: String? = nil, startCreatedTime: String? = nil, endCreatedTime: String? = nil, statuses: [String]? = nil, groups: [String]? = nil, expand: Expand_listAccountJournalEntries? = nil, sortBy: SortBy_listAccountJournalEntries? = nil, cardTokens: [String]? = nil, userTokens: [String]? = nil, types: [String]? = nil) -> RequestBuilder<JournalEntriesPage> {
        var path = "/credit/accounts/{account_token}/journalentries"
        let accountTokenPreEscape = "\(accountToken)"
        let accountTokenPostEscape = accountTokenPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{account_token}", with: accountTokenPostEscape, options: .literal, range: nil)
        let URLString = Marqeta.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "count": count?.encodeToJSON(), 
                        "start_index": startIndex?.encodeToJSON(), 
                        "start_date": startDate, 
                        "end_date": endDate, 
                        "start_impact_time": startImpactTime, 
                        "end_impact_time": endImpactTime, 
                        "start_created_time": startCreatedTime, 
                        "end_created_time": endCreatedTime, 
                        "statuses": statuses, 
                        "groups": groups, 
                        "expand": expand?.rawValue, 
                        "sort_by": sortBy?.rawValue, 
                        "card_tokens": cardTokens, 
                        "user_tokens": userTokens, 
                        "types": types
        ])


        let requestBuilder: RequestBuilder<JournalEntriesPage>.Type = Marqeta.requestBuilderFactory.getBuilder()

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
