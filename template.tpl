___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Adsmurai Facebook Conversions API Tag",
  "categories": ["ADVERTISING", "CONVERSIONS", "REMARKETING"],
  "brand": {
    "id": "brand_dummy",
    "displayName": "Adsmurai",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGAAAABgCAMAAADVRocKAAAAAXNSR0IB2cksfwAAAAlwSFlzAAALEwAACxMBAJqcGAAAAYlQTFRF////+uHm7pCi5FBu5E9t63+V+NLZ8qm32xlA2xg/7Iab8ai37Ymd8qy68aOz64GW8J+v8KKx7ISZ6nqQ8KGx3SVK5mJ9405s5mB65Vx34Dpc987W6nyS3zRW5FVx5Vp2/O7x3ilN9sLM4Dla/O3w5l14+t/l3SZL6nmQ5FFu/fDz3BxC52iB++Po9cHM6nuR9LjE3SNI+t7k9sbQ3CBG9LnF4kZl/Ovu9sXP9b/K4DdZ3ipO8aa19snS9b3I5FRx3zJV/vb3++Xp++bq87C94Txd++To98rT64CW40po9b/J5FJv4kNi40xq7pGk87K//fX33B1D4T5f3zBT9sPN8aKy9LvG5Vl14T1e/fP16GuE7Iec5Vh08aS03SZK4Dtc87XB+NDY3ihN87PA8Jyt6XSM2xpA3zNW8q689LbD//z95Vt352R+/Ozv+NPa5Vd0636U+NTc5l557Iaa3B9F401r40tp3y9S6GqD//7+6XWM5VZz//396G6G5FZy52eA9LrG3SRJ8ae2IEVM2QAAArlJREFUeJztl2dXE0EUhq9ATK4RsJBgAcSCDWNvIIqi2Ii9xS5i74q94y93svfOuJtsdmdnZ7945vn07uzkvWefTeYAgMPhcDgcSZnX1t6Rm59df76AdRZk1V9EZmE2/Z2oaMuivwt9dNvvL2IA65Y6sQHLlroa+y1bKjb3W7XU5MeypRA/Vi2F+rFoqYUfa5YWRfVbsLQ4uj+1pdh+xCVp+mP8EEvN+yPf7z+M33Rer9/4PfTo9iPmTPo1/Rhb8vsplVXsXabi8hVpLAX8rIQ+Tv0AAxxXweBqc0sBP2vEAk1Yuw7khCGR1m8wtZRv7AfYKNKmzV4UE4a3eKlSMrMU8LOVF7chbuc4gDs47TSyFPCzSy334e49asLefZRMLAX87PfdEJZG1IRR0gWVA0ktjfn7DwZuCUuHOI7j4SOUJvwTNE7voyF+Bsf4pvguHVPPMMmWjvsnnIgdcDLEzyns4SQsnVYTpCX/M0zFDqg2+zkj8lnOwtI5jsLS+aYJF2IHXJRbL13mFTocrvBVN+JVjtewdp1SpSY/VYgdcENuvckLt/j6Nl+Pyp8ewB28y89wT35qMnbAtNx6f8a7bldP/8C7flj/J4R+D+VHyBOmH8tNT2IHeGcC8RTg2XPfO69bekGxbonOpNpLgFcFueV1fD/AG9U4Ar3oZwbUuf1Wnar9MDEsV9/p9APMyv3vOwL9WPigYumjitVPMn3+ojcAvqIR3zTrA5YSoOmnwZI+2n4MLSXwQyS0lMgPkchSQj9EAkuJ/RDalgz8EJqWjPwQWpYM/RAalobS9PvP1haUv6cbAD+i+3+mrIeYN/0rfT9ALsKPjf6I75IFP0QLS1b8EKGWLPkhQixZ80M0WbLoh2iwZNUPEbBk2Q8xm6EfIpehH4Itaf19aMbvqbm56p/s+h0Oh8Px3/IXwWKBQ9FDA/4AAAAASUVORK5CYII\u003d"
  },
  "description": "This Tag is ready to handle events emitted by \"Adsmurai Facebook Conversions API Client\" and send them to Facebook\u0027s Conversions API.",
  "containerContexts": [
    "SERVER"
  ]
}


___TEMPLATE_PARAMETERS___

[]


___SANDBOXED_JS_FOR_SERVER___

const getAllEventData = require('getAllEventData');
const sendHttpRequest = require('sendHttpRequest');
const sendMessage = require('sendMessage');
const JSON = require('JSON');

const event = getAllEventData();
const requestUrl = 'https://graph.facebook.com/v9.0/' + event.pixel_id + '/events?access_token=' + event.access_token;

sendHttpRequest(requestUrl, (statusCode, headers, body) => {
    const result = {
        status: statusCode,
        body: JSON.parse(body)
    };

    sendMessage('fb_event_processed', result);

    if (statusCode === 200) {
        data.gtmOnSuccess();
    } else {
        data.gtmOnFailure();
    }

}, {method: 'POST', headers: {'Content-Type': 'application/json'}}, JSON.stringify(event));


___SERVER_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "send_http",
        "versionId": "1"
      },
      "param": [
        {
          "key": "allowedUrls",
          "value": {
            "type": 1,
            "string": "any"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "read_event_data",
        "versionId": "1"
      },
      "param": [
        {
          "key": "eventDataAccess",
          "value": {
            "type": 1,
            "string": "any"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "use_message",
        "versionId": "1"
      },
      "param": [
        {
          "key": "allowedActions",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "messageTypes",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "type"
                  },
                  {
                    "type": 1,
                    "string": "action"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "fb_event_processed"
                  },
                  {
                    "type": 1,
                    "string": "send"
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Version 0.2


