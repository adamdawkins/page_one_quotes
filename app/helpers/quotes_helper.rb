# frozen_string_literal: true

module QuotesHelper
  def strong_start(text)
    tag.span(text[0], class: "font-bold").concat(text[1..])
  end
end
