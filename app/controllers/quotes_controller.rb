# frozen_string_literal: true

class QuotesController < ApplicationController
  def show
    @quote = Quote.find_by(number: params[:id])
  end
end
