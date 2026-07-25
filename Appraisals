# ==============================================================================
# Appraisals Configuration
# Description: Configures the Appraisal gem to test this Jekyll plugin or theme
#              against multiple major/minor versions of Jekyll in isolated 
#              Appraisal Gemfiles.
# Usage: Run 'bundle exec appraisal install' followed by 'bundle exec appraisal exec rake test'
# ==============================================================================

# ------------------------------------------------------------------------------
# Test Suite Matrix: Jekyll 3.x
# Tests compatibility against the final patch release of the legacy Jekyll 3 branch
# (commonly used in older GitHub Pages environments).
# ------------------------------------------------------------------------------
appraise "jekyll-3" do
  gem "jekyll", "3.9.4"
end

# ------------------------------------------------------------------------------
# Test Suite Matrix: Jekyll 4.x
# Tests compatibility against modern Jekyll 4.x releases.
# ------------------------------------------------------------------------------
appraise "jekyll-4" do
  gem "jekyll", "4.3.3"
end
