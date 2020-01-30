Gem::Specification.new do |s|
  s.name        = 'jekyll-pandoc-mermaid'
  s.version     = '1.0.1'
  s.summary     = "jekyll-pandoc-mermaid can help to use jekyll-mermaid plugin when using jekyll-pandoc plugin"
  s.description = "jekyll-pandoc-mermaid can solve rendering issue that occures when using jekyll-pandoc and jekyll-mermaid plugin together"
  s.authors     = ['Jihoon Kim']
  s.email       = 'hoonti06@gmail.com'
  s.files       = ['lib/jekyll-pandoc-mermaid.rb']
  s.homepage    = 'https://github.com/hoonti06/jekyll-pandoc-mermaid'
  s.license     = 'MIT'

  s.add_dependency "jekyll", '~> 4.0', '>= 4.0'
  s.add_dependency "jekyll-pandoc", '~> 2.0.1', '>= 2.0.1'
  s.add_dependency "jekyll-mermaid", '~> 1.0.0', '>= 1.0.0'
end
