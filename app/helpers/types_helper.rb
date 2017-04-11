module TypesHelper
    def type_badge(name, color)
        raw "<span style='background-color: #{color}' class='badge'>
        #{name}
        </span>"
    end
end
