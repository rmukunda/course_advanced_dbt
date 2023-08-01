# Bingeflix Docs
This file contains docs blocks for Bingeflix sources

## Users
This section contains documentation from the Bingeflix Users table.

{% docs bingeflix_user_id %}
The unique identifier of the Bingeflix user.
{% enddocs %}

## Events
{% docs table_events %}
This table contains clickstream events from the marketing website.

The events in this table are recorded by Snowplow and piped into the warehouse on an hourly basis. The following pages of the marketing site are tracked:
 - /
 - /about
 - /team
 - /contact-us
{% enddocs %}

{% docs event_id %}
The unique identifier for the event.
{% enddocs %}

## Subscriptions

{% docs subscription_id %} Unique Id for a subscription instance {% enddocs %}

## Session

{% docs session_id %} Unique Id for a session {% enddocs %}