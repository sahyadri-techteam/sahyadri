# Beautiful Jekyll Theme - Gem Specification Documentation

## Overview

This is a Ruby Gem specification file (`.gemspec`) for the **Beautiful Jekyll Theme** — a responsive, clean Jekyll theme designed for creating personal blogs and simple project websites. The gem packages the theme as a distributable Ruby gem for easy installation via Bundler.

---

## File Structure

### 1. **Gem Metadata**

```ruby
spec.name          = "beautiful-jekyll-theme"
spec.version       = "6.0.1"
spec.authors       = ["Dean Attali"]
spec.email         = ["daattali@gmail.com"]
```

- **Name**: The gem is published as `beautiful-jekyll-theme` on RubyGems.org
- **Version**: Currently at version 6.0.1 (semantic versioning)
- **Author**: Dean Attali, the original creator and maintainer
- **Contact**: Email for inquiries and support

---

### 2. **Description & Purpose**

```ruby
spec.summary = "Beautiful Jekyll is a ready-to-use Jekyll theme to help you 
create an awesome website quickly. Perfect for personal blogs or simple 
project websites, with a focus on responsive and clean design."
```

Brief overview highlighting the theme's use cases:
- Pre-configured and production-ready
- Ideal for personal blogs
- Suitable for simple project sites
- Emphasizes responsive (mobile-friendly) and clean design

---

### 3. **Project Links**

```ruby
spec.homepage      = "https://beautifuljekyll.com"
spec.license       = "MIT"
spec.metadata      = {
  "changelog_uri"     => "https://beautifuljekyll.com/updates/",
  "documentation_uri" => "https://github.com/daattali/beautiful-jekyll#readme"
}
```

| Field | Purpose |
|-------|---------|
| **Homepage** | Official project website with demos and information |
| **License** | MIT (permissive open-source license) |
| **Changelog** | Updates and version history at beautifuljekyll.com/updates/ |
| **Documentation** | GitHub README with setup and usage instructions |

---

### 4. **Included Files**

```ruby
spec.files = `git ls-files -z`.split("\x0").select { |f| 
  f.match(%r{^(assets|_layouts|_includes|LICENSE|README|feed|404|_data|tags|staticman)}i) 
}
```

This dynamically includes files tracked by git that match specific directories:

