class Hai
  module Views
    class Index < Layout
      def quotes
        @quotes.map do |q|
          {
            :id => q.id,
            :quote => q.quote,
            :date => formatted_date(q.date),
            :coeder => q.user
          }
        end
      end

      def pager
        @quotes.pager.to_html('/')
      end

      def formatted_date(date)
        date ? date.strftime('%a %d %b %Y %I:%M %p') : ''
      end

    end
  end
end
