# Gemini Content Generation Guide for wanderindia.blog

You're an expert in building blogs using jekyll, have great knowledge about plugins of jekyll and an expert of web and SEO and performance. This guide provides instructions for using Gemini to create and manage content for this Jekyll-based travel blog. 

## Folder Structure

Here is an overview of the most important folders in this project:

-   `_posts/`: This directory contains all the blog post files in Markdown format. The filename convention is `YYYY-MM-DD-title-of-the-post.md`.
-   `_layouts/`: This folder holds the HTML templates for different page types, such as `post.html` and `page.html`.
-   `_includes/`: This directory contains reusable HTML snippets that are included in layouts and pages.
-   `_pages/`: This folder contains the Markdown files for static pages like "About" or "Categories".
-   `assets/`: This directory stores all static assets, including images, CSS, and JavaScript files.
-   `_config.yml`: This is the main Jekyll configuration file, containing site-wide settings and author information.

## Post Structure

Each blog post is a Markdown file in the `_posts/` directory and consists of two main parts: the front matter and the content.

### Front Matter

The front matter is a block of YAML at the beginning of the file, enclosed by triple-dashed lines (`---`). It contains metadata for the post. Here is an example with explanations:

```yaml
---
layout: post
title: "City, State"
description: "Discover the best things to do in City, State, from iconic landmarks to scenic vistas."
author: sid
categories: [Category1, Category2, Category3]
image: assets/images/city-name.webp
rating: 5
tags: [State]
toc: true
quick_facts:
  state: "State Name"
  best_time: "October to April"
  duration: "2-3 Days"
  airport: "Nearest Airport Name (XX km)"
  railway: "Nearest Railway Hub (XX km)"
faq:
  - question: "What is the best way to get around City?"
    answer: "Local taxis, auto-rickshaws, and rental vehicles are readily available..."
  - question: "What is the top must-see attraction?"
    answer: "The top attraction is..."
  - question: "Are there any entry permits or fees required?"
    answer: "Most sites have nominal entry fees..."
---
```

-   `layout`: Should always be `post` for blog posts.
-   `title`: The title of the post, usually in the format "City, State".
-   `description`: SEO meta description (1-2 sentences summarizing highlights).
-   `author`: The key for the author of the post. Currently, the only author is `sid`. This is defined in `_config.yml`.
-   `categories`: A list of 3-5 relevant categories for the post selected from the curated 26-category taxonomy: Beach, Island, Water Sports, Waterfalls, Lakes & Dams, River & Backwaters, Mountain, Hill Station, Trekking, Snow, Valley, Nature, Forest, Wildlife & Safari, Gardens & Parks, Monuments & Forts, History, Culture, Modern Architecture, Pilgrimage, Places of Worship, Road Trip, Scenic Viewpoints, Weekend Getaway, Resorts, Camping.
-   `image`: The path to the featured image for the post. The path should be relative to the root of the project, e.g., `assets/images/city-name.webp`.
-   `rating`: A numerical rating from 1 to 5.
-   `tags`: A list of tags. For consistency, this should contain the state the city is in, e.g., "Tamil Nadu".
-   `toc`: Set to `true` to display the table of contents.
-   `quick_facts`: Key quick facts including state, best time, duration, nearest airport, and railway hub.
-   `faq`: A list of 3 practical traveler FAQs with concise answers.

### Content

The content of the post follows the front matter and should be written in Markdown. It should be structured as follows:

1.  **Introduction**: A vivid 2-3 paragraph introduction to the city/destination.
2.  **How to Reach**: A section with subsections for "By Air", "By Train", and "By Road".
3.  **Itinerary**: A suggested day-by-day itinerary (e.g., "2-Day Itinerary" or "3-Day Itinerary") with specific landmarks and activities.
4.  **FAQs and Tips for Visiting**: Practical tips for visitors (clothing, timing, permits, connectivity, transport).
5.  **Photo Carousel**: A `div` element for the `publicalbum` photo carousel.

## Gemini Usage Guide

When creating or editing posts, please adhere to the following guidelines:

### What to Generate

