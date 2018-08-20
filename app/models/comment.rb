class Comment < ApplicationRecord::Base
  belongs_to :article
end
