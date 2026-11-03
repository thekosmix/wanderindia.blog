---
layout: page
title: Travel Zones of India
permalink: /zones/
---

<div class="zones-intro mb-4">
  <p class="lead text-muted">
    India's immense geographic, climatic, and cultural diversity is organized into six major travel zones. From the glaciated peaks and royal deserts of the North to the tropical backwaters and spice hills of the South, choose a zone below to explore curated destinations, regional highlights, and comprehensive trip-planning guides.
  </p>
  
  <div class="alert alert-secondary d-flex align-items-center justify-content-between p-3 rounded-lg shadow-sm" style="background: #f8fafc; border: 1px solid #e2e8f0;">
    <div>
      <span class="font-weight-bold text-dark">Prefer exploring state by state?</span>
      <span class="d-block text-muted small">Browse destinations organized across all individual Indian States and Union Territories.</span>
    </div>
    <a href="{{ site.baseurl }}/states/" class="btn btn-sm btn-outline-dark font-weight-bold text-nowrap ml-3">Explore States &rarr;</a>
  </div>
</div>

<div class="row zone-grid mt-4">
  {% assign zone_list = "North India,North-East India,South India,West India,Central India,East India" | split: "," %}
  
  {% for zone_name in zone_list %}
    {% assign posts = site.tags[zone_name] %}
    {% assign post_count = posts | size %}
    
    {% assign zone_slug = zone_name | downcase | replace: ' ', '-' %}
    {% assign zone_image = nil %}
    {% assign guide_url = nil %}
    {% assign zone_desc = "" %}
    
    {% if zone_name == "North India" %}
      {% assign zone_image = "assets/images/spiti.webp" %}
      {% assign guide_url = "/trip-planning-in-north-india/" %}
      {% assign zone_desc = "Glaciated Himalayan passes, sacred river confluences, royal Thar desert forts, and historic capitals." %}
    {% elsif zone_name == "North-East India" %}
      {% assign zone_image = "assets/images/cherrapunji.webp" %}
      {% assign guide_url = "/trip-planning-in-north-east-india/" %}
      {% assign zone_desc = "Living root bridges, misty cloud rainforests, sacred monoliths, tea valleys, and serene Buddhist monasteries." %}
    {% elsif zone_name == "South India" %}
      {% assign zone_image = "assets/images/munnar.webp" %}
      {% assign guide_url = "/trip-planning-in-south-india/" %}
      {% assign zone_desc = "Western Ghats spice plantations, emerald backwaters, Dravidian temple monuments, and tropical coral lagoons." %}
    {% elsif zone_name == "West India" %}
      {% assign zone_image = "assets/images/rann-of-kutch.webp" %}
      {% assign zone_desc = "The endless white salt desert of Kutch, ancient coastal temples, Asiatic lion sanctuaries, and Portuguese enclaves." %}
    {% elsif zone_name == "Central India" %}
      {% assign zone_image = "assets/images/khajuraho.webp" %}
      {% assign zone_desc = "The architectural marvels of Khajuraho, sacred Mahakal corridors, and legendary tiger sanctuaries of the heartland." %}
    {% elsif zone_name == "East India" %}
      {% assign zone_image = "assets/images/darjeeling.webp" %}
      {% assign zone_desc = "Himalayan tea gardens of Darjeeling, sacred Jagannath coastlines of Odisha, and historic Gangetic heritage." %}
    {% endif %}

    <div class="col-lg-4 col-md-6 mb-4 col-sm-12">
      <div class="card-zone-container">
        <div class="card-zone-image-box">
          <a href="{{ site.baseurl }}/places-to-visit-in-{{ zone_slug }}/">
            <img src="{{ site.baseurl }}/{{ zone_image }}" alt="{{ zone_name }}" class="card-zone-img" loading="lazy" />
          </a>
          <div class="card-zone-overlay"></div>
          <div class="card-zone-badge">{{ post_count }} {% if post_count == 1 %}Place{% else %}Places{% endif %}</div>
          {% if guide_url %}
            <a href="{{ site.baseurl }}{{ guide_url }}" class="card-guide-pill" title="Read Trip Planning Guide">
              <span>★ Planning Guide</span>
            </a>
          {% endif %}
        </div>
        <div class="card-zone-content">
          <div>
            <h3 class="card-zone-title">
              <a href="{{ site.baseurl }}/places-to-visit-in-{{ zone_slug }}/">{{ zone_name }}</a>
            </h3>
            <p class="card-zone-desc">{{ zone_desc }}</p>
          </div>
          <div class="card-zone-footer">
            <a href="{{ site.baseurl }}/places-to-visit-in-{{ zone_slug }}/" class="card-zone-explore">
              Explore Places
              <span class="card-zone-arrow">
                <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
                  <line x1="5" y1="12" x2="19" y2="12"></line>
                  <polyline points="12 5 19 12 12 19"></polyline>
                </svg>
              </span>
            </a>
            {% if guide_url %}
              <a href="{{ site.baseurl }}{{ guide_url }}" class="card-zone-guide-link">Plan Trip &rarr;</a>
            {% endif %}
          </div>
        </div>
      </div>
    </div>
  {% endfor %}
