## Liquid tag 'myepigraph' used to add an epigraph
## in the main text area of the layout. Accept 2 or 3 parameters.
## Usage {% epigraph 'text-body-of-epigraph' 'author-of-epigraph' 'citation-of-epigraph' %}
## Or: {% epigraph 'text-body-of-epigraph' 'author-of-epigraph' %}
## Modified by Anil Menon (AM) from Clay Harmon's Epigaph.rb
#
module Jekyll
  class RenderMyEpigraphTag < Liquid::Tag

  	require "shellwords"

    def initialize(tag_name, text, tokens)
      super
      @text = text.shellsplit
    end

    def render(context)
	if @text.size > 2
        "<div class='epigraph'><blockquote><p>#{@text[0]}</p>"+
        "<footer>#{@text[1]}, "+"<cite>#{@text[2]}</cite></footer></blockquote></div>"
	else 
        "<div class='epigraph'><blockquote><p>#{@text[0]}</p>"+
        "<footer>#{@text[1]}</footer></blockquote></div>"
	end
    end
  end
end

Liquid::Template.register_tag('myepigraph', Jekyll::RenderMyEpigraphTag)
