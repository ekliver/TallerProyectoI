class Beneficio < ActiveRecord::Base
    belongs_to :user
    has_many :ejes
    has_many :locals
    has_many :imagens
end