-   **Full Post Content**: You can generate the entire content of a blog post, including the front matter and all the sections mentioned above.
-   **Front Matter**: Ensure the front matter is complete and follows the structure described above.
-   **Content Sections**: Generate all the content sections (Introduction, How to Reach, Itinerary, Tips).
-   **IndexNow Submission**: Whenever a new URL is created, generate a `curl` POST command for submitting the site to IndexNow using the following structure:

    ```bash
    curl -X POST https://api.indexnow.org/indexnow \
    -H "Content-Type: application/json; charset=utf-8" \
    -d '{
      "host": "www.wanderindia.blog",
      "key": "mfxtvyrq4vdajkfwr5411z3x31uabg31",
      "urlList": [
        "https://www.wanderindia.blog/url1",
        "https://www.wanderindia.blog/folder/url2",
        "https://www.wanderindia.blog/url3"
      ]
    }'
    ```

### What NOT to Edit

-   **Photo Carousel (`publicalbum` widget)**: The photo carousel is a `div` with the class `pa-carousel-widget`. This block of HTML contains `<object>` tags with links to Google Photos.

    **Example:**
    ```html
    <div class="pa-carousel-widget" style="width:100%; height:480px; display:none;"
      data-link="https://www.tripadvisor.in/Attractions-g304556-Activities-Chennai_Madras_Chennai_District_Tamil_Nadu.html"
      data-title="Chennai, Tamil Nadu"
      data-description="Chennai, the vibrant capital of Tamil Nadu, is a city where tradition and modernity coexist in perfect harmony."
      data-delay="3">
      <object data="https://lh3.googleusercontent.com/..."></object>
      <object data="https://lh3.googleusercontent.com/..."></object>
      ...
    </div>
    ```

    **Do not edit the contents of this `div`**. This widget is generated by another tool and should not be modified. You can, however, generate the content that comes before and after this block.

## Google Photos & Google Maps Data Integration Workflow

Antigravity operates in a local development environment and does not have direct access to personal Google account extensions (such as `@Google Photos` or `@Google Maps` in the consumer Gemini app at `gemini.google.com` or on mobile).

To turn your personal trip photos and maps timeline into a blog post on wanderindia.blog, follow this 4-step workflow:

### Step 1: Extract Trip Highlights Using the Gemini App

In the consumer **Gemini app** (where your Google Photos and Google Maps accounts are connected), copy and run the following prompt:

```text
@Google Photos @Google Maps
I need to write a detailed travel blog post about my trip to [Destination / City, State] around [Month / Year or Date Range].

Using my photos, timestamps, geotags, and visited places/routes from that trip:
1. Destination & Dates: Exact city/district, state, and travel dates.
2. Chronological Itinerary: Break down the trip day-by-day in order. For each day, list the specific attractions, viewpoints, landmarks, cafes/restaurants, or activities visited with brief context.
3. Transportation & Access:
   - Nearest airport (with approx distance in km).
   - Nearest major railway station (with approx distance in km).
   - How we traveled locally or arrived (highways taken, shared cabs, rental, terrain, road conditions).
4. Trip Highlights & Tips:
   - Best time of year / season to visit based on the trip.
   - 3-5 practical tips (clothing/dress code, walking/slippery spots, photography timing, permits/entry fees, cash vs UPI).
   - 3 traveler FAQs and concise answers based on the experience.

Provide the response in clean bullet points so I can copy and paste it into my blog generator.
```

### Step 2: Generate the PublicAlbum Photo Carousel

1. Go to your Google Photos album for the destination and create a shareable link.
2. Use [PublicAlbum.org](https://www.publicalbum.org/blog/embed-photos-slideshow-carousel-widget) to generate the `<div class="pa-carousel-widget">` embed snippet with the TripAdvisor link, title, and description.

### Step 3: Provide the Data to Antigravity

Provide both parts to Antigravity:
1. The extracted summary from the Gemini app (or your raw trip notes).
2. The `<div class="pa-carousel-widget">` HTML snippet.
3. (Optional) Place the featured image in `assets/images/<destination-slug>.webp`.

### Step 4: Antigravity Generates the Blog Post

Antigravity will:
1. Create `_posts/YYYY-MM-DD-things-to-do-in-<destination-slug>.md` (or `places-to-visit-in-...`).
2. Populate the full front matter (`title`, `description`, `categories`, `image`, `rating`, `tags`, `toc`, `quick_facts`, `faq`).
3. Draft the introduction, how to reach, day-by-day itinerary, FAQs/tips, and place the photo carousel embed.
4. Output the `curl` POST command for IndexNow submission.

By following these guidelines, you can effectively assist in creating and managing content for this travel blog.
