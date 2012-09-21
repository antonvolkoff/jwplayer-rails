# require 'railties'
require 'rails'

module JWPlayer::Rails
  class Engine < ::Rails::Engine
    initializer "precompile", :group => :all do |app|
      app.config.assets.precompile << "jwplayer.js"
    end

    initializer "helper" do |app|
      ActiveSupport.on_load(:action_view) do
        include Helper
      end
    end
  end
end