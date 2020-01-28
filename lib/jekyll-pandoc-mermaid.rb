module Jekyll
  class PandocMermaid < Liquid::Block

    def initialize(tag_name, markup, tokens)
      super
    end

    def render(context)
      text = super

      text.gsub!(/\n/, '&#10;')
      text.gsub!(/-/, '&#45;')
      text.gsub!(/"/, '\"')
      text.gsub!(/'/, "'")

      @config = context.registers[:site].config['pandoc_mermaid']
      output = "<script src=\"#{@config['src']}\"></script>"
      output += "<div class=\"mermaid\">"
      output += text
      output += "</div>"

      output
    end
  end
end

Liquid::Template.register_tag('mermaid', Jekyll::PandocMermaid)