| Directory/File | Purpose |
|---|---|
| **assets/** | CSS, JavaScript, images, and other static resources |
| **_layouts/** | Jekyll layout templates (page structure) |
| **_includes/** | Reusable Jekyll partials (headers, footers, etc.) |
| **LICENSE** | MIT license text |
| **README** | Project documentation and setup guide |
| **feed** | RSS feed configuration |
| **404** | Custom 404 error page |
| **_data/** | YAML data files for configuration |
| **tags/** | Tag-related templates and pages |
| **staticman** | Staticman integration for comments |

**How it works**:
- `git ls-files -z`: Lists all files tracked in git (null-terminated)
- `.split("\x0")`: Splits by null bytes for safe file paths
- `.select { |f| f.match(...) }`: Filters to only include matching files
- Case-insensitive matching (`i` flag)

---

## Runtime Dependencies

Required gems that must be installed for the theme to function:

```ruby
spec.add_runtime_dependency "jekyll", ">= 3.9.3"
```
- **Jekyll** (3.9.3+): The core static site generator

```ruby
spec.add_runtime_dependency "jekyll-paginate", "~> 1.1"
```
- **jekyll-paginate** (~1.1): Enables pagination for blog posts and archives

```ruby
spec.add_runtime_dependency "jekyll-sitemap", "~> 1.4"
```
- **jekyll-sitemap** (~1.4): Auto-generates XML sitemaps for SEO

```ruby
spec.add_runtime_dependency "kramdown-parser-gfm", "~> 1.1"
```
- **kramdown-parser-gfm** (~1.1): Markdown parser supporting GitHub-flavored Markdown syntax

```ruby
spec.add_runtime_dependency "kramdown", "~> 2.3"
```
- **kramdown** (~2.3): Markdown processor for converting content to HTML

```ruby
spec.add_runtime_dependency "webrick", "~> 1.8"
```
- **webrick** (~1.8): Web server for local development (`jekyll serve`)

### Dependency Version Constraints

- `>= 3.9.3`: "At least this version or higher" (Jekyll)
- `~> 1.1`: "Approximately 1.1" (allows 1.1.x but not 2.0+)
- `~> 2.3`: "Approximately 2.3" (allows 2.3.x but not 3.0+)

---

## Development Dependencies

Tools needed only for development and testing:

```ruby
spec.add_development_dependency "bundler", ">= 1.16"
```
- **Bundler** (1.16+): Manages gem dependencies

```ruby
spec.add_development_dependency "rake", "~> 12.0"
```
- **Rake** (~12.0): Ruby task automation tool for build tasks

```ruby
spec.add_development_dependency "appraisal", "~> 2.5"
```
- **Appraisal** (~2.5): Tests gem compatibility across multiple dependency versions

---

## How This Gem Works

### Installation

Users install the theme via:
```bash
gem install beautiful-jekyll-theme
```

Or add to a Jekyll site's `Gemfile`:
```ruby
gem 'beautiful-jekyll-theme'
```

Then run:
```bash
bundle install
```

### Theme Loading

Jekyll automatically loads:
- All layout files from `_layouts/`
- All includes from `_includes/`
- All assets from `assets/`
- Configuration from `_data/`

### User Customization

Users can override any theme file by creating their own in their Jekyll site directory (Jekyll's cascade system).

---

## Key Features Inferred from Gem Structure

| Feature | File/Directory |
|---------|---|
| Comment system | `staticman/` directory indicates Staticman support |
| SEO optimization | `jekyll-sitemap` dependency + feed file |
| Tag support | `tags/` directory + Jekyll configuration |
| Responsive design | `assets/` contains CSS (likely Bootstrap or custom) |
| Navigation | `_includes/` likely contains header/nav partials |
| Customization | `_data/` files for easy configuration without code changes |

---

## Development Workflow

### For Theme Developers

1. Clone the repository: `git clone https://github.com/daattali/beautiful-jekyll.git`
2. Install dependencies: `bundle install`
3. Test locally: `bundle exec jekyll serve`
4. Run compatibility tests: `bundle exec appraisal install && bundle exec appraisal rake`
5. Update version in `.gemspec`
6. Publish: `gem push beautiful-jekyll-theme-*.gem`

### For Theme Users

1. Install gem via Bundler
2. Configure `_config.yml` using theme settings
3. Create content in `_posts/` and other directories
4. Run `jekyll serve` and visit `http://localhost:4000`

---

## Version History

The current version is **6.0.1**, indicating:
- Major version 6: Several breaking changes since initial release
- Minor version 0: No new features in this patch cycle
- Patch version 1: Bug fixes or documentation updates

For full version history, see: https://beautifuljekyll.com/updates/

---

## Related Resources

- **Official Website**: https://beautifuljekyll.com
- **GitHub Repository**: https://github.com/daattali/beautiful-jekyll
- **RubyGems Page**: https://rubygems.org/gems/beautiful-jekyll-theme
- **Documentation**: https://github.com/daattali/beautiful-jekyll#readme
- **License**: MIT (view full text in LICENSE file)

---

## Summary

This `.gemspec` file defines a polished, production-ready Jekyll theme gem with:
- ✅ Clear purpose and target audience
- ✅ Minimal but essential runtime dependencies
- ✅ Comprehensive development tools for testing and compatibility
- ✅ Dynamic file inclusion based on git tracking
- ✅ Good documentation and support links
- ✅ MIT open-source licensing

The theme is designed to be a drop-in solution for Jekyll users who want a professional blog without building from scratch.
