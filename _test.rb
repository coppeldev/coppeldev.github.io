@html_pages = [
    {
        "url" => "/index.html",
        "title" => "Inicio",
        "data" => {
            "menu_order" => 5
        }
    },
    {
        "url" => "/changelog/",
        "title" => "Historial de cambios",
        "data" => {
            "menu_order" => 15
        }
    },
    {
        "url" => "/developerguides/java/index.html",
        "title" => "Java",
        "data" => {
            "menu_order" => 2
        }
    },
    {
        "url" => "/developerguides/php/index.html",
        "title" => "PHP",
        "data" => {
            "menu_order" => 9
        }
    },
    {
        "url" => "/developerguides/index.html",
        "title" => "Guias de desarrollo",
        "data" => {
            "menu_order" => 11
        }
    },
    {
        "url" => "/blog/index.html",
        "title" => "Blog",
        "data" => {
            "menu_order" => 3
        }
    },
    {
        "url" => "/resources/examples/index.html",
        "title" => "Ejemplos",
        "data" => {
            "menu_order" => 8
        }
    },
    {
        "url" => "/resources/index.html",
        "title" => "Recursos",
        "data" => {
            "menu_order" => 7
        }
    },
    {
        "url" => "/about/",
        "title" => "Acerca de",
        "data" => {
            "menu_order" => 10
        }
    },
    {
        "url" => "/developerguides/php/standards/index.html",
        "title" => "Estandares de programación para PHP",
        "data" => {
            "menu_order" => 18
        }
    },
    {
        "url" => "/developerguides/php/standards/styleguide-and-format.html",
        "title" => "Formato y guia de estilo para PHP",
        "data" => {

        }
    }
]

array_of_hashes = [
    { :phone => "2130001111", :zip => "12346", :city => "sometown" },
    { :phone => "2130001111", :zip => "12343", :city => "sometown" },
    { :phone => "2130001111", :zip => "12349", :city => "sometown" }
]


#@a = array_of_hashes.sort_by { |hsh| hsh[:zip] }

#puts @a

# @pages = @html_pages.sort

@level = 1
@part_name = "developerguides"
@part_number = 1

#developerguides

#@html_pages = @html_pages.sort_by {|_key, value| value.url}
#metrics = {"sitea.com" => 745, "siteb.com" => 9, "sitec.com" => 10 }
#metrics.sort_by {|_key, value| value}
#metrics.sort {|a1,a2| a2[1].to_i <=> a1[1].to_i }
#metrics.sort {|key,value| a2[1].to_i <=> a1[1].to_i }
# ==> [["siteb.com", 9], ["sitec.com", 10], ["sitea.com", 745]]

#puts metrics

#@b = @html_pages.sort_by { |hsh| hsh["url"] }

@sorted = @html_pages.sort_by { |hsh|
    #hsh["data"]["menu_order"]
    #@hash = nil
    if hsh["data"].has_key?("menu_order")
        #hsh["data"]["menu_order"]
        hsh["data"]["menu_order"]
    else
        hsh["url"]
    end

    #@hash
}

puts @sorted


(0...@html_pages.length).each do |i|

    @parts = @html_pages[i]['url'].split('/').select{|part| part.length > 0}

    if @parts.length == @level

        puts "Url is: #{@html_pages[i]['url']}"
        #puts "Title is: #{@html_pages[i]['title']}"
        puts "length: #{@parts.length}"
        puts "Value of part #{@level} is #{@parts[@level-1]}"
        puts ""
    end

end