</div>

<style>
.zone-grid {
  margin-top: 1.5rem;
}

.card-zone-container {
  background: #ffffff;
  border-radius: 16px;
  overflow: hidden;
  box-shadow: 0 10px 30px rgba(0, 0, 0, 0.04);
  border: 1px solid rgba(0, 0, 0, 0.06);
  transition: transform 0.3s cubic-bezier(0.25, 0.8, 0.25, 1), box-shadow 0.3s cubic-bezier(0.25, 0.8, 0.25, 1), border-color 0.3s ease;
  height: 100%;
  display: flex;
  flex-direction: column;
}

.card-zone-container:hover {
  transform: translateY(-8px);
  box-shadow: 0 20px 40px rgba(0, 0, 0, 0.08);
  border-color: rgba(0, 171, 107, 0.3);
}

.card-zone-image-box {
  position: relative;
  width: 100%;
  padding-top: 56.25%; /* 16:9 Aspect Ratio */
  overflow: hidden;
  background-color: #f7f9fa;
}

.card-zone-img {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  object-fit: cover;
  transition: transform 0.6s cubic-bezier(0.25, 0.8, 0.25, 1);
}

.card-zone-container:hover .card-zone-img {
  transform: scale(1.08);
}

.card-zone-overlay {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: linear-gradient(to bottom, rgba(0,0,0,0) 60%, rgba(0,0,0,0.25) 100%);
  opacity: 0.85;
  pointer-events: none;
}

.card-zone-badge {
  position: absolute;
  top: 14px;
  right: 14px;
  background: rgba(255, 255, 255, 0.95);
  color: #111111;
  padding: 4px 12px;
  border-radius: 30px;
  font-size: 0.75rem;
  font-weight: 700;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.12);
  letter-spacing: 0.3px;
  z-index: 2;
}

.card-guide-pill {
  position: absolute;
  bottom: 12px;
  left: 14px;
  background: rgba(0, 171, 107, 0.92);
  color: #ffffff !important;
  padding: 4px 12px;
  border-radius: 20px;
  font-size: 0.75rem;
  font-weight: 700;
  letter-spacing: 0.3px;
  z-index: 2;
  text-decoration: none !important;
  backdrop-filter: blur(4px);
  transition: background 0.2s ease;
}

.card-guide-pill:hover {
  background: #038252;
}

.card-zone-content {
  padding: 1.5rem;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  flex-grow: 1;
}

.card-zone-title {
  font-family: inherit;
  font-size: 1.35rem;
  font-weight: 700;
  margin-bottom: 0.5rem;
  line-height: 1.25;
}

.card-zone-title a {
  color: #2c3e50;
  text-decoration: none;
  transition: color 0.2s ease;
}

.card-zone-title a:hover {
  color: #00ab6b;
}

.card-zone-desc {
  font-size: 0.88rem;
  color: #64748b;
  line-height: 1.5;
  margin-bottom: 1.25rem;
}

.card-zone-footer {
  display: flex;
  align-items: center;
  justify-content: space-between;
  margin-top: auto;
  border-top: 1px solid #f1f5f9;
  padding-top: 1rem;
}

.card-zone-explore {
  font-size: 0.85rem;
  font-weight: 700;
  color: #00ab6b;
  letter-spacing: 0.5px;
  text-transform: uppercase;
  text-decoration: none !important;
  display: inline-flex;
  align-items: center;
  gap: 4px;
  transition: color 0.2s ease;
}

.card-zone-explore:hover {
  color: #038252;
}

.card-zone-arrow {
  display: inline-flex;
  align-items: center;
  transition: transform 0.3s ease;
}

.card-zone-container:hover .card-zone-arrow {
  transform: translateX(4px);
}

.card-zone-guide-link {
  font-size: 0.8rem;
  font-weight: 600;
  color: #475569;
  text-decoration: none !important;
  padding: 3px 8px;
  border-radius: 6px;
  background: #f1f5f9;
  transition: background 0.2s ease, color 0.2s ease;
}

.card-zone-guide-link:hover {
  background: #00ab6b;
  color: #ffffff;
}
</style>
