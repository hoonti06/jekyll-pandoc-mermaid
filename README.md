jekyll-pandoc-mermaid
==================

**jekyll-pandoc-mermaid** can solve rendering issue that occures when using [jekyll-pandoc](https://github.com/mfenner/jekyll-pandoc) and [jekyll-mermaid](https://github.com/jasonbellamy/jekyll-mermaid) plugin together
 
**'jekyll-pandoc-mermaid' is enable only when using gem `jekyll-pandoc` and `jekyll-mermaid`**

'jekyll-pandoc-mermaid' uses [Jekyll Hook](https://jekyllrb.com/docs/plugins/hooks).


## Dependencies

* Jekyll, version `4.0` or higher
* [jekyll-pandoc](https://github.com/mfenner/jekyll-pandoc), version `2.0.1` or higher (Jekyll-Pandoc requires 'pandoc-ruby')
* [jekyll-mermaid](https://github.com/jasonbellamy/jekyll-mermaid), version `1.0.0` or higher


## Installation

Run `bundle install` after adding the gem to your Jekyll `Gemfile`:
```ruby
gem "jekyll-pandoc-mermaid"
```

Please see the [Jekyll documentation](http://jekyllrb.com/docs/plugins/#installing-a-plugin) for more installation options.


## Configuration

1. Add the gem to the Jekyll `_config.yml`:
```yml
plugin:
  - jekyll-pandoc-mermaid
```

2. 'jekyll-pandoc-mermaid' is enable only when set as follows in the Jekyll `_config.yml`:
```yml
markdown: Pandoc
```
Please see the [jekyll-pandoc Configuration](https://github.com/mfenner/jekyll-pandoc#configuration) for more configuration options.


3. 'jekyll-pandoc-mermaid' is enable only when set as follows in the Jekyll `_config.yml`:
```yml
mermaid:
  src: 'path/to/mermaid.js' (eg. https://unpkg.com/mermaid@8.4.6/dist/mermaid.min.js)
```
Please see the [jekyll-mermaid Configuration](https://github.com/jasonbellamy/jekyll-mermaid#config) for more configuration options.


## Usage

```liquid
{% mermaid %}
graph TD
    A-->B
    A-->C
    B-->D
    C-->D
{% endmermaid %}
```

Please see the [jekyll-mermaid usage](https://github.com/jasonbellamy/jekyll-mermaid#usage) and [mermaid website](https://mermaid-js.github.io/mermaid/#/) for more examples.


## Contributing
1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


## License
[MIT License](LICENSE).
