class Post < ActiveRecord::Base
  attr_accessible :body, :category_id, :order, :title
end
