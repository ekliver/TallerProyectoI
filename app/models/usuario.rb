class Usuario < ActiveRecord::Base
    validates_uniqueness_of :logiUsuario, :nomUsuario, :correoUsuario, :apeUsuario, :numDni, :numCelular
    
end
