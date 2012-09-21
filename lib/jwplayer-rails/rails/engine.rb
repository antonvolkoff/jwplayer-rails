module JWPlayer::Rails
  class Engine < ::Rails::Engine
    initializer "precompile", :group => :all do |app|
      app.config.assets.precompile << "jwplayer.js"
    end
  end
end