---
layout: page
title: Trips Yearbook
permalink: /trips-yearbook/
---

<div class="row yearbook-grid mt-4">
  {% assign sorted_dates = site.posts | where:"hidden",nill | group_by_exp: "post", "post.date | date: '%Y'" %}
  {% for sorted_date in sorted_dates %}
    {% assign year_name = sorted_date.name %}
    {% assign posts = sorted_date.items %}
    {% assign post_count = sorted_date.size %}
    
    {% comment %} Find the first post with an image to use as the card image {% endcomment %}
    {% assign year_image = nil %}
    {% for post in posts %}
      {% if post.image %}
        {% assign year_image = post.image %}
        {% break %}
      {% endif %}
    {% endfor %}
    
    <div class="col-lg-4 col-md-6 mb-4 col-sm-12">
      <div class="card-yearbook-container">
        <a href="{{ site.baseurl }}/trips-yearbook/{{ year_name }}/" class="card-yearbook-link">
          <div class="card-yearbook-image-box">
            {% if year_image %}
              <img src="{% if year_image contains '://' %}{{ year_image }}{% else %}{{ site.baseurl }}/{{ year_image }}{% endif %}" alt="{{ year_name }} Yearbook" class="card-yearbook-img" loading="lazy" />
            {% else %}
              <div class="card-yearbook-img-fallback"></div>
            {% endif %}
            <div class="card-yearbook-overlay"></div>
            <div class="card-yearbook-badge">{{ post_count }} {% if post_count == 1 %}Place{% else %}Places{% endif %}</div>
          </div>
          <div class="card-yearbook-content">
            <h3 class="card-yearbook-title">Trips of {{ year_name }}</h3>
            <div class="card-yearbook-footer">
              <span class="card-yearbook-explore">View Yearbook</span>
              <span class="card-yearbook-arrow">
                <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
                  <line x1="5" y1="12" x2="19" y2="12"></line>
                  <polyline points="12 5 19 12 12 19"></polyline>
                </svg>
              </span>
            </div>
          </div>
        </a>
      </div>
    </div>
  {% endfor %}
</div>

<style>
/* Modern CSS Custom variables for Yearbook Grid */
:root {
  --brand-primary: #00ab6b;
  --brand-hover: #038252;
}

.yearbook-grid {
  margin-top: 1.5rem;
}

.card-yearbook-container {
  background: #ffffff;
  border-radius: 16px;
  overflow: hidden;
  box-shadow: 0 10px 30px rgba(0, 0, 0, 0.04);
  border: 1px solid rgba(0, 0, 0, 0.06);
  transition: transform 0.3s cubic-bezier(0.25, 0.8, 0.25, 1), box-shadow 0.3s cubic-bezier(0.25, 0.8, 0.25, 1), border-color 0.3s ease;
  height: 100%;
}

.card-yearbook-container:hover {
  transform: translateY(-8px);
  box-shadow: 0 20px 40px rgba(0, 0, 0, 0.08);
  border-color: rgba(0, 171, 107, 0.3);
}

.card-yearbook-link {
  text-decoration: none !important;
  color: inherit;
  display: flex;
  flex-direction: column;
  height: 100%;
}

.card-yearbook-image-box {
  position: relative;
  width: 100%;
  padding-top: 56.25%; /* 16:9 Aspect Ratio */
  overflow: hidden;
  background-color: #f7f9fa;
}

.card-yearbook-img {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  object-fit: cover;
  transition: transform 0.6s cubic-bezier(0.25, 0.8, 0.25, 1);
}

.card-yearbook-container:hover .card-yearbook-img {
  transform: scale(1.08);
}

.card-yearbook-img-fallback {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: linear-gradient(135deg, var(--brand-primary) 0%, var(--brand-hover) 100%);
}

.card-yearbook-overlay {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: linear-gradient(to bottom, rgba(0,0,0,0) 60%, rgba(0,0,0,0.15) 100%);
  opacity: 0.85;
  transition: opacity 0.3s ease;
}

.card-yearbook-badge {
  position: absolute;
  top: 14px;
  right: 14px;
  background: rgba(255, 255, 255, 0.9);
  color: #111111;
  padding: 4px 12px;
  border-radius: 30px;
  font-size: 0.75rem;
  font-weight: 700;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.08);
  letter-spacing: 0.3px;
  z-index: 2;
  transition: background 0.3s ease, color 0.3s ease;
}

.card-yearbook-container:hover .card-yearbook-badge {
  background: var(--brand-primary);
  color: #ffffff;
}

.card-yearbook-content {
  padding: 1.5rem;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  flex-grow: 1;
}

.card-yearbook-title {
  font-family: inherit;
  font-size: 1.35rem;
  font-weight: 700;
  color: #2c3e50;
  margin-bottom: 1.25rem;
  line-height: 1.25;
  transition: color 0.2s ease;
}

.card-yearbook-container:hover .card-yearbook-title {
  color: var(--brand-primary);
}

.card-yearbook-footer {
  display: flex;
  align-items: center;
  justify-content: space-between;
  margin-top: auto;
  border-top: 1px solid #f0f0f0;
  padding-top: 1rem;
}

.card-yearbook-explore {
  font-size: 0.85rem;
  font-weight: 700;
  color: #7f8c8d;
  letter-spacing: 0.5px;
  text-transform: uppercase;
  transition: color 0.2s ease;
}

.card-yearbook-container:hover .card-yearbook-explore {
  color: var(--brand-primary);
}

.card-yearbook-arrow {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  color: #7f8c8d;
  transition: transform 0.3s ease, color 0.3s ease;
}

.card-yearbook-container:hover .card-yearbook-arrow {
  color: var(--brand-primary);
  transform: translateX(5px);
}
</style>