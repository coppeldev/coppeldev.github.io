module Jekyll
  class RenderTimeTag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(context)
        @url = context['page']['url']
        site = context.registers[:site]
        @stylesheets = site.data['stylesheets']

        @pageRoutes = @url.split('/').select {|item|item.length > 0}

        @validation = nil

        (0...@stylesheets.length).each do |i|

            @stylesheetRoutes = @stylesheets[i]['url'].split('/').select{|item|item.length > 0}

            @validations = {
                "isCorrect" => true,
                "isHtml" => false
            }

            (0...@stylesheetRoutes.length).each do |j|

                @isHtml = true

                if @stylesheetRoutes[j].index('.html') != nil
                    @isHtml = true
                end

                if @isHtml and @stylesheetRoutes[j] != @pageRoutes[j]
                    @validations['isCorrect'] = false
                end

                if @isHtml and @stylesheetRoutes[j] != @pageRoutes[j]
                    @validations['isCorrect'] = false
                end

                @validations['isHtml'] = @isHtml

            end

            if ( @validation == nil and @validations['isCorrect'] ) or
                ( @validation != nil and @validations['isCorrect'] and @validations['isHtml'] )
                @validation = @stylesheets[i]
            end

        end

        if @validation != nil
            "#{@validation['css']}"
        else
            ""
        end
    end
  end
end

Liquid::Template.register_tag('render_time', Jekyll::RenderTimeTag)
