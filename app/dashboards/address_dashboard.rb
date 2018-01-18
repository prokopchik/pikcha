require "administrate/base_dashboard"

class AddressDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    user: Field::BelongsTo,
    orders: Field::HasMany,
    id: Field::Number,
    address_1: Field::String,
    address_2: Field::String,
    city: Field::String,
    country: Field::String,
    zip_code: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :user,
    :orders,
    :id,
    :address_1,
    :city,
    :country,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :user,
    :orders,
    :id,
    :address_1,
    :address_2,
    :city,
    :country,
    :zip_code,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :user,
    :orders,
    :address_1,
    :address_2,
    :city,
    :country,
    :zip_code,
  ].freeze

  # Overwrite this method to customize how addresses are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(address)
    address.address_1
  end
end
