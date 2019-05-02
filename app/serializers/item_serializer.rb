class ItemSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :item_name, :description

  def item_name
    object.item_name
  end

  def created_at
    object.created_at.strftime('%B %d, %Y')
  end
end
