class Hai
  module Views
    class Layout < Mustache
      def title 
        @title || "Trust the Stache"
      end

      def quotes
        
        Quote.all.map do |quote|
          {
            :quote_id => @quote.id,
            :body => @quote.body,
            :data => @quote.data,
            :source => @quote.source
          }
        end
      end
    end
  end
end
