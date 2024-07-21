require 'open-uri'
require 'nokogiri'

class Grabber
    def grab_from_uri(uri)
        html = URI.open(uri)
        remove_tags(html)
    end

    def grab_from_file(file)
      File.open(file).read
    end

    def grab_from_htmlfile(html_file)
        html = File.open(html_file).read
        remove_tags(html)
    end

    private
    def remove_tags(html)
        doc = Nokogiri::HTML.parse(html)
    end
