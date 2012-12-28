class Tagging < ActiveRecord::Base
  #establish relationships between tables
  belongs_to :article
  belongs_to :tag
end
