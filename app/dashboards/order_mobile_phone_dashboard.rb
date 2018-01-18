require "administrate/base_dashboard"

class OrderMobilePhoneDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    order: Field::BelongsTo,
    mobile_phone: Field::BelongsTo,
    color: Field::BelongsTo,
    id: Field::Number,
    quantity: Field::Number,
    price: Field::Number.with_options(decimals: 2),
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :order,
    :mobile_phone,
    :quantity,
    :color,
    :price,

  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :order,
    :mobile_phone,
    :color,
    :id,
    :quantity,
    :price
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :order,
    :mobile_phone,
    :color,
    :quantity,
    :price
  ].freeze

  # Overwrite this method to customize how order mobile phones are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(order_mobile_phone)

  # end
end
