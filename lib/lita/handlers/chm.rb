require "lita"
require "nokogiri"

module Lita
  module Handlers
    class Chm < Handler

      CHM_URL = "http://www.computerhistory.org/tdih/"

      route(/(today in computer history|tdih|chm)$/i, :history, command: true, help: {
        "today in computer history|tdih|chm" => "Shows a short history lesson of the day from the Computer History Museum."
      })

      def history(response)
        http_response = http.get(CHM_URL)
        if http_response.status == 200
          doc   = parse_http_response(http_response)
          title = extract_title(doc)
          date  = extract_date(doc)
          desc  = extract_desc(doc)
          response.reply("#{date}\n#{title}\n#{desc}")
        else
          response.reply("I think the Computer History Museum website (#{CHM_URL}) is down.")
        end
      end

      def parse_http_response(http_response)
        Nokogiri::HTML(http_response.body)
      end

      def extract_container(doc)
        doc.css('.chm-exhibit-container')[0]
      end

      def extract_title(doc)
        extract_container(doc).css('.chm-tdih-entry-title').text
      end

      def extract_date(doc)
        extract_container(doc).css('.chm-tdih-entry-date').text
      end

      def extract_desc(doc)
        extract_container(doc).css('.chm-tdih-entry-content').text
      end

    end
    Lita.register_handler(Chm)
  end
end