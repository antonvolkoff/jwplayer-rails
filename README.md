# Jwplayer::Rails

JW Player for Rails. Current version of JW Player is 6.8.4616

## Installation

Add this line to your application's Gemfile:

    gem 'jwplayer-rails', :git => 'git://github.com/dutgriff/jwplayer-rails.git'

~~Or install it yourself as:~~

~~    $ gem install jwplayer-rails~~

## Usage

First include assets on the page

    <%= jwplayer_assets %>

Than place a div with JW Player

    <%= jwplayer %>

You can pass options to jwplayer helper to customize it:

    <%= jwplayer({width: 500, height: 200}) %>

More information for customization could be found [here](http://www.longtailvideo.com/support/jw-player/28839/embedding-the-player)

Have fun!
