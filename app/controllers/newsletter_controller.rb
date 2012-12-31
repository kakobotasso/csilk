class NewsletterController < ApplicationController
	layout false
	def novo
		@newsletter = Newsletter.new(params[:newsletter])
		if @newsletter.save
			@mensagem = "Cadastro efetuado com sucesso."
		else
			@mensagem = "Erro ao efetuar cadastro."
		end
	end
end