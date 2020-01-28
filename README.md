jekyll-pandoc-mermaid
==================

## NOTE : This project was forked from [jekyll-mermaid](https://github.com/jasonbellamy/jekyll-mermaid) and customized 

A [Jekyll](http://jekyllrb.com/) plugin to simplify the creation of [mermaid](https://github.com/knsv/mermaid) diagrams and flowcharts in your posts and pages converted from [Pandoc](https://pandoc.org).

'jekyll-pandoc-mermaid' uses [Jekyll Tag-blocks](https://jekyllrb.com/docs/plugins/tags/#tag-blocks) 

__'jekyll-pandoc-mermaid' is recommended only when using gem `jekyll-pandoc`.__


## Requirements

* Jekyll, version `4.0` or higher
* [Jekyll-Pandoc](https://github.com/mfenner/jekyll-pandoc), version `2.01` or higher (Jekyll-Pandoc requires 'pandoc-ruby')


## Installation

Run `bundle install` after adding the gem to your Jekyll `Gemfile`:
```
gem "jekyll-pandoc-mermaid"
```

Please see the [Jekyll documentation](http://jekyllrb.com/docs/plugins/#installing-a-plugin) for more installation options.


## Configuration

1. Add the gem to the Jekyll `_config.yml`:
```
plugin:
  - jekyll-pandoc-mermaid
```

2. 'jekyll-pandoc-mermaid' is recommended only when set as follows in the Jekyll `_config.yml`:
```
markdown: Pandoc
```

3. 'Add [mermaid](https://github.com/knsv/mermaid) source javascript file path to the Jekyll `_config.yml`:
```
pandoc_mermaid:
  src: 'path/to/mermaid.js' (eg. https://unpkg.com/mermaid@8.4.6/dist/mermaid.min.js)
```


## Usage

Simply include the [jekyll-pandoc-mermaid](https://github.com/hoonti06/jekyll-pandoc-mermaid) block helper in any of your templates.

```liquid
{% mermaid %}
graph TD
    A-->B
    A-->C
    B-->D
    C-->D
{% endmermaid %}
```

Please see the [mermaid website](https://mermaid-js.github.io/mermaid/#/) for more examples.


## Contributing
1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


## License
[MIT License](LICENSE).
