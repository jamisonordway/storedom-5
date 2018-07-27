class ItemSerializer < ActiveModel::ItemSerializer
  attributes :id, :name, :description, :image_url

  def item_id
    object.id
  end

  def item_name
    object.name
  end

  def item_description
    object.description
  end

  def item_image
    object.image_url
  end
end