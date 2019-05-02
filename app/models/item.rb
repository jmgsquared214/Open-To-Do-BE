class Item < ApplicationRecord
   belongs_to :list

   def serialize
     hash = {}
     attributes.each{ |key, val| hash[key] = val }
     hash
   end
end
