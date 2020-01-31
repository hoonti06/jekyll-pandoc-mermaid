Jekyll::Hooks.register :documents, :pre_render do |doc|
  next if not jekyll_pandoc_mermaid_is_enable(doc.site.config)

  doc.content = replace_mermaid_format_to_html_entites_before_rendering(doc.content)
end

#

def replace_mermaid_format_to_html_entites_before_rendering(input_text)
  regex = /{% mermaid %}([\w\W]*?){% endmermaid %}/

  output_text = input_text.gsub(regex) { |_|
    match = Regexp.last_match
    mermaid_block_text = Regexp.last_match[0]

    mermaid_block_text.gsub!(/\n/, '&#10;')
    mermaid_block_text.gsub!(/-/, '&#45;')
    mermaid_block_text.gsub!(/"/, '\"')
    
    mermaid_block_text
  }

  return output_text
end

#

# can modify not doc.content(unrendered content of the document), 
#            but doc.output(rendered output) after rendering
Jekyll::Hooks.register :documents, :post_render do |doc|
  next if not jekyll_pandoc_mermaid_is_enable(doc.site.config)

  doc.output = replace_html_entites_to_mermaid_format_after_rendering(doc.output)
end

#

def replace_html_entites_to_mermaid_format_after_rendering(input_text)

  regex = /<div class="mermaid">([\w\W]*?)<\/div>/

  output_text = input_text.gsub(regex) { |_|
    match = Regexp.last_match
    mermaid_block_text = Regexp.last_match[0]

    mermaid_block_text.gsub!(/‘/, "'")
    mermaid_block_text.gsub!(/’/, "'")
    mermaid_block_text.gsub!(/“/, '"')
    mermaid_block_text.gsub!(/”/, '"')

    mermaid_block_text
  }

  return output_text
end

#

def jekyll_pandoc_mermaid_is_enable(config)
  Jekyll::External.require_with_graceful_fail "jekyll-pandoc"
  Jekyll::External.require_with_graceful_fail "jekyll-mermaid"

  if config['markdown'] != 'Pandoc'
    return false
  elsif config['mermaid'] == nil or config['mermaid']['src'] == nil
    return false
  end

  return true
end
  
