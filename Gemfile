source "http://rubygems.org"

# Declare your gem's dependencies in simple_view_helpers.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec

# jquery-rails is used by the dummy application
gem "jquery-rails"

group :test do
  # Mac specific gems
  if RUBY_PLATFORM =~ /darwin/i
    gem 'rb-fsevent' # Allows gems (e.g. guard) to use FSEvent instead of filesystem polling
    gem 'growl' # Allows gems (e.g. guard) to send notifications to Growl using its network transfer protocol
  end
  
  # Linux specific gems
  if RUBY_PLATFORM =~ /linux/i
    gem 'rb-inotify' # Allows gems (e.g. guard) to use inotify instead of filesystem polling
    gem 'libnotify' # Allows gems (e.g. guard) to send notifications to Libnotify on Linux
  end
end

# Declare any dependencies that are still in development here instead of in
# your gemspec. These might include edge Rails or gems from your path or
# Git. Remember to move these dependencies to your gemspec before releasing
# your gem to rubygems.org.

# To use debugger
# gem 'debugger'
