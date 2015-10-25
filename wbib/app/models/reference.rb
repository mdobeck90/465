class Reference < ActiveRecord::Base

  before_save :http_concat

  belongs_to :topic
  
  validates :url, :description, presence: true

  def http_concat
    if ("#{url}".starts_with?("http://")) == false && ("#{url}".starts_with?("https://")) == false
      self.url = "http://" + "#{url}"
    end
  end

end
