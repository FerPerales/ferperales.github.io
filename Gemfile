# Gems source:
source "https://rubygems.org"
ruby file: ".ruby-version"

# Git-based sources:
git_source(:github) { "https://github.com/#{_1}.git" }
git_source(:codeberg) { "https://codeberg.org/#{_1}.git" }

gem "bridgetown", "2.1.1"

# Bridgetown 2.1.1's CLI is broken against samovar >= 2.4.1 (a NoMethodError in
# bridgetown-core's command.rb, fixed upstream by Bridgetown pinning samovar
# exactly in 2.2.x). Pin to the last compatible patch until upgrading Bridgetown.
gem "samovar", "2.4.0"

gem "kramdown", ">= 2.3.0"

# Puma is the Rack-compatible web server used by Bridgetown
gem "puma", "< 8"

gem "byebug"
