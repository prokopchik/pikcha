class LocalesController < ApplicationController
  def update
    I18n.locale = params[:id] || I18n.default_locale
    redirect_back(fallback_location: '/')
  end
end