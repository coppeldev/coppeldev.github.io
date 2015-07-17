# @data = [3,5,1,6].each_with_index.map { |x,i| [x, i+2] }
@stylesheets = [
    {
        "url" => "/index.html",
        "css" => "home"
    },
    {
        "url" => "/php/index.html",
        "css" => "php1"
    },
    {
        "url" => "/developerguides/php",
        "css" => "php"
    }
]

@url = "_developerguides/php/asdasd/asdasd/asdasd/asdas/asdas/index.html"

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
    puts ">>> March found"
    puts "Stylesheet url: #{@validation['url']}"
    puts "Stylesheet css: #{@validation['css']}"
    puts "Page: #{@url}"
else
    puts ">>> March NOT found"
end
