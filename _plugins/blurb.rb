## Liquid tag 'blurb' used to add a blurb
## in the main text area of the layout
## Usage {% blurb 'text-body-of-epigraph' 'author-of-epigraph' 'citation-of-epigraph' %}
## Author: AM 
## Date: November 15, 2021
#
module Jekyll
  class RenderBlurbTag < Liquid::Tag

  	require "shellwords"

    def initialize(tag_name, text, tokens)
      super
      @text = text.shellsplit
    end

    def render(context)
        "<div class='blurb'><blockquote><p>#{@text[0]}</p>"+
        "<footer>#{@text[1]} "+"<cite>#{@text[2]}</cite></footer></blockquote></div>"
    end
  end
end

Liquid::Template.register_tag('blurb', Jekyll::RenderBlurbTag)
