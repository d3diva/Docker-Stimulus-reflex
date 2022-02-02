class ReverseTextReflex < ApplicationReflex
  def perform
    @value = element[:value].reverse
  end