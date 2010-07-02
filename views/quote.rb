require 'view_helpers'

module Quotes

    module Views

      class Quote < Mustache
        include Quotes::ViewHelpers

        def initialize(ssl = false)
          @ssl = ssl
        end

        def quotes
          {
            :quote_id => @quote.id,
            :body => @quote.quote_body,
            :created_at => formatted_date(@quote.created_at),
            :poster  => @quote.poster.username,
          }
        end

        def name
          [@quote.user.firstname, @quote.user.surname].join(' ')
        end

        def quotee
          @quote.user.username
        end

        def quotee_path
          "/users/#{quotee}"
        end

        def avatar
          gravatar(@quote.user.email, 50)
        end

        def include_quotee
          false
        end
      end

    end

end
