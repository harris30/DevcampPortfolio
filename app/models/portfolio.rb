class Portfolio < ApplicationRecord
    def self.angular
        where(subtitle: 'Angular')
    end
    scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= "http://placehold.it/600x400"
    self.thumb_image ||= "http://placehold.it/350x200"
  end
end

if self.main_image == nil
   self.thumb_image = "http://placehold.it/600x400"
end