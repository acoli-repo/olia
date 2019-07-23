---
layout: base
title:  'Finnish Relations'
generated: 'true'
permalink: fi/dep/index.html
---

Note: This document is a draft. Not all relations have been converted to USD-compatible description yet.

{% include fi-dep-table.html %}

----------

Alphabetical listing

{% assign sorted = site.fi-dep | sort: 'title' %}{% for p in sorted %}
* [{{ p.title }}](): {{ p.shortdef }}{% endfor %}
