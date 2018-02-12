## Day 1
A Wright Welcome. Kick-off Keynote. Afternoon panels and contender social.

## Day 2
Dig In. Contender Roundtable. Keynote. Panel Sessions. Wright Rendezvous. Golden Night.

## Day 3
Wright Insights. Last Keynote. Contender Product Gallery. Award Night!

### Use Google Calendar, iCal, or Outlook?
Subscribe to the schedule and make it easy to look up all of the details on-the-go.
{% assign webcal_url = "schedule.ics" | absolute_url | replace: "http", "webcal" %}

<a class="calendar-button" href="{{ webcal_url }}">
  <i class="fa fa-calendar" aria-hidden="true"></i>
  Add to Outlook/iCal
</a>
<a class="calendar-button" href="http://www.google.com/calendar/render?cid={{ webcal_url }}" target="_blank">
  <i class="fa fa-calendar" aria-hidden="true"></i>
  Add to Google Calendar
</a>

{% assign talks_by_day = site.talks | sort: "date" | group_by_exp: "talk", "talk.date | date: '%A, %-m/%-d'" %}

{% for day in talks_by_day %}

## {{ day.items.first.date | date: '%A, %-m/%-d'" }}
{% for talk in day.items -%}
- [{{ talk.date | date: "%-I:%M %P" }} &mdash; {{ talk.title }}]({{ talk.url }})
{% endfor -%}
{%- endfor -%}