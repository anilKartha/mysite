## Liquid tag 'marginfigurestyled' used to add styled image data that fits 
## in the right margin column area of the layout
## Usage {% marginfigurestyled 'margin-id' 'path/to/image' 'style parameters' 'This is the caption' %}
#
module Jekyll
  class RenderMarginFigureStyledTag < Liquid::Tag

  	require "shellwords"

    def initialize(tag_name, text, tokens)
      super
      @text = text.shellsplit
    end

    def render(context)
      baseurl = context.registers[:site].config['baseurl']
      if @text[1].start_with?('http://', 'https://', '//')
        "<label for='#{@text[0]}' class='margin-toggle'>&#8853;</label>"+
        "<input type='checkbox' id='#{@text[0]}' class='margin-toggle'/>"+
        "<span class='marginnote'><img class='fullwidth' src='#{@text[1]}' style='#{@text[2]}' /><br>#{@text[3]}</span>"
      else
        "<label for='#{@text[0]}' class='margin-toggle'>&#8853;</label>"+
        "<input type='checkbox' id='#{@text[0]}' class='margin-toggle'/>"+
        "<span class='marginnote'><img class='fullwidth' src='#{baseurl}/#{@text[1]}' style='#{@text[2]}' /><br>#{@text[3]}</span>"
      end
    end
  end
end

Liquid::Template.register_tag('marginfigurestyled', Jekyll::RenderMarginFigureStyledTag)
