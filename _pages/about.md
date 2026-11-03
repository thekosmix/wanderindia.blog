---
layout: page
title: About Me
permalink: /about/
comments: true
---

<div class="about-wrapper">

    <p class="lead">The nature is beautiful so are the people. And the places created by both of them are amazing. I will take you to a journey of different places including 
    <a href="{{site.baseurl}}/trips-and-travel-categories/mountain/">mountains</a>, 
    <a href="{{site.baseurl}}/trips-and-travel-categories/river-backwaters/">rivers</a>, 
    <a href="{{site.baseurl}}/trips-and-travel-categories/beach/">sea-shores</a>, 
    <a href="{{site.baseurl}}/trips-and-travel-categories/modern-architecture/">cities</a>, 
    <a href="{{site.baseurl}}/trips-and-travel-categories/hill-station/">adventures</a>, 
    <a href="{{site.baseurl}}/trips-and-travel-categories/monuments-forts/">monuments</a> and much more. stay tuned!!</p>

    <p>The pictures in my blog are unaltered with no filter or any cosmetic changes. I capture them with my phone camera and upload them as is. So that when you visit these places after seeing these photos, they justify your expectation unlike those shiny insta posts which often ruin the experience.</p>
    
    <p>Below are few places covered by me in India. So far I've explored 30 states and UTs out of 36. I also contribute on Google Maps and am a level-9 local guide. My shared images & posts have more than <a href="https://www.google.co.in/maps/contrib/118147622802569594383" target="_blank" rel="noopener">46Mn+ views</a>.</p>

    <div class="row about-maps-grid my-4">
        <div class="col-sm-6 col-12 mb-4">
            <div class="about-map-card h-100 rounded shadow-sm overflow-hidden border">
                <img src="{% if site.cdnurl %}{{ site.cdnurl }}{% else %}{{ site.baseurl }}{% endif %}/assets/images/google-location-marker.webp" loading="lazy" class="img-fluid w-100" alt="Locations travelled in last 5 years">
            </div>
        </div>
        <div class="col-sm-6 col-12 mb-4">
            <div class="about-map-card h-100 rounded shadow-sm overflow-hidden border">
                <img src="{% if site.cdnurl %}{{ site.cdnurl }}{% else %}{{ site.baseurl }}{% endif %}/assets/images/google-heat-map.webp" loading="lazy" class="img-fluid w-100" alt="All time Google heatmap of travelled places">
            </div>
        </div>
        <div class="col-sm-6 col-12 mb-4">
            <div class="about-map-card h-100 rounded shadow-sm overflow-hidden border">
                <img src="{% if site.cdnurl %}{{ site.cdnurl }}{% else %}{{ site.baseurl }}{% endif %}/assets/images/google-all-time.webp" loading="lazy" class="img-fluid w-100" alt="All time Google data of travelled places">
            </div>
        </div>
        <div class="col-sm-6 col-12 mb-4">
            <div class="about-map-card h-100 rounded shadow-sm overflow-hidden border">
                <img src="{% if site.cdnurl %}{{ site.cdnurl }}{% else %}{{ site.baseurl }}{% endif %}/assets/images/google-stats.webp" loading="lazy" class="img-fluid w-100" alt="All time Google stats of viewed places">
            </div>
        </div>
    </div>

    <div class="about-links-section my-4 pt-3 border-top">
        <div class="d-flex flex-wrap" style="gap: 10px;">
            <a href="{{site.authors.sid.web}}" class="btn btn-sm btn-outline-dark rounded-pill px-3 py-2 font-weight-bold" target="_blank" rel="noopener">My portfolio &rarr;</a>
            <a href="{{site.authors.sid.blog}}" class="btn btn-sm btn-outline-dark rounded-pill px-3 py-2 font-weight-bold" target="_blank" rel="noopener">My technology blog &rarr;</a>
            <a href="{{site.authors.sid.venture}}" class="btn btn-sm btn-outline-dark rounded-pill px-3 py-2 font-weight-bold" target="_blank" rel="noopener">Kids Scroll &rarr;</a>
            <a href="{{site.authors.sid.jg}}" class="btn btn-sm btn-outline-dark rounded-pill px-3 py-2 font-weight-bold" target="_blank" rel="noopener">Junior Genius &rarr;</a>
        </div>
    </div>

    <p class="text-muted small mt-4">Thanks to <a target="_blank" rel="noopener" href="https://github.com/wowthemesnet/mediumish-theme-jekyll">Mediumish-theme-jekyll</a> for creating this amazing jekyll theme</p>

</div>

<style>
.about-wrapper {
    max-width: 820px;
    margin: 0 auto;
}
.about-map-card {
    background: #ffffff;
    transition: transform 0.25s ease, box-shadow 0.25s ease;
}
.about-map-card:hover {
    transform: translateY(-3px);
    box-shadow: 0 8px 20px rgba(0,0,0,0.08) !important;
}
.about-map-card img {
    display: block;
    width: 100%;
    height: auto;
    object-fit: cover;
}
</style>
