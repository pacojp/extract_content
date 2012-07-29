# for ruby 1.9.*

require 'open-uri'
require './extract_content'

DATA.each_line do |url|
  url.strip!
  if url.size > 0
    html = open(url).read
    puts url
    #p html
    p ExtractContent::analyse(html)
  end
end

__END__
http://gigazine.net/news/20120727-denryoku-9-graph/
http://www.soccer-king.jp/sk_column/article/34467.html
http://japan.cnet.com/news/business/35019749/?ref=rss

