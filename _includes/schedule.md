For 2018, The Wright expands into three days of keynote speakers, panel discussions, workshops and events intended to foster collaboration, provoke discussion and stoke the fires of outdoor-inspired entrepreneurship.

We’ve worked hard to bring high-level, inspirational talks and tactical workshops with hard-skill takeaways to you at no cost. All afternoon sessions ­ keynote speakers, panel discussions, workshops ­ are **FREE and open-to-the-public** (though we do ask that you register in advance). This unique opportunity is made possible through the generous support of our partners and, new this year, our patrons. 

Be sure to grab a ticket for our culminating event - Award Night - hosted this year in partnership with the Colorado School of Mines at Lockridge Arena.

## SCHEDULE
### Use Google Calendar, iCal, or Outlook?
Subscribe to the full schedule and make it easy to look up all of the details on-the-go.
{% assign webcal_url = "schedule.ics" | absolute_url | replace: "http", "webcal" %}

<a class="calendar-button" href="{{ webcal_url }}">
  <i class="fa fa-calendar" aria-hidden="true"></i>
  Add to Outlook/Apple Calendar
</a>
<a class="calendar-button" href="http://www.google.com/calendar/render?cid={{ webcal_url }}" target="_blank">
  <i class="fa fa-calendar" aria-hidden="true"></i>
  Add to Google Calendar
</a>

{% assign events_by_day = 
  events | 
  sort: "date" | 
  group_by_exp: "event", "event.date | date: '%A, %-m/%-d'" %}
{% for day in events_by_day %}

## {{ day.items.first.date | date: '%A, %-m/%-d'" }}

{% for event in day.items -%}
{% if event.format %}
- [{{ event.date | date: "%-I:%M %P" }} &mdash; {{ event.format }}: {{ event.title }} ({{ event.location_name }})]({{ event.url }})
{% else %}
- [{{ event.date | date: "%-I:%M %P" }} &mdash; {{ event.title }} ({{ event.location_name }})]({{ event.url }})
{% endif %}
{% endfor -%}
{%- endfor %}

<span class="disclaimer">
Please be aware that many of our session locations are intimate venues with limited seating available for sessions. If you’re planning to attend a session, please arrive early knowing that even arriving early does not guarantee access.
</span>
