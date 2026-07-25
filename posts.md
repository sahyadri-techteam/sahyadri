---
layout: page
title: "Newsletter"
permalink: /posts/
---

<style>
  .tabs-container {
    width: 100%;
    margin: 2rem 0 3rem 0;
    border-bottom: 1px solid #e2e8f0;
  }
  .academic-tabs {
    display: flex;
    justify-content: center;
    gap: 2.5rem;
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 1rem;
  }
  .tab-link {
    background: none;
    border: none;
    outline: none;
    padding: 0.75rem 0;
    color: #718096;
    cursor: pointer;
    transition: all 0.2s ease-in-out;
    border-bottom: 3px solid transparent;
  }
  .tab-link:hover, .tab-link.active {
    color: #5f745f;
    border-bottom: 3px solid #5f745f;
  }
  .academic-panel {
    display: none;
  }
  .academic-panel.active {
    display: block;
    animation: fadeIn 0.4s ease;
  }
  .post-subtitle {
    font-family: 'Amatic SC', cursive, sans-serif !important;
  }
  .post-subtitle a {
    font-family: inherit;
    color: #5f745f;
    text-decoration: none;
  }
  .post-subtitle a:hover {
    text-decoration: underline;
  }
  .post-entry-container {
    display: flex;
    gap: 1.5rem;
    align-items: flex-start;
    margin-top: 1rem;
  }
  .post-image img {
    border-radius: 6px;
    box-shadow: 0 2px 4px rgba(0,0,0,0.1);
  }
  .post-read-more {
    display: inline-block;
    margin-left: 0.5rem;
    color: #5f745f;
    font-weight: 600;
    text-decoration: none;
    transition: color 0.2s ease;
  }
  .post-read-more:hover {
    color: #3b4a3b;
    text-decoration: underline;
  }
  .no-posts-msg {
    color: #718096;
    font-style: italic;
    padding: 2rem 0;
  }
  @keyframes fadeIn {
    from { opacity: 0; transform: translateY(4px); }
    to { opacity: 1; transform: translateY(0); }
  }
  @media (max-width: 767px) {
    .academic-tabs {
      gap: 1rem;
      justify-content: flex-start;
      overflow-x: auto;
      white-space: nowrap;
      padding-bottom: 0.5rem;
      -webkit-overflow-scrolling: touch;
    }
    .tab-link {
      padding: 0.5rem 0.25rem;
    }
    .tabs-container {
      margin: 1rem 0 2rem 0;
    }
    .post-entry-container {
      flex-direction: column;
      gap: 1rem;
    }
    .post-image img {
      width: 100%;
      height: auto;
    }
  }
</style>

{% comment %}
  Academic year: June 1 (year X) to March 31 (year X+1)
  Jun-Dec → ay_start = that year      e.g. Jul 2026 → AY 2026-27
  Jan-May → ay_start = previous year  e.g. Jan 2026 → AY 2025-26
{% endcomment %}

{% assign ay_start_years = "" %}

{% for post in site.posts %}
  {% assign post_month = post.date | date: "%m" | plus: 0 %}
  {% assign post_year  = post.date | date: "%Y" %}

  {% if post_month >= 6 %}
    {% assign ay_start = post_year %}
  {% else %}
    {% assign ay_start = post_year | minus: 1 | append: "" | remove: ".0" %}
  {% endif %}

  {% assign padded = "|" | append: ay_start_years | append: "|" %}
  {% assign needle  = "|" | append: ay_start | append: "|" %}
  {% unless padded contains needle %}
    {% if ay_start_years == "" %}
      {% assign ay_start_years = ay_start %}
    {% else %}
      {% assign ay_start_years = ay_start_years | append: "|" | append: ay_start %}
    {% endif %}
  {% endunless %}
{% endfor %}

{% assign year_blocks         = ay_start_years | split: "|" | sort | reverse %}
{% assign default_active_year = year_blocks[0] %}

<div id="top" style="scroll-margin-top: 200px;"></div>

<div class="tabs-container">
  <div class="academic-tabs">
    {% for ay in year_blocks %}
      {% assign ay_end_year  = ay | plus: 1 | append: "" | remove: ".0" %}
      {% assign ay_short_end = ay_end_year | slice: 2, 2 %}
      {% assign tab_id       = "ay-" | append: ay | append: "-" | append: ay_short_end %}

      <button
        class="tab-link {% if ay == default_active_year %}active{% endif %}"
        onclick="switchAcademicYear(event, '{{ tab_id }}')">
        {{ ay }}&#8211;{{ ay_short_end }}
      </button>
    {% endfor %}
  </div>
</div>

{% assign grouped_posts = site.posts | group_by: "category" %}

{% for ay in year_blocks %}
  {% assign ay_end_year         = ay | plus: 1 | append: "" | remove: ".0" %}
  {% assign ay_short_end        = ay_end_year | slice: 2, 2 %}
  {% assign academic_start_date = ay | append: "-06-01" %}
  {% assign academic_end_date   = ay_end_year | append: "-03-31" %}
  {% assign panel_id            = "ay-" | append: ay | append: "-" | append: ay_short_end %}
  {% assign is_active           = false %}
  {% if ay == default_active_year %}{% assign is_active = true %}{% endif %}

  <div id="{{ panel_id }}" class="academic-panel {% if is_active %}active{% endif %}">
    <div class="newsletter-container">

      <aside class="toc-sidebar">
        <nav class="toc-card">
          <h2 class="toc-title">Editions</h2>
          <ul class="toc-list">
            {% for group in grouped_posts %}
              {% assign has_posts = false %}
              {% for item in group.items %}
                {% assign item_date = item.date | date: "%Y-%m-%d" %}
                {% if item_date >= academic_start_date and item_date <= academic_end_date %}
                  {% assign has_posts = true %}
                  {% break %}
                {% endif %}
              {% endfor %}
              {% if has_posts %}
                {% assign cat_id = panel_id | append: "-" | append: group.name | slugify %}
                <li><a href="#{{ cat_id }}">{{ group.name | default: "General Updates" }}</a></li>
              {% endif %}
            {% endfor %}
          </ul>
        </nav>
      </aside>

      <div class="posts-list">
        {% assign total_posts = 0 %}

        {% for group in grouped_posts %}
          {% assign pinned_posts = group.items | where: "pinned", true %}
          {% assign normal_posts = group.items | where_exp: "item", "item.pinned != true" %}
          {% assign sorted_posts = pinned_posts | concat: normal_posts %}
          {% assign group_count  = 0 %}

          {% capture group_html %}
            {% for post in sorted_posts %}
              {% assign post_date = post.date | date: "%Y-%m-%d" %}
              {% if post_date >= academic_start_date and post_date <= academic_end_date %}
                {% assign group_count = group_count | plus: 1 %}
                <article class="post-preview">
                  <a href="{{ post.url | relative_url }}" style="text-decoration: none;">
                    <h3 class="post-title">{{ post.title }}</h3>
                  </a>

                  {% if post.subtitle %}
                    <h4 class="post-subtitle">
                      By
                      {% if post.profile-link %}
