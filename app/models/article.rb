class Article < ApplicationRecord::Base
	has_many :comments
end
