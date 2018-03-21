# spec/support/factory_bot.rb
RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
end

# https://github.com/thoughtbot/factory_bot/blob/master/GETTING_STARTED.md#linting-factories
