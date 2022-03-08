# Adsmurai Facebook Conversions API Tag

This Google Tag Manager custom tag for server containers helps with sending events to Facebook through Conversions API.

## Installation

This template is not available on the Community Template Gallery yet, so it has to be installed manually following these instructions:
- Download "template.tpl" from this repository.
- Open your GTM server container and click on "Templates".
- On "Tag Templates", click "New".
- Click on the three dots in the top right corner, and then "Import".
- Open the file you downloaded on the first step.
- Once the importing is done, click "Save" and close the modal.

## How it works

On GTM server

1. [Setup this client](https://github.com/Adsmurai-Google-Tag-Manager-Templates/adsmurai-facebook-conversions-api-client) and name it `Facebook CAPI client`. 
2. Create a new trigger with `Custom` (Not `Custom event`) type and rule it to fire when: Client name -> equals -> `Facebook CAPI client`.
3. Set the tag with the above trigger.

* Notice that `Facebook CAPI client` can be any name as long is the same in the Client and Tag trigger (Server container). Actually the point is to correlate the Client name with the trigger. You could use any operator other than 'equals' provided it makes the Tag fire in the context of this Client only, not too broad to overlap with other Clients you may have. The 'equals' rule is simple enough and works.

Besides the trigger, this tag doesn't require any additional configuration, because all the set up is done on the Adsmurai Facebook Conversions API Client custom tag `Facebook CAPI client`. However, you can change the Facebook Graph's API version to be used, if you want or need to.

## Getting help

If you have doubts or do you want to report feedback, please [submit an issue on Github](https://github.com/Adsmurai-Google-Tag-Manager-Templates/adsmurai-facebook-conversions-api-tag/issues/new).
