require "administrate/base_dashboard"

class MobilePhoneDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    mobile_phone_pictures: Field::HasMany,
    manufacturer: Field::BelongsTo,
    operation_system: Field::BelongsTo,
    colors: Field::HasMany,
    order_mobile_phones: Field::HasMany,
    id: Field::Number,
    name: Field::String,
    price: Field::Number.with_options(decimals: 2),
    memory_storage: Field::Number,
    display_size: Field::Number.with_options(decimals: 2),
    operative_memory: Field::Number,
    processor: Field::String,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :manufacturer,
    :name,
    :memory_storage,
    :price,
    :colors,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :mobile_phone_pictures,
    :manufacturer,
    :operation_system,
    :colors,
    :order_mobile_phones,
    :id,
    :name,
    :price,
    :memory_storage,
    :display_size,
    :operative_memory,
    :processor,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :mobile_phone_pictures,
    :manufacturer,
    :operation_system,
    :colors,
    :name,
    :price,
    :memory_storage,
    :display_size,
    :operative_memory,
    :processor,
  ].freeze

  # Overwrite this method to customize how mobile phones are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(mobile_phone)
    "#{mobile_phone.manufacturer.name} #{mobile_phone.name}"
  end
end
