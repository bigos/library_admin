# spec/support/factory_bot.rb
RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
  config.before(:suite) { FactoryBot.reload }
end

# https://github.com/thoughtbot/factory_bot/blob/master/GETTING_STARTED.md#linting-factories
