require "administrate/base_dashboard"

class ManufacturerDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    logo: Field::Paperclip.with_options(thumbnail_style: :thumb, big_style: :medium),
    mobile_phones: Field::HasMany,
    id: Field::Number,
    name: Field::String,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :logo,
    :name,
    :id,
    :mobile_phones,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :logo,
    :mobile_phones,
    :id,
    :name,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :logo,
    :name,
  ].freeze

  # Overwrite this method to customize how manufacturers are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(manufacturer)
    manufacturer.name
  end
end
