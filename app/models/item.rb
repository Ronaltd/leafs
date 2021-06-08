class Item < ApplicationRecord
  ITEM_TYPE = {vidro: 1, papel: 1, plastico: 4, metal: 15}
  belongs_to :leaf
end
