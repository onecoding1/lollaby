class Hai
  module Views
    class Layout < Mustache
      def title
        @title || 'HAI @COEDER'
      end
    end
  end
end
