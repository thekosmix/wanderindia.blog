---
layout: page
title: Trips and travel categories
permalink: /trips-and-travel-categories/
---

<div class="row category-grid mt-4">
  {% assign sorted_cats = site.categories | sort %}
  {% for category in sorted_cats %}
    {% assign category_name = category[0] %}
    {% assign posts = category[1] %}
    {% assign post_count = posts | size %}
    
    {% comment %} Find the first post with an image to use as the card image {% endcomment %}
    {% assign category_image = nil %}
    {% for post in posts %}
      {% if post.image %}
        {% assign category_image = post.image %}
        {% break %}
      {% endif %}
    {% endfor %}
    
    <div class="col-lg-4 col-md-6 mb-4 col-sm-12">
      <div class="card-category-container">
        <a href="{{ site.baseurl }}/trips-and-travel-categories/{{ category_name | downcase | replace: ' ', '-' }}/" class="card-category-link">
          <div class="card-category-image-box">
            {% if category_image %}
              <img src="{% if category_image contains '://' %}{{ category_image }}{% else %}{{ site.baseurl }}/{{ category_image }}{% endif %}" alt="{{ category_name }}" class="card-category-img" loading="lazy" />
            {% else %}
              <div class="card-category-img-fallback"></div>
            {% endif %}
            <div class="card-category-overlay"></div>
            <div class="card-category-badge">{{ post_count }} {% if post_count == 1 %}Post{% else %}Posts{% endif %}</div>
          </div>
          <div class="card-category-content">
            <h3 class="card-category-title text-capitalize">{{ category_name }}</h3>
            <div class="card-category-footer">
              <span class="card-category-explore">Explore Category</span>
              <span class="card-category-arrow">
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
/* Modern CSS Custom variables for Trips and Travel Categories Grid */
:root {
  --brand-primary: #00ab6b;
  --brand-hover: #038252;
}

.category-grid {
  margin-top: 1.5rem;
}

.card-category-container {
  background: #ffffff;
  border-radius: 16px;
  overflow: hidden;
  box-shadow: 0 10px 30px rgba(0, 0, 0, 0.04);
  border: 1px solid rgba(0, 0, 0, 0.06);
  transition: transform 0.3s cubic-bezier(0.25, 0.8, 0.25, 1), box-shadow 0.3s cubic-bezier(0.25, 0.8, 0.25, 1), border-color 0.3s ease;
  height: 100%;
}

.card-category-container:hover {
  transform: translateY(-8px);
  box-shadow: 0 20px 40px rgba(0, 0, 0, 0.08);
  border-color: rgba(0, 171, 107, 0.3);
}

.card-category-link {
  text-decoration: none !important;
  color: inherit;
  display: flex;
  flex-direction: column;
  height: 100%;
}

.card-category-image-box {
  position: relative;
  width: 100%;
  padding-top: 56.25%; /* 16:9 Aspect Ratio */
  overflow: hidden;
  background-color: #f7f9fa;
}

.card-category-img {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  object-fit: cover;
  transition: transform 0.6s cubic-bezier(0.25, 0.8, 0.25, 1);
}

.card-category-container:hover .card-category-img {
  transform: scale(1.08);
}

.card-category-img-fallback {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: linear-gradient(135deg, var(--brand-primary) 0%, var(--brand-hover) 100%);
}

.card-category-overlay {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: linear-gradient(to bottom, rgba(0,0,0,0) 60%, rgba(0,0,0,0.15) 100%);
  opacity: 0.85;
  transition: opacity 0.3s ease;
}

.card-category-badge {
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

.card-category-container:hover .card-category-badge {
  background: var(--brand-primary);
  color: #ffffff;
}

.card-category-content {
  padding: 1.5rem;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  flex-grow: 1;
}

.card-category-title {
  font-family: inherit;
  font-size: 1.35rem;
  font-weight: 700;
  color: #2c3e50;
  margin-bottom: 1.25rem;
  line-height: 1.25;
  transition: color 0.2s ease;
}

.card-category-container:hover .card-category-title {
  color: var(--brand-primary);
}

.card-category-footer {
  display: flex;
  align-items: center;
  justify-content: space-between;
  margin-top: auto;
  border-top: 1px solid #f0f0f0;
  padding-top: 1rem;
}

.card-category-explore {
  font-size: 0.85rem;
  font-weight: 700;
  color: #7f8c8d;
  letter-spacing: 0.5px;
  text-transform: uppercase;
  transition: color 0.2s ease;
}

.card-category-container:hover .card-category-explore {
  color: var(--brand-primary);
}

.card-category-arrow {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  color: #7f8c8d;
  transition: transform 0.3s ease, color 0.3s ease;
}

.card-category-container:hover .card-category-arrow {
  color: var(--brand-primary);
  transform: translateX(5px);
}
</style>