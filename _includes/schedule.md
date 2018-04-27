For 2018, The Wright expands into three days of keynote speakers, panel discussions, workshops and events intended to foster collaboration, provoke discussion and stoke the fires of outdoor-inspired entrepreneurship.

We’ve worked hard to bring high-level, inspirational talks and tactical workshops with hard-skill takeaways to you at no cost. All afternoon sessions ­ keynote speakers, panel discussions, workshops ­ are **FREE and open-to-the-public** (though we do ask that you register in advance). This unique opportunity is made possible through the generous support of our partners and, new this year, our patrons. 

Be sure to grab a ticket for our culminating event - Award Night - hosted this year in partnership with the Colorado School of Mines at Lockridge Arena.

## SCHEDULE
{% assign events_by_day = 
  site.events | 
  sort: "date" | 
  group_by_exp: "event", "event.date | date: '%A, %-m/%-d'" %}
{% for day in events_by_day %}

## {{ day.items.first.date | date: '%A, %-m/%-d'" }}

{% for event in day.items -%}
- [{{ event.date | date: "%-I:%M %P" }} &mdash; {{ event.format }}: {{ event.title }} ({{ event.location_name }})]({{ event.url }})
{% endfor -%}
{%- endfor %}

<span class="disclaimer">
Please be aware that many of our session locations are intimate venues with limited seating available for sessions. If you’re planning to attend a session, please arrive early knowing that even arriving early does not guarantee access.
</span>
