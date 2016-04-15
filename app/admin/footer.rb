module ActiveAdmin
  module Views
    class Footer < Component

      def build
        super :id => "footer"                                                    
        super :style => "text-align: right;"                                     

        div do                                                                   
          small "Copyright Artsquare #{Date.today.year}"                                       
        end
      end

    end
  end
end