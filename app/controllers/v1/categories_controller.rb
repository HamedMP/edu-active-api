class V1::CategoriesController < ApplicationController
  def index
    render json: Category.where(parent: nil), each_serializer: V1::CategorySerializer
  end
end
