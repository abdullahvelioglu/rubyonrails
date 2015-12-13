class KitapsController < ApplicationController
	before_action :set_kitaps, only: [:edit,:show,:destroy,:update]#before_action dosya acildigi zaman private fonksiyonu belirtilen methodlara otomatik ekler
	def index
		@kitaps = Kitap.all.order("RANDOM()").first(15)
	end

	def edit

	end

	def update
	@kitap.update(params.require(:kitap).permit(:since))
	redirect_to kitap_path 
	end

	def destroy
		@kitap.destroy
		redirect_to kitaps_path
	end
	def show
	end

	def new	
@kitap=Kitap.new	
	end

	def create
		@kitap = Kitap.new(kitap_params)
		if @kitap.save
			flash[:notice]="Basarili bir giris yaptiniz"
		
		redirect_to @kitap
		else
		flash[:notice]="hata. Niye integer yerine adini yaziyon dingil"
		redirect_to new_kitap_path
		
	end
end

private
  def kitap_params
    params.require(:kitap).permit(:name, :since)
  end

  def set_kitaps
  	@kitap=Kitap.find(params[:id])
  end

end


