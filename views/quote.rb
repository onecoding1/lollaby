module Hai
  module Views
    class Quote < Mustache
      def quotes
        {
          :quote_id => @quote.id,
          :body => @quote.body,
          :date => @quote.date,
          :source  => @quote.source
        }
      end
    end
  end
end
