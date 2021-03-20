# frozen_string_literal: true

class QuotesController < ApplicationController
  def show
    @quote = Quote.find(params[:id])
  end
end
