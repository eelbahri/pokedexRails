module ApplicationHelper
    def flash_color(name)
        return 'info' unless %w( success info danger warning ).include?(name)
        name
    end
end
