Sahyadri Connect
A modern website for Sahyadri School built with Jekyll and Beautiful Jekyll.

Overview
Sahyadri Connect serves as the digital hub for Sahyadri School, showcasing student articles, campus activities, event coverage, and member profiles across clean, responsive layouts.

Features
Responsive Layouts — Adaptive rendering optimized for desktop, tablet, and mobile devices.

Fast Static Delivery — Powered by Jekyll static generation for minimal load times.

Markdown Authoring — Simple text-file content creation for posts, activities, and profiles.

Automatic Author Profile Routing — Dynamic slug generation linking author names (subtitle / subtitle2) directly to /profiles/first-last/.

Google Drive Image Integration — High-performance image loading for galleries, hero images, and profile avatars using Google Drive File IDs.

Built-in Comments — Seamless integration with community comment platforms.

Project Structure
Plaintext
sahyadri-connect/
├── _config.yml         # Global site settings & configuration
├── _data/              # Data files (navigation, menus, etc.)
├── _includes/          # Reusable HTML snippets (footer, comments, etc.)
├── _layouts/           # Layout templates (base, post, events, profile, page)
├── _posts/             # Articles and school blog posts
├── _activities/        # School events, workshops, and activities
├── profiles/           # Student and staff bio profile pages
├── assets/             # Site assets (CSS, JS, fallback images)
├── pages/              # Static pages (about, contact, etc.)
├── Gemfile             # Ruby dependencies
└── README.md           # Repository documentation
Getting Started
Prerequisites
Ruby 3.2 or higher

Bundler

Git

Local Setup
Clone the repository

Bash
git clone <repository-url>
cd sahyadri-connect
Install dependencies

Bash
bundle install
Run local server

Bash
bundle exec jekyll serve
Access in browser
Navigate to http://localhost:4000

Content Authoring Guide
1. Adding a Post / Article
Create a file in _posts/ with the naming convention YYYY-MM-DD-title.md (e.g., 2025-11-25-interviewing-rohini-didi.md):

YAML
---
layout: post
title: "Interviewing Rohini Didi"
date: 2025-11-25
subtitle: "Ashrith Reddy"                  # Primary Author Name (Auto-links to /profiles/ashrith-reddy/)
subtitle2: "Riddhim Inamke (Grade 11)"     # Optional Co-Author Name
profile-link: ""                          # Optional custom URL override for Author 1
profile-link2: ""                         # Optional custom URL override for Author 2
category: "November 2025"                  # Category or issue grouping
image: "1j2nUEqjoW5XM_AtTaKuq_6v11D8DGyak" # Google Drive File ID for Image 1
image2: ""                                # Optional Google Drive File ID for Image 2
image3: ""                                # Optional Google Drive File ID for Image 3
image4: ""                                # Optional Google Drive File ID for Image 4
image5: ""                                # Optional Google Drive File ID for Image 5
---

Write article content here using standard Markdown...
2. Adding an Activity / Event
Create a file in _activities/ or _posts/ using layout: events:

YAML
---
layout: events
title: "Screen Addiction - Classes 7 & 8"
subtitle: Sayantan Sen (Founder Digital Safety India, Parent of Sahyadri School)
date: 2025-09-22
category: Digital Safety Workshop
image: "1j2nUEqjoW5XM_AtTaKuq_6v11D8DGyak" # Optional Hero Image Google Drive File ID
---

Write the activity description, workshop outline, and resource links here using Markdown...
3. Adding an Author / Member Profile
Create a file in profiles/ named first-last.md (e.g., profiles/sailesh-mucheli.md) using layout: profile. Author names listed in posts and activities (subtitle) will automatically link to this path:

YAML
---
layout: profile
title: "Sailesh Mucheli"
subtitle: "Student (Class 12)"
date: 2026-07-03
academic-year: "2026-27"
profile-image: "1mAZsR_SWrJkXNDxj2Z3Zioo7zuajC23P" # Google Drive File ID (Renders square 1:1 avatar)
---

I joined Sahyadri in Grade 5 to discover more about myself...

Write the complete bio, achievements, and contributions here in Markdown...
Google Drive Media Integration
All media (profile avatars, activity hero images, and post galleries) are hosted on Google Drive using direct File IDs to keep the repository lightweight:

Upload the image file to Google Drive.

Set access permissions to "Anyone with the link can view".

Extract the unique File ID from the share link:
[https://drive.google.com/file/d/](https://drive.google.com/file/d/)1mAZsR_SWrJkXNDxj2Z3Zioo7zuajC23P/view

Assign the extracted ID to the relevant front matter key:

Profiles: profile-image: "FILE_ID"

Activities: image: "FILE_ID"

Posts: image: "FILE_ID", image2: "FILE_ID", etc.

Customization
Navigation Menu: Update _data/navbar.yml to alter header links and order.

Global Variables & Colors: Edit _config.yml for site meta info or edit assets/css/beautifuljekyll.css for styling tweaks.

Maintenance & Backups
Regularly update dependencies using bundle update.

Ensure critical content directories (_posts/, _activities/, profiles/, _config.yml) are routinely committed to GitHub version control.
