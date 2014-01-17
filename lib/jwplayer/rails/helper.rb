module JWPlayer::Rails
  module Helper
    DEFAULT_OPTIONS = {
      id: 'jwplayer',
      flashplayer: '/assets/flash.swf',
      width: '400',
      height: '300'
    }

    # Includes JWPlayer javascript library (all)
    def jwplayer_assets
      javascript_include_tag "jwplayer", "jwplayer.html5"
    end
    
    # only include JWPlayer flash javascript file
    def jwplayer_flash_assets
      javascript_include_tag "jwplayer"
    end
    
    # only include JWPlayer html5 javascript file
    def jwplayer_html_assets
      javascript_include_tag "jwplayer.html5"
    end

    def jwplayer(options = {})
      options = DEFAULT_OPTIONS.merge(options)

      result = %Q{<div id='#{options[:id]}'>This div will be replaced by the JW Player.</div>
                  <script type='text/javascript'>
                    jwplayer('#{options[:id]}').setup(#{options.except(:id).to_json});
                  </script>}

      result.respond_to?(:html_safe) ? result.html_safe : result
    end
  end
end
