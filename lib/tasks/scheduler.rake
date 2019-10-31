namespace :scheduler do
  task :scrape: :environment do
    @raw_html = HTTParty.get("https://www.reddit.com/r/Gunners/")
    puts @raw_html

    @parsed_html = Nokogiri::HTML(@raw_html)
    @parsed_html.css(“div#siteTable a.title”).each do |link|

    @story = Story.new

    @story.title = link.text
    @story.link = link[:href]
    @story.save

    end
  end
end
