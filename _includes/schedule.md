For 2018, The Wright expands into three days of keynote speakers, panel discussions, workshops and events intended to foster collaboration, provoke discussion and stoke the fires of outdoor-inspired entrepreneurship.

We’ve worked hard to bring high-level, inspirational talks and tactical workshops with hard-skill takeaways to you at no cost. All afternoon sessions ­ keynote speakers, panel discussions, workshops ­ are **FREE and open-to-the-public** (though we do ask that you register in advance). This unique opportunity is made possible through the generous support of our partners and, new this year, our patrons. 

## KEYNOTES
### Tuesday - Thursday, 11:30am to 12:30pm
Join us each day for an inspiring keynote speaker exploring the theme of bold, principled, collaborative leadership.

{% assign keynotes_by_day = 
  site.talks | 
  where: "kind", "keynote" | 
  sort: "date" %}
{% for keynote in keynotes_by_day %}

### [{{ keynote.date | date: '%A'" }} &mdash; {{ keynote.title }}]({{ keynote.url }})
{% endfor %}

## PANELS
### Tuesday through Thursday, 1:30pm to 4:30pm
Oriented around topics of critical importance to entrepreneurs in the outdoor space, the panel discussions will include subject-matter experts and industry veterans providing their insights and expertise.  

{% assign talks_by_day = 
  site.talks | 
  where: "kind", "session" | 
  sort: "date" | 
  group_by_exp: "talk", "talk.date | 
  date: '%A, %-m/%-d'" %}

{% for day in talks_by_day %}

## {{ day.items.first.date | date: '%A, %-m/%-d'" }}
{% for talk in day.items -%}
- [{{ talk.date | date: "%-I:%M%P" }} &mdash; {{ talk.title }}]({{ talk.url }})
{% endfor -%}
{%- endfor %}

## GOLDEN NIGHT
### Wednesday 5/2 at 7pm
Explore our new home in Golden with social events and specials hosted by friends new and old. Get to know the members of The Wright community and see what makes them unique. 

## PRODUCT GALLERY
### Thursday 5/3 at 5:30pm
Ahead of Award Night, get a first look at the contenders who will be vying for the 2018 prize. Get to know their founders, hear their stories, and explore their products with hands-on demos.

## AWARD NIGHT
### Thursday 5/3 at 6:30pm
The culminating event of The Wright, Award Night features the first-time public screening of 90-second videos produced and submitted by each of the contenders. As part of their selection, each company is charged with conveying through video their vision, their mission and their inspiration. The debut of the contender videos is followed by the announcement of three finalists who take the stage together and face a rapid-fire Q&A session from a panel of judges. The judges, in turn, are tasked with selecting the winner and presenting the $5,000 prize. For 2018, Award Night is being hosted in partnership with Colorado School of Mines at Lockridge Arena. 

<span class="disclaimer">
Please be aware that our session locations are intimate venues with limited seating available for sessions. If you’re planning to attend a session, please arrive early knowing that even arriving early does not guarantee access.
</span>
