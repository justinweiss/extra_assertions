require File.join(File.expand_path(File.dirname(__FILE__)), 'lib/extra_assertions')
require 'active_support/test_case'

# do this so we don't get deprecation warnings
ActionController::Assertions::ModelAssertions.send(:remove_method, :assert_valid)

[ActiveSupport::TestCase, ActionController::TestCase].each do |c|
  c.instance_eval do
    include(ExtraAssertions)
  end
end
