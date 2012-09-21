module JWPlayer::Rails
  module Helper
    DEFAULT_OPTIONS = {
      id: 'jwplayer',
      flashplayer: '/swf/player.swf',
      width: '400',
      height: '300'
    }

    # Includes JWPlayer javascript library
    def jwplayer_assets
      javascript_include_tag "jwplayer"
    end

    def jwplayer(options = {})
      options = DEFAULT_OPTIONS.merge(options)

      result = %Q{<div id='player'>This div will be replaced by the JW Player.</div>
        <script type='text/javascript'>
          jwplayer('#{options[:id]}').setup({
            #{options.except(:id).to_json}
          });
        </script>}
    end
  end
end