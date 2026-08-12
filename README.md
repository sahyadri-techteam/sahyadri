# Sahyadri Connect

A beautiful, modern website for Sahyadri School built with [Jekyll](https://jekyllrb.com/) and [Beautiful Jekyll](https://beautifuljekyll.com/).

## Overview

Sahyadri Connect is the digital hub for Sahyadri School, showcasing student activities, projects, accomplishments, and community engagement. The site features a clean, responsive design that works seamlessly across all devices.

## Features

- **Responsive Design** — Fully optimized for desktop, tablet, and mobile browsers
- **Fast Performance** — Powered by Jekyll static site generation
- **Easy to Maintain** — Simple Markdown-based content management
- **Automatic Author Profiling** — Dynamic slug generation linking authors to custom bio pages
- **Google Drive Image Integration** — High-performance image and hero rendering via Drive File IDs
- **Beautiful Typography** — Carefully chosen fonts and spacing
- **SEO Optimized** — Automatic sitemap and meta tags
- **Comments & Discussion** — Built-in comment systems for community engagement
- **Social Sharing** — Easy sharing across social networks
- **Dark/Light Theme** — Customizable color schemes

## Project Structure

```
sahyadri-connect/
├── _config.yml           # Global site settings & configuration
├── _data/                # Data files (navigation, menus, etc.)
├── _includes/            # Reusable HTML snippets (footer, comments, etc.)
├── _layouts/             # Page layouts (base, post, events, page)
├── _posts/               # Blog posts and articles
├── _activities/          # School events and workshops
├── profiles/             # Author bio and profile pages
├── assets/               # CSS, JS, and local site assets
├── pages/                # Static pages (about, contact, etc.)
├── Gemfile               # Ruby dependencies
└── README.md             # This file
```

## Getting Started

### Prerequisites

- Ruby 3.2 or higher
- Bundler
- Git

### Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd sahyadri-connect
   ```

2. **Install dependencies**
   ```bash
   bundle install
   ```

3. **Run the site locally**
   ```bash
   bundle exec jekyll serve
   ```

4. **Open in browser**
   Visit `http://localhost:4000`

## Creating Content

### Adding a Post / Article

Create a file in `_posts/` using the format `YYYY-MM-DD-title.md`:

```yaml
---
layout: post
title: "Interviewing Rohini Didi"
date: 2025-11-25
subtitle: "Ashrith Reddy"                   # Primary Author Name
subtitle2: "Riddhim Inamke (Grade 11)"      # Optional Co-Author Name
profile-link: ""                            # Optional external link override for Author 1
profile-link2: ""                           # Optional external link override for Author 2
category: "November 2025"                   # Category or issue grouping
image: "1j2nUEqjoW5XM_AtTaKuq_6v11D8DGyak" # Google Drive Image File ID
image2: ""                                  # Optional Google Drive Image ID 2
image3: ""                                  # Optional Google Drive Image ID 3
---

Write article content here using standard Markdown...
```

### Adding an Activity / Event

Create a file with `layout: events`:

```yaml
---
layout: events
title: "Screen Addiction - Classes 7 & 8"
subtitle: "Sayantan Sen (Founder, Digital Safety India)"
date: 2025-09-22
category: "Digital Safety Workshop"
image: "1j2nUEqjoW5XM_AtTaKuq_6v11D8DGyak"  # Optional Hero Image File ID
---

Write the activity overview, workshop details, and resource links here...
```

### Adding an Author Profile

Author names in `subtitle` and `subtitle2` automatically generate links to individual author pages using a lowercased, hyphenated slug (e.g., "Ashrith Reddy" → `/profiles/ashrith-reddy/`).

To create a matching profile page, add a file to `profiles/` named `first-last.md`:

```yaml
---
layout: page
title: "Ashrith Reddy"
permalink: /profiles/ashrith-reddy/
---

Student at Sahyadri School (Grade 11). Bio and contributions go here.
```

### Adding a Static Page

Create a file in `pages/` (e.g., `pages/about.md`):

```yaml
---
layout: page
title: About
permalink: /about/
---

Your content here...
```

## Media Management (Google Drive)

Rather than hosting large image files in the repository, images are embedded directly from Google Drive:

1. Upload the image to Google Drive and set visibility to **"Anyone with the link can view"**
2. Extract the unique File ID from the sharing URL:
   `https://drive.google.com/file/d/`**`1j2nUEqjoW5XM_AtTaKuq_6v11D8DGyak`**`/view`
3. Add the File ID to the relevant front matter field (`image`, `image2`, `image3`, etc.)

For local assets, upload images to `/assets/img/` and reference them in posts as `![Alt text](/assets/img/image.jpg)`. Optimize images before uploading using tools like TinyPNG.

## Configuration

Edit `_config.yml` to customize site title, description, social links, color scheme, analytics, and more:

```yaml
title: Sahyadri Connect
description: Digital hub for Sahyadri School
author: Sahyadri School
email: contact@sahyadri.edu
url: https://sahyadri-school.web

social-network-links:
  github: sahyadri-school
  instagram: sahyadri_school
  facebook: sahyadriconnect
  email: contact@sahyadri.edu
```

### Navigation

Edit `_data/navbar.yml` to reorder or add menu items.

### Colors and Fonts

Customize brand colors and font variables in `assets/css/beautifuljekyll.css`, or use config variables:

```yaml
navbar-col: "#FFFFFF"
navbar-text-col: "#404040"
navbar-border-col: "#DDDDDD"
```

### Comments

```yaml
comments:
  provider: "giscus"
  giscus:
    repo: "sahyadri-school/sahyadri-connect"
    repo-id: "YOUR_REPO_ID"
    category: "Announcements"
    category-id: "YOUR_CATEGORY_ID"
```

### Analytics

```yaml
google_analytics: "G-XXXXXXXXXX"
```

## Deployment

### GitHub Pages (Recommended)

1. Push to your GitHub repository
2. Enable GitHub Pages in repository settings
3. Select `master` branch as source
4. The site deploys automatically on every push

### Manual Deployment

1. Build the site:
   ```bash
   bundle exec jekyll build
   ```
2. Upload the `_site/` folder to your web host

## Maintenance

- **Update dependencies** regularly: `bundle update`
- **Review and moderate** comments as needed
- **Back up** key directories via git versioning: `_posts/`, `profiles/`, `_config.yml`, and custom CSS/JS files
- **Check for broken links** and update content regularly

## Troubleshooting

**Site not building?**
- Run `bundle update` to refresh gems
- Check for syntax errors in YAML front matter
- Ensure front matter delimiters (`---`) are correctly placed

**Images not displaying?**
- For Google Drive images, confirm the file is set to "Anyone with the link can view"
- For local assets, verify the file path and that the image is in `/assets/img/`

**Site looks different locally?**
- Clear your browser cache
- Run `bundle exec jekyll clean` then serve again
- Check for CSS conflicts in custom styles

## Contributing

1. Create a new branch for your changes
2. Make your edits and test locally with `bundle exec jekyll serve`
3. Submit a pull request with a clear description of your changes

## Support & Documentation

- [Jekyll Documentation](https://jekyllrb.com/docs/)
- [Beautiful Jekyll Documentation](https://beautifuljekyll.com/)
- [Markdown Guide](https://www.markdownguide.org/)

## License

This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details.

## Credits

Built with [Jekyll](https://jekyllrb.com/), [Beautiful Jekyll](https://beautifuljekyll.com/), [Bootstrap](https://getbootstrap.com/), and [Font Awesome](https://fontawesome.com/).

## Contact

📧 Email: archives@sahyadrischool.org  
🌐 Website: https://sahyadrischool.org

---

**Last Updated:** July 2026 · **Version:** 1.0.0
