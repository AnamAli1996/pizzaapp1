json.extract! pizza, :id, :pizza_name, :pizza_size, :price, :description, :vegetarian, :gluten_free, :spice_level, :image, :created_at, :updated_at
json.url pizza_url(pizza, format: :json)