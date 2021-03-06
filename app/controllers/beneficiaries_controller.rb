class BeneficiariesController < ApplicationController

  def per_page
    @per_page = params[:per_page] || 15
  end

  def page
    params[:page] || 1
  end

  def index
    search = BeneficiarySearch.new(params[:s])
    @beneficiaries = search.execute(page, per_page, current_user)
  end

end