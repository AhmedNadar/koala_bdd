require 'rubygems'
require 'spork'

# will run when spork starts and once
# Its good place to run all initialize for cucumber and rspec
Spork.prefork do
  require 'cucumber/rails'
  ActionController::Base.allow_rescue = false
  begin
    DatabaseCleaner.strategy = :transaction
  rescue NameError
    raise "You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it."
  end
  Cucumber::Rails::Database.javascript_strategy = :truncation
end


# This blcok will run before each test.
# like running factory girls
Spork.each_run do

end




