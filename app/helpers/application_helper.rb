# frozen_string_literal: true

module ApplicationHelper
  # rubocop:disable Rails/OutputSafety
  def nbsp(text)
    raw text.gsub(/\s(?!.*\s)/, "&nbsp;")
  end
  # rubocop:enable Rails/OutputSafety
end
