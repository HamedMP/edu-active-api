class V1::CategoriesController < ApplicationController
  def index
    render json: Category.root, each_serializer: V1::CategorySerializer
  end
end
