module Api
  module V1
    class ProgrammingLanguagesController < ApplicationController
      before_filter :find_model

      
      private

      def find_model
        @model = ProgrammingLanguage.find(params[:id]) if params[:id]
      end
    end
  end
end
