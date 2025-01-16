---
layout: page
title: States to visit in India
permalink: /states/
---

<div class="row listrecent">
{% assign sorted_tags = site.tags | sort %}
{% for category in sorted_tags %}
<div class="section-title col-md-12 mt-4">
<h2 id="{{ category[0] | replace: " ","-" }}"> <span class="text-capitalize"><a class="smoothscroll" href="{{site.baseurl}}/places-to-visit-in-{{ category[0] | downcase | replace: " ","-" }}/">{{ category[0] }}</a></span></h2>
</div>


{% comment %}
    {% assign pages_list = category[1] %}
    {% for post in pages_list %}
    {% if post.title != null %}
    {% if group == null or group == post.group %}
    {% include postbox.html %}
    {% endif %}
    {% endif %}
    {% endfor %}
    {% assign pages_list = nil %}
{% endcomment %}


{% assign group = nil %}
{% endfor %}
</div>