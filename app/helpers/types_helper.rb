module TypesHelper
    def type_badge(type, label = type.name)
        link_to(type_badge_content(label, type.color), type).html_safe
    end

    def type_badge_content(label, color)
        raw "<span style='background-color: #{color}' class='badge'>
        #{label}
        </span>"
    end
end
