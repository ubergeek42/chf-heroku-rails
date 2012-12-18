class Link < ActiveRecord::Base
  attr_accessible :name, :url

  validates :name, :presence => true
  validates :url, :presence => true,
        :format => {
            :with => /http.+/,
            :message => "Must start with http"
        }
end
