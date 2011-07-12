module ActionView
  module Helpers
    module FormTagHelper
      private
        def extra_tags_for_form html_options
          method = html_options.delete("method").to_s
    
          method_tag = case method
            when /^get$/i # must be case-insensitive, but can't use downcase as might be nil
              html_options["method"] = "get"
              ''
            when /^post$/i, "", nil
              html_options["method"] = "post"
              token_tag
            else
              html_options["method"] = "post"
              tag(:input, :type => "hidden", :name => "_method", :value => method) + token_tag
          end
          tags = snowman_tag + method_tag
          if tags.present?
            content_tag :div, tags, :style => 'margin:0;padding:0;display:inline'
          else
            ""
          end
        end
        
        def snowman_tag
          if request.env["HTTP_USER_AGENT"] =~ /MSIE/
            tag :input, :type => "hidden", :name => "utf8", :value => "&#x2713;".html_safe
          else
            ""
          end
        end
    end
  end
end