Dado ("que acesso o portal das lojas americanas") do
    visit '/'
    #valida url 'https://www.americanas.com.br'
    expect(find('#brd-link').visible?).to be true
    expect(find('#brd-link').text).to include 'Americanas'
end

Quando("pesquiso {string}") do |busca|
    find('#h_search-input').set busca
    click_button 'Buscar'
end

Entao("retorna mensagem de {string}") do |msgErro|
    expect(find('#content-middle').text).to have_content msgErro
end

Entao("realizo a escolha do produto para ver os detalhes") do
    expect(find('#content-middle').text). to have_content 'smartphone xiaomi mi 9 se'
    visit '/produto/1291677803/smartphone-xiaomi-mi-9-se?cor=Azul%20-%20Ocean%20Blue&pfm_carac=celular%20xiaomi&pfm_index=3&pfm_page=search&pfm_pos=grid&pfm_type=search_page&tamanho=64GB'
    expect(find('#product-name-default').text).to include 'Smartphone Xiaomi Mi 9 SE'
    sleep 5
end

Entao("valido o produto no carrinho") do
    visit '/garantia/1291677803?buyboxField=&buyboxToken=&condition=NEW&offerId=5dc2feac0b100146c4321974&offerType=&productId=1291677803&productSku=1291678726&sellerId=34744895000271'
    expect(find('#content').text).to include 'Agora que você já escolheu seu produto, saiba como protegê-lo por mais tempo.'
    click_button  'Continuar'
    sleep 5
    visit 'https://sacola.americanas.com.br/simple-basket/'
    sleep 10
end