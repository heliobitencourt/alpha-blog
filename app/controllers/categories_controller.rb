class CategoriesController < ApplicationController

    before_action :set_category, only: [:show]

    def new
        @category = Category.new
    end

    def show

    end

    def index

    end

    def create

    end

    private

    def set_category
        @category = Category.find(params[:id])
    end
end