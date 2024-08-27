---
layout: archive
title: "GIS Portfolio"
permalink: /portfolio/
author_profile: true
---


{% include base_path %}
Welcome to my GIS portfolio. Below you can browse examples of my work compiled over the past two years.
-----------------------------------


{% for post in site.portfolio %}
  {% include archive-single.html %}
{% endfor %}
