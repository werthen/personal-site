require 'pandoc-ruby'

Nanoc::Filter.define(:md_to_tex) do |content, _params|
  @converter = PandocRuby.new(content, from: :commonmark, to: :latex)
  @converter.convert
end
