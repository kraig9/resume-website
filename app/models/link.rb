class Link < ApplicationRecord
  belongs_to :project
  validates :url, format: { with: URI::DEFAULT_PARSER.make_regexp }, allow_blank: true
  validates :link_type, presence: true
end
