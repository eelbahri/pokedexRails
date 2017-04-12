module TypesHelper
    def type_badge(type, label = type.name)
        raw "<span style='background-color: #{type.color}' class='badge'>
        #{label}
        </span>"
    end
end
