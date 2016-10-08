class YearsController < ApplicationController

  def index
    @conference_years = Conference.all.map(&:year).uniq
  end
end
