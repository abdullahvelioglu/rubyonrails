class Kitap < ActiveRecord::Base
	validates :name,presence:true
	validates :since, :inclusion => { :in => 1980..2000 }
end
