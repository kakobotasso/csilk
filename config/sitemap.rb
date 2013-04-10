SitemapGenerator::Sitemap.default_host = "http://www.csilkbrindes.com.br"

SitemapGenerator::Sitemap.create do
  add quem_somos_path, :changefreq => 'monthly', :priority => 0.7
  add fazemos_path, :changefreq => 'monthly', :priority => 0.7
  add clientes_path, :changefreq => 'monthly', :priority => 0.7
  add sustentabilidade_path, :changefreq => 'monthly', :priority => 0.7
  add social_path, :changefreq => 'monthly', :priority => 0.7
  add produtos_path, :changefreq => 'monthly', :priority => 0.7
  add contatos_path, :changefreq => 'monthly', :priority => 0.7
  add cotacoes_path, :changefreq => 'monthly', :priority => 0.7
  add fornecedores_path, :changefreq => 'monthly', :priority => 0.7

  Categoria.all.each do |categoria|
    add categoria_path(categoria.slug), :lastmod => categoria.updated_at, :priority => 0.8
  end
  
  Produto.all.each do |produto|
    add produto_path(produto.categoria.slug, produto.slug), :lastmod => produto.updated_at, :priority => 0.9
  end

end
SitemapGenerator::Sitemap.public_path = 'public/'