module ApplicationHelper
  def hidden_div_if(condition, attributes = {}, &block)
    if condition
      attributes["style"] = "opacity: 0"
    end
    content_tag("div", attributes, &block)
  end
end
