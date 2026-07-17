# Sahyadri Connect

A beautiful, modern website for Sahyadri School built with [Jekyll](https://jekyllrb.com/) and [Beautiful Jekyll](https://beautifuljekyll.com/).

## Overview

Sahyadri Connect is the digital hub for Sahyadri School, showcasing student activities, projects, accomplishments, and community engagement. The site features a clean, responsive design that works seamlessly across all devices.

## Features

- **Responsive Design** — Works perfectly on desktop, tablet, and mobile devices
- **Fast Performance** — Built with Jekyll for static site generation
- **Easy to Maintain** — Simple Markdown-based content management
- **Beautiful Typography** — Carefully chosen fonts and spacing
- **SEO Optimized** — Automatic sitemap and meta tags
- **Comments Support** — Built-in comment systems for engagement
- **Social Sharing** — Easy sharing on social networks
- **Dark/Light Theme** — Customizable color schemes

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
   Visit `http://localhost:4000` to see your site

## Project Structure

```
sahyadri-connect/
├── _config.yml           # Site configuration
├── _data/                # Data files (navigation, etc.)
├── _includes/            # Reusable HTML components
├── _layouts/             # Page layouts
├── _posts/               # Blog posts and articles
├── assets/               # CSS, JS, images
├── pages/                # Static pages (about, contact, etc.)
├── Gemfile               # Ruby dependencies
└── README.md             # This file
```

## Configuration

Edit `_config.yml` to customize:

- **Site title and description**
- **Author name and email**
- **Social media links**
- **Navigation menu**
- **Color scheme and fonts**
- **Analytics and comments**

### Example Configuration

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

## Creating Content

### Adding a Blog Post

Create a new file in `_posts/` with the format `YYYY-MM-DD-title.md`:

```markdown
---
layout: post
title: Activity Name
subtitle: Brief description
date: 2024-01-15
author: Author Name
tags: [activity, school]
---

Your content here...
```

### Adding a Page

Create a new file in `pages/` (e.g., `pages/about.md`):

```markdown
---
layout: page
title: About
permalink: /about/
---

Your content here...
```

### Adding Photos

1. Upload images to `/assets/img/`
2. Reference in posts: `![Alt text](/assets/img/image.jpg)`
3. Use Google Drive for large collections (see config for setup)

## Customization

### Colors and Fonts

Edit `assets/css/beautifuljekyll.css` or use CSS variables in `_config.yml`:

```yaml
navbar-col: "#FFFFFF"
navbar-text-col: "#404040"
navbar-border-col: "#DDDDDD"
```

### Navigation Menu

Edit `_data/navbar.yml` to customize menu items and order.

### Footer

Customize footer links in `_includes/footer.html` or via `_config.yml` social links.

## Deployment

### GitHub Pages (Recommended)

1. Push to GitHub repository
2. Enable GitHub Pages in repository settings
3. Select `master` branch as source
4. Site deploys automatically on push

### Manual Deployment

1. Build the site:
   ```bash
   bundle exec jekyll build
   ```

2. Upload `_site/` folder to your web host

## Features Guide

### Comments

Enable comments in `_config.yml`:

```yaml
comments:
  provider: "giscus"
  giscus:
    repo: "sahyadri-school/sahyadri-connect"
    repo-id: "YOUR_REPO_ID"
    category: "Announcements"
    category-id: "YOUR_CATEGORY_ID"
```

### Social Sharing

Posts automatically include social share buttons. Customize in post frontmatter:

```yaml
---
share-title: "Custom Title for Sharing"
share-description: "Custom description"
---
```

### Analytics

Add Google Analytics in `_config.yml`:

```yaml
google_analytics: "G-XXXXXXXXXX"
```

## Troubleshooting

**Site not building?**
- Run `bundle update` to update gems
- Check for syntax errors in YAML files
- Ensure front matter is properly formatted

**Images not displaying?**
- Check file paths are correct
- Ensure images are in `/assets/img/`
- Verify image permissions

**Site looks different locally?**
- Clear browser cache
- Run `bundle exec jekyll clean` then serve again
- Check for CSS conflicts in custom styles

## Contributing

To contribute to this site:

1. Create a new branch for your changes
2. Make your edits
3. Test locally with `bundle exec jekyll serve`
4. Submit a pull request with a clear description

## Maintenance

### Regular Tasks

- Update dependencies: `bundle update`
- Review and moderate comments regularly
- Update content and posts as needed
- Check for broken links

### Backup

Keep regular backups of:
- `_posts/` directory
- `_config.yml`
- Custom CSS/JS files
- Uploaded images

## Performance Tips

- Optimize images before uploading (use tools like TinyPNG)
- Use responsive images for different screen sizes
- Minimize custom CSS/JS
- Enable browser caching

## Security

- Keep Ruby and gems updated
- Use strong GitHub credentials
- Be cautious with environment variables
- Review third-party integrations (comments, analytics)

## Support and Documentation

- [Jekyll Documentation](https://jekyllrb.com/docs/)
- [Beautiful Jekyll Documentation](https://beautifuljekyll.com/)
- [Markdown Guide](https://www.markdownguide.org/)

## License

This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details.

## Credits

Built with:
- [Jekyll](https://jekyllrb.com/) — Static site generator
- [Beautiful Jekyll](https://beautifuljekyll.com/) — Beautiful Jekyll theme
- [Bootstrap](https://getbootstrap.com/) — Responsive CSS framework
- [Font Awesome](https://fontawesome.com/) — Icon library

## Contact

For questions or suggestions, please contact:

📧 Email: archives@sahyadrischool.org  
🌐 Website: https://sahyadrischool.org

---

**Last Updated:** July 2026
**Version:** 1.0.0
