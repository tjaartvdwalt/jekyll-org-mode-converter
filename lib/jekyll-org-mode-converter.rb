require 'org-ruby'

module Jekyll
  class UpcaseConverter < Converter
    safe true
    priority :low

    # Match all files that end in .org
    def matches(ext)
      ext =~ /^\.org$/i
    end
    
    # Output goes to html
    def output_ext(ext)
      ".html"
    end

    def convert(content)
      p = Orgmode::Parser.new(content)
      p.to_html
    end
  end
end
