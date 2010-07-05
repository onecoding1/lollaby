class Hai
  module Views
    class Index < Layout
      def quotes
        Quote.all.map do |quote|
          {
            :quote_id => quote.id,
            :body => quote.body,
            :data => quote.data,
            :source => quote.source
          }
        end
      end
    end
  end
end
