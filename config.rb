# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

# Use '#id' and '.classname' as div shortcuts in slim
# http://slim-lang.com/
Slim::Engine.set_options shortcut: {
    '#' => { tag: 'div', attr: 'id' },
    '.' => { tag: 'div', attr: 'class' }
}


# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.ruby-version', layout: false
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.csv', layout: false
page '/*.txt', layout: false
page "/partials/*", layout: false

# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'

# pretty urls
activate :directory_indexes
# activate :minify_html
# activate :social_image do |social_image|
#    social_image.window_size = '1200,600' # The size of the screenshot
#    social_image.selector = 'body > *' # Used to test that the social image url has loaded properly. The more specific this is, the better the chance of catching errors.
#    social_image.base_url = 'https://wkwkrnht.github.io/BandPlanVisualize/' # When building the site, fetch against this URL.
# end

configure :build do
    # Build-specific configuration
    # https://middlemanapp.com/advanced/configuration/#environment-specific-settings

    # Generate relative paths to the repo when deploying to GitHub Pages
    config[:http_prefix] = '/Lab-for-New-design-of-My-Page'

    # Minify css on build
    # activate :minify_css

    # Use Gzip
    activate :gzip
end