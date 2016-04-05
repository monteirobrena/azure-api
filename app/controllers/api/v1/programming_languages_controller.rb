module Api
  module V1
    class ProgrammingLanguagesController < ApplicationController

      skip_before_filter :verify_authenticity_token  

      before_filter :find_model

      respond_to :json

      def create
        programming_language = ProgrammingLanguage.new(programming_language_params)
        if programming_language.save
          render json: programming_language, status: 201
        else
          render json: { errors: programming_language.errors }, status: 422
        end
      end

      def index
        respond_with ProgrammingLanguage.all  
      end

      private

      def find_model
        @model = ProgrammingLanguage.find(params[:id]) if params[:id]
      end

      def programming_language_params
        params.require(:programming_language).permit!
      end
    end
  end
end
