//
// CardTransitionsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class CardTransitionsAPI {
    /**
     List transitions for card

     - parameter token: (path) Unique identifier of the card. 
     - parameter count: (query) Number of card transitions to retrieve. (optional, default to 5)
     - parameter startIndex: (query) Sort order index of the first resource in the returned array. (optional, default to 0)
     - parameter fields: (query) Comma-delimited list of fields to return (&#x60;field_1,field_2&#x60;, and so on). Leave blank to return all fields. (optional)
     - parameter sortBy: (query) Field on which to sort. Use any field in the resource model, or one of the system fields &#x60;lastModifiedTime&#x60; or &#x60;createdTime&#x60;. Prefix the field name with a hyphen (&#x60;-&#x60;) to sort in descending order. Omit the hyphen to sort in ascending order. (optional, default to -createdTime)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getCardtransitionsCardToken(token: String, count: Int? = nil, startIndex: Int? = nil, fields: String? = nil, sortBy: String? = nil, completion: @escaping ((_ data: CardTransitionListResponse?,_ error: Error?) -> Void)) {
        getCardtransitionsCardTokenWithRequestBuilder(token: token, count: count, startIndex: startIndex, fields: fields, sortBy: sortBy).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     List transitions for card
     - GET /cardtransitions/card/{token}

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "is_more" : false,
  "data" : [ {
    "expedite" : false,
    "reason" : "reason",
    "fulfillment_status" : "ISSUED",
    "channel" : "API",
    "type" : "fulfillment.issued",
    "bulk_issuance_token" : "bulk_issuance_token",
    "reason_code" : "00",
    "card_product_token" : "card_product_token",
    "new_pan_from_card_token" : "new_pan_from_card_token",
    "last_four" : "last_four",
    "state" : "ACTIVE",
    "user_token" : "user_token",
    "validations" : {
      "user" : {
        "random_name_line1_postfix" : false,
        "phone" : false,
        "birth_date" : false,
        "ssn" : false
      }
    },
    "pan" : "pan",
    "barcode" : "barcode",
    "created_time" : "2000-01-23T04:56:07.000+00:00",
    "pin_is_set" : false,
    "expiration_time" : "expiration_time",
    "token" : "token",
    "reissue_pan_from_card_token" : "reissue_pan_from_card_token",
    "card_token" : "card_token",
    "expiration" : "expiration",
    "fulfillment" : {
      "shipping" : {
        "care_of_line" : "care_of_line",
        "method" : "LOCAL_MAIL",
        "recipient_address" : {
          "zip" : "zip",
          "country" : "country",
          "address2" : "address2",
          "city" : "city",
          "phone" : "phone",
          "address1" : "address1",
          "last_name" : "last_name",
          "state" : "state",
          "middle_name" : "middle_name",
          "postal_code" : "postal_code",
          "first_name" : "first_name"
        }
      },
      "card_fulfillment_reason" : "NEW",
      "card_personalization" : {
        "carrier" : {
          "message_file" : "message_file",
          "logo_file" : "logo_file",
          "message_line" : "message_line",
          "template_id" : "template_id",
          "logo_thumbnail_file" : "logo_thumbnail_file"
        },
        "images" : {
          "carrier" : {
            "message_1" : "message_1",
            "name" : "name"
          },
          "signature" : {
            "name" : "name"
          },
          "carrier_return_window" : {
            "name" : "name"
          },
          "card" : {
            "name" : "name",
            "thermal_color" : "thermal_color"
          }
        },
        "text" : {
          "name_line_1" : {
            "value" : "value"
          }
        },
        "perso_type" : "EMBOSS"
      }
    },
    "user" : {
      "metadata" : {
        "key" : "metadata"
      }
    },
    "card" : {
      "metadata" : {
        "key" : "metadata"
      }
    }
  }, {
    "expedite" : false,
    "reason" : "reason",
    "fulfillment_status" : "ISSUED",
    "channel" : "API",
    "type" : "fulfillment.issued",
    "bulk_issuance_token" : "bulk_issuance_token",
    "reason_code" : "00",
    "card_product_token" : "card_product_token",
    "new_pan_from_card_token" : "new_pan_from_card_token",
    "last_four" : "last_four",
    "state" : "ACTIVE",
    "user_token" : "user_token",
    "validations" : {
      "user" : {
        "random_name_line1_postfix" : false,
        "phone" : false,
        "birth_date" : false,
        "ssn" : false
      }
    },
    "pan" : "pan",
    "barcode" : "barcode",
    "created_time" : "2000-01-23T04:56:07.000+00:00",
    "pin_is_set" : false,
    "expiration_time" : "expiration_time",
    "token" : "token",
    "reissue_pan_from_card_token" : "reissue_pan_from_card_token",
    "card_token" : "card_token",
    "expiration" : "expiration",
    "fulfillment" : {
      "shipping" : {
        "care_of_line" : "care_of_line",
        "method" : "LOCAL_MAIL",
        "recipient_address" : {
          "zip" : "zip",
          "country" : "country",
          "address2" : "address2",
          "city" : "city",
          "phone" : "phone",
          "address1" : "address1",
          "last_name" : "last_name",
          "state" : "state",
          "middle_name" : "middle_name",
          "postal_code" : "postal_code",
          "first_name" : "first_name"
        }
      },
      "card_fulfillment_reason" : "NEW",
      "card_personalization" : {
        "carrier" : {
          "message_file" : "message_file",
          "logo_file" : "logo_file",
          "message_line" : "message_line",
          "template_id" : "template_id",
          "logo_thumbnail_file" : "logo_thumbnail_file"
        },
        "images" : {
          "carrier" : {
            "message_1" : "message_1",
            "name" : "name"
          },
          "signature" : {
            "name" : "name"
          },
          "carrier_return_window" : {
            "name" : "name"
          },
          "card" : {
            "name" : "name",
            "thermal_color" : "thermal_color"
          }
        },
        "text" : {
          "name_line_1" : {
            "value" : "value"
          }
        },
        "perso_type" : "EMBOSS"
      }
    },
    "user" : {
      "metadata" : {
        "key" : "metadata"
      }
    },
    "card" : {
      "metadata" : {
        "key" : "metadata"
      }
    }
  } ],
  "start_index" : 1,
  "count" : 0,
  "end_index" : 6
}}]
     - parameter token: (path) Unique identifier of the card. 
     - parameter count: (query) Number of card transitions to retrieve. (optional, default to 5)
     - parameter startIndex: (query) Sort order index of the first resource in the returned array. (optional, default to 0)
     - parameter fields: (query) Comma-delimited list of fields to return (&#x60;field_1,field_2&#x60;, and so on). Leave blank to return all fields. (optional)
     - parameter sortBy: (query) Field on which to sort. Use any field in the resource model, or one of the system fields &#x60;lastModifiedTime&#x60; or &#x60;createdTime&#x60;. Prefix the field name with a hyphen (&#x60;-&#x60;) to sort in descending order. Omit the hyphen to sort in ascending order. (optional, default to -createdTime)

     - returns: RequestBuilder<CardTransitionListResponse> 
     */
    open class func getCardtransitionsCardTokenWithRequestBuilder(token: String, count: Int? = nil, startIndex: Int? = nil, fields: String? = nil, sortBy: String? = nil) -> RequestBuilder<CardTransitionListResponse> {
        var path = "/cardtransitions/card/{token}"
        let tokenPreEscape = "\(token)"
        let tokenPostEscape = tokenPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{token}", with: tokenPostEscape, options: .literal, range: nil)
        let URLString = Marqeta.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "count": count?.encodeToJSON(), 
                        "start_index": startIndex?.encodeToJSON(), 
                        "fields": fields, 
                        "sort_by": sortBy
        ])


        let requestBuilder: RequestBuilder<CardTransitionListResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Retrieve card transition

     - parameter token: (path) Unique identifier of the card transition. Send a &#x60;GET&#x60; request to &#x60;/cardtransitions/card/{token}&#x60; to retrieve card transition tokens for a specific card. 
     - parameter fields: (query) Comma-delimited list of fields to return (&#x60;field_1,field_2&#x60;, and so on). Leave blank to return all fields. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getCardtransitionsToken(token: String, fields: String? = nil, completion: @escaping ((_ data: CardTransitionResponse?,_ error: Error?) -> Void)) {
        getCardtransitionsTokenWithRequestBuilder(token: token, fields: fields).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Retrieve card transition
     - GET /cardtransitions/{token}

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "expedite" : false,
  "reason" : "reason",
  "fulfillment_status" : "ISSUED",
  "channel" : "API",
  "type" : "fulfillment.issued",
  "bulk_issuance_token" : "bulk_issuance_token",
  "reason_code" : "00",
  "card_product_token" : "card_product_token",
  "new_pan_from_card_token" : "new_pan_from_card_token",
  "last_four" : "last_four",
  "state" : "ACTIVE",
  "user_token" : "user_token",
  "validations" : {
    "user" : {
      "random_name_line1_postfix" : false,
      "phone" : false,
      "birth_date" : false,
      "ssn" : false
    }
  },
  "pan" : "pan",
  "barcode" : "barcode",
  "created_time" : "2000-01-23T04:56:07.000+00:00",
  "pin_is_set" : false,
  "expiration_time" : "expiration_time",
  "token" : "token",
  "reissue_pan_from_card_token" : "reissue_pan_from_card_token",
  "card_token" : "card_token",
  "expiration" : "expiration",
  "fulfillment" : {
    "shipping" : {
      "care_of_line" : "care_of_line",
      "method" : "LOCAL_MAIL",
      "recipient_address" : {
        "zip" : "zip",
        "country" : "country",
        "address2" : "address2",
        "city" : "city",
        "phone" : "phone",
        "address1" : "address1",
        "last_name" : "last_name",
        "state" : "state",
        "middle_name" : "middle_name",
        "postal_code" : "postal_code",
        "first_name" : "first_name"
      }
    },
    "card_fulfillment_reason" : "NEW",
    "card_personalization" : {
      "carrier" : {
        "message_file" : "message_file",
        "logo_file" : "logo_file",
        "message_line" : "message_line",
        "template_id" : "template_id",
        "logo_thumbnail_file" : "logo_thumbnail_file"
      },
      "images" : {
        "carrier" : {
          "message_1" : "message_1",
          "name" : "name"
        },
        "signature" : {
          "name" : "name"
        },
        "carrier_return_window" : {
          "name" : "name"
        },
        "card" : {
          "name" : "name",
          "thermal_color" : "thermal_color"
        }
      },
      "text" : {
        "name_line_1" : {
          "value" : "value"
        }
      },
      "perso_type" : "EMBOSS"
    }
  },
  "user" : {
    "metadata" : {
      "key" : "metadata"
    }
  },
  "card" : {
    "metadata" : {
      "key" : "metadata"
    }
  }
}}]
     - parameter token: (path) Unique identifier of the card transition. Send a &#x60;GET&#x60; request to &#x60;/cardtransitions/card/{token}&#x60; to retrieve card transition tokens for a specific card. 
     - parameter fields: (query) Comma-delimited list of fields to return (&#x60;field_1,field_2&#x60;, and so on). Leave blank to return all fields. (optional)

     - returns: RequestBuilder<CardTransitionResponse> 
     */
    open class func getCardtransitionsTokenWithRequestBuilder(token: String, fields: String? = nil) -> RequestBuilder<CardTransitionResponse> {
        var path = "/cardtransitions/{token}"
        let tokenPreEscape = "\(token)"
        let tokenPostEscape = tokenPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{token}", with: tokenPostEscape, options: .literal, range: nil)
        let URLString = Marqeta.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "fields": fields
        ])


        let requestBuilder: RequestBuilder<CardTransitionResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Create card transition

     - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postCardtransitions(body: CardTransitionRequest? = nil, completion: @escaping ((_ data: CardTransitionResponse?,_ error: Error?) -> Void)) {
        postCardtransitionsWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create card transition
     - POST /cardtransitions

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "expedite" : false,
  "reason" : "reason",
  "fulfillment_status" : "ISSUED",
  "channel" : "API",
  "type" : "fulfillment.issued",
  "bulk_issuance_token" : "bulk_issuance_token",
  "reason_code" : "00",
  "card_product_token" : "card_product_token",
  "new_pan_from_card_token" : "new_pan_from_card_token",
  "last_four" : "last_four",
  "state" : "ACTIVE",
  "user_token" : "user_token",
  "validations" : {
    "user" : {
      "random_name_line1_postfix" : false,
      "phone" : false,
      "birth_date" : false,
      "ssn" : false
    }
  },
  "pan" : "pan",
  "barcode" : "barcode",
  "created_time" : "2000-01-23T04:56:07.000+00:00",
  "pin_is_set" : false,
  "expiration_time" : "expiration_time",
  "token" : "token",
  "reissue_pan_from_card_token" : "reissue_pan_from_card_token",
  "card_token" : "card_token",
  "expiration" : "expiration",
  "fulfillment" : {
    "shipping" : {
      "care_of_line" : "care_of_line",
      "method" : "LOCAL_MAIL",
      "recipient_address" : {
        "zip" : "zip",
        "country" : "country",
        "address2" : "address2",
        "city" : "city",
        "phone" : "phone",
        "address1" : "address1",
        "last_name" : "last_name",
        "state" : "state",
        "middle_name" : "middle_name",
        "postal_code" : "postal_code",
        "first_name" : "first_name"
      }
    },
    "card_fulfillment_reason" : "NEW",
    "card_personalization" : {
      "carrier" : {
        "message_file" : "message_file",
        "logo_file" : "logo_file",
        "message_line" : "message_line",
        "template_id" : "template_id",
        "logo_thumbnail_file" : "logo_thumbnail_file"
      },
      "images" : {
        "carrier" : {
          "message_1" : "message_1",
          "name" : "name"
        },
        "signature" : {
          "name" : "name"
        },
        "carrier_return_window" : {
          "name" : "name"
        },
        "card" : {
          "name" : "name",
          "thermal_color" : "thermal_color"
        }
      },
      "text" : {
        "name_line_1" : {
          "value" : "value"
        }
      },
      "perso_type" : "EMBOSS"
    }
  },
  "user" : {
    "metadata" : {
      "key" : "metadata"
    }
  },
  "card" : {
    "metadata" : {
      "key" : "metadata"
    }
  }
}}]
     - parameter body: (body)  (optional)

     - returns: RequestBuilder<CardTransitionResponse> 
     */
    open class func postCardtransitionsWithRequestBuilder(body: CardTransitionRequest? = nil) -> RequestBuilder<CardTransitionResponse> {
        let path = "/cardtransitions"
        let URLString = Marqeta.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<CardTransitionResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
}
