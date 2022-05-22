class Book < ApplicationRecord
  #ActiveStrage導入
  has_one_attached :image
  
  
end
