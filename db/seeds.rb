# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts 'Cleaning database'

Company.destroy_all

Company.create!(
  name: 'Magalu',
  url: 'https://clube.magazineluiza.com.br/',
  logo: 'https://staticz.com.br/img/logos/magazine-luiza.png'
  )


Company.create!(
  name: 'Americanas',
  url: 'https://www.americanas.com.br/',
  logo: 'https://staticz.com.br/img/logos/americanas.png'
  )

Company.create!(
  name: 'Privalia',
  url: ' https://br.privalia.com/public/',
  logo: 'https://staticz.com.br/img/logos/privalia.png'
  )

Company.create!(
  name: 'Dell',
  url: 'https://www.dell.com/pt-br',
  logo: 'https://staticz.com.br/img/logos/dell.png'
  )

Company.create!(
  name: 'Ifood',
  url: 'https://www.ifood.com.br/lista-restaurantes',
  logo: 'https://staticz.com.br/img/logos/ifood.png'
  )

Company.create!(
  name: 'Netshoes',
  url: 'https://www.netshoes.com.br/',
  logo: 'https://staticz.com.br/img/logos/netshoes.png'
  )

 Company.create!(
  name: 'Uber',
  url: 'https://www.uber.com/br/en/',
  logo: 'https://staticz.com.br/img/logos/cupom-uber.png'
  )
  
Company.create!(
  name: 'Mercado Livre',
  url: 'https://www.mercadolivre.com.br/',
  logo: 'https://staticz.com.br/img/logos/mercado-livre.png'
  )

Company.create!(
  name: 'Renner',
  url: 'https://www.lojasrenner.com.br/',
  logo: 'https://staticz.com.br/img/logos/renner.png'
  )

Company.create!(
  name: 'Adidas',
  url: 'https://www.adidas.com.br/',
  logo: 'https://staticz.com.br/img/logos/adidas.png'
  )

Company.create!(
  name: 'C&A',
  url: 'https://www.cea.com.br/',
  logo: 'https://staticz.com.br/img/logos/cea.png'
  )

Company.create!(
  name: 'Booking',
  url: 'https://www.booking.com/',
  logo: 'https://staticz.com.br/img/logos/booking.png'
  )

Company.create!(
  name: 'Submarino',
  url: 'https://www.submarino.com.br/',
  logo: 'https://staticz.com.br/img/logos/submarino.png'
  )

Company.create!(
  name: 'Zattini',
  url: 'https://www.zattini.com.br/',
  logo: 'https://staticz.com.br/img/logos/zattini.png'
  )

Company.create!(
  name: 'Shopee',
  url: 'https://shopee.com.br/',
  logo: 'https://staticz.com.br/img/logos/shopee.png'
  )

Company.create!(
  name: 'AliExpress',
  url: 'https://best.aliexpress.com/',
  logo: 'https://staticz.com.br/img/logos/aliexpress.png'
  )

Company.create!(
  name: 'Amazon',
  url: 'https://www.amazon.com.br/',
  logo: 'https://staticz.com.br/img/logos/amazon.png'
  )

Company.create!(
  name: 'Casas Bahia',
  url: 'https://www.casasbahia.com.br/',
  logo: 'https://staticz.com.br/img/logos/casas-bahia.png'
  )

Company.create!(
  name: '99 Taxis',
  url: 'https://99app.com/',
  logo: 'https://staticz.com.br/img/logos/99taxis.png'
  )

Company.create!(
  name: 'Centauro',
  url: 'https://www.centauro.com.br/',
  logo: 'https://staticz.com.br/img/logos/centauro.png'
  )

Company.create!(
  name: 'Shein',
  url: 'https://br.shein.com/',
  logo: 'https://staticz.com.br/img/logos/sheinside.png'
  )

Company.create!(
  name: 'Kabum',
  url: 'https://www.kabum.com.br/',
  logo: 'https://staticz.com.br/img/logos/KaBuM.png'
  )

Company.create!(
  name: 'Natura',
  url: 'https://www.natura.com.br/',
  logo: 'https://staticz.com.br/img/logos/natura.png'
  )

Company.create!(
  name: 'Ponto',
  url: 'https://www.pontofrio.com.br/',
  logo: 'https://staticz.com.br/img/logos/ponto.png'
  )

Dropoff.create(
  name: 'Pão de Açucar - Portal do Morumbi',
  address: 'R. Mal. Hastimphilo de Moura, 30, São Paulo - SP, 05641-000',
  opening_hours: '24h'
  )

Dropoff.create(
  name: 'G Barbosa',
  address: 'R. Luiz Chagas, 55, Aracaju - SE, 49037-430',
  opening_hours: '24h'
  )

Dropoff.create(

  name: 'Pão de Açúcar - Aracajú',
  address: 'R. José Seabra Batista, Jardins, Aracaju - SE, 49025-750',
  opening_hours: '24h'
  )

Dropoff.create(
  name: 'Extra - Aracajú',
  address: 'Av. Adélia Franco, 3735 - Grageru, Aracaju - SE, 49025-620',
  opening_hours: '24h'
  )

Dropoff.create(
  name: 'Bompreço - Aracajú',
  address: 'Av. Pedro Valadares, 780 - Jardins, Aracaju - SE, 49025-090',
  opening_hours: '24h'
  )

Dropoff.create(
  name: 'Shopping Jardins - Aracajú',
  address: 'Avenida Ministro Geraldo Barreto Sobra, 215 - Jardins, Aracaju - SE, 49026-010',
  opening_hours: '24h'
  )

Dropoff.create(
  name: 'McDonalds - Suissa',
  address: 'Av. Hermes Fontes, 1118 - Suissa, Aracaju - SE, 49050-000',
  opening_hours: '24h'
  )

Dropoff.create(
  name: 'Hirota - Portal',
  address: 'Av. Dr. Guilherme Dumont Vilares, 1450 - Jardim Londrina, São Paulo - SP, 05640-003',
  opening_hours: '24h'
  )

Coupon.create(
  company_id: 1,
  discount: 'Cupom Extra de 30% de desconto Dia dos namorados',
  code: 'LEAFSDOCE',
  leafs_value: 10
  )

Coupon.create(
  company_id: 1,
  discount: 'Móveis selecionados com 10% de descontos',
  code: 'EXCLUSIVOMOVEIS',
  leafs_value: 20
  )

Coupon.create(
  company_id: 4,
  discount: 'Cupom Dell de R$300 OFF acima de R$6.499 + Frete Grátis',
  code: 'LEAFS300',
  leafs_value: 100
  )

Coupon.create(
  company_id: 2,
  discount: 'Cupom Americanas exclusivo concede R$15 OFF',
  code: 'CUPOMLEAFS20',
  leafs_value: 15
  )
 
Dropoff.create(
  name: 'Recitotal',
  address: ' Av. Jaraguá, 246 - Cidade Industrial Satélite de São Paulo, Guarulhos - SP, 07221-050',
  opening_hours: 'Segunda a sexta-feira 7:00-17:00'
  )

Dropoff.create(
  name: ' J.B. Reciclagem',
  address: ' R. dos Protestantes, 49 - Centro Histórico de São Paulo, São Paulo - SP, 01212-020',
  opening_hours: 'Segunda a sexta-feira 7:00-19:00'
  )

Dropoff.create(
  name: 'Supermercados Avenida',
  address: ' Av. Dr. João Pinheiro, 3013, Caeté - MG, 34800-000',
  opening_hours: '24h'
  )

Dropoff.create(
  name: 'Supermercado Stock Comércio',
  address: ' R. Fernando Linhares Guerra, 25 - Centro, Caeté - MG, 34800-000',
  opening_hours: '24h'
  )

Dropoff.create(
  name: ' Supermercados BH - Caete ',
  address: ' Av. Dr. João Pinheiro, 4660 - MORGAN, Caeté - MG, 34800-000',
  opening_hours: '24h'
  )

Dropoff.create(
  name: ' Mercado Municipal de Caete ',
  address: ' R. Pres. Kenedy, Caeté - MG, 34800-000',
  opening_hours: '24h'
  )

Dropoff.create(
  name: ' Mercado Municipal de Caete ',
  address: ' R. Pres. Kenedy, Caeté - MG, 34800-000',
  opening_hours: '24h'
)

Dropoff.create(
  name: 'Supermercados BH - Centro',
  address: 'Av. Paraná, 470 - Centro, Belo Horizonte - MG, 30120-020',
  opening_hours: '24h'
)

Dropoff.create(
  name: ' Supermercados BH - Palmeiras',
  address: ' R. Júlio de Castilho, 1070 - Palmeiras, Belo Horizonte - MG, 30570-080',
  opening_hours: '24h'
)

Dropoff.create(
  name: ' Supermercados BH - Vila Suzana ',
  address: ' Av. Cristiano Machado, 5555 - Vila Suzana, Belo Horizonte - MG, 30331-970',
  opening_hours: '24h'
)

Dropoff.create(
  name: ' Supermercados BH - Barreiro',
  address: ' Av. Afonso Vaz de Melo, 465 - Barreiro, Belo Horizonte - MG, 30640-070',
  opening_hours: '24h'
)

Dropoff.create(
  name: ' DIA Supermercados - Belo Horizonte ',
  address: ' R. da Bahia, 450 - Centro, Belo Horizonte - MG, 30160-010',
  opening_hours: '24h'
)

Dropoff.create(
  name: ' Pão de Açúcar - Copacabana – Lido ',
  address: ' Av. Nossa Sra. de Copacabana, 109 - Copacabana, Rio de Janeiro - RJ, 22020-002',
  opening_hours: '24h'
)

Dropoff.create(
  name: ' Supermercado Zona Sul – Ipanema ',
  address: ' R. Visc. de Pirajá, 577 - Ipanema, Rio de Janeiro - RJ, 22410-003',
  opening_hours: '24h'
)

Dropoff.create(
  name: ' Supermarket - Rio das Pedras',
  address: ' Av. Eng. Souza Filho, Lt 10 - Itanhangá, Rio de Janeiro - RJ',
  opening_hours: '24h'
)

Dropoff.create(
  name: ' Princesa Supermercados - Catete',
  address: ' R. do Catete, 120 - Catete, Rio de Janeiro - RJ, 22220-001',
  opening_hours: '24h'
)

Dropoff.create(
  name: ' Princesa Supermercados - Laranjeiras',
  address: ' R. das Laranjeiras, 218 - Laranjeiras, Rio de Janeiro - RJ, 22240-003',
  opening_hours: '24h'
)

Dropoff.create(
  name: ' Supermercados Campeão - Botafogo',
  address: ' R. Gen. Polidoro, 74 - Botafogo, Rio de Janeiro - RJ, 22280-005',
  opening_hours: '24h'
)

Dropoff.create(
  name: ' Supermercado Zona Sul - Centro',
  address: ' R. da Alfândega, 33 - Centro, Rio de Janeiro - RJ, 20070-000',
  opening_hours: '24h'
)

Dropoff.create(
  name: ' Gonzaga Hipermercado - Aracajú',
  address: ' R. Castro Alves, 618 - Ponto Novo, Aracaju - SE, 49047-090',
  opening_hours: '24h'
)

Dropoff.create(
  name: ' Supermercado Compre Bem Aracajú',
  address: ' Av. Prof. José Freitas de Andrade, 3173 - Coroa do Meio, Aracaju - SE, 49035-680',
  opening_hours: '24h'
)

Dropoff.create(
  name: ' Pão de Açúcar – Aracaju ',
  address: ' R. José Seabra Batista, s/n - Jardins, Aracaju - SE, 49025-750',
  opening_hours: '24h'
)

Dropoff.create(
  name: ' Extra - Aracajú ',
  address: ' Av. Adélia Franco, 3735 - Grageru, Aracaju - SE, 49025-620',
  opening_hours: '24h'
)

Dropoff.create(
  name: ' Pão de Açúcar - Sudoeste',
  address: ' CCSW 06 Ljs 4/5, CCSW 6, Brasília - DF, 71505-000',
  opening_hours: '24h'
)

Dropoff.create(
  name: ' BIG BOX Supermercados 503 SUL',
  address: ' BL C - SHC/S CR QD 503, loja 70 - Asa Sul, Brasília - DF, 70331-530',
  opening_hours: '24h'
)

Dropoff.create(
  name: ' BIG BOX Supermercados 402 NORTE',
  address: ' SHC/N EQ 402/403 Bloco A, SHCN, Brasília - DF, 70834-500',
  opening_hours: '24h'
)

Dropoff.create(
  name: ' Pão de Açúcar - Águas Claras',
  address: ' Quadra 206 Lote 02 Praça Tuim - Águas Claras, Brasília - DF, 71925-180',
  opening_hours: '24h'
)

Dropoff.create(
  name: ' Pão de Açúcar - Sul 516',
  address: ' SCRS 516 Bloco A Ljs 45/46, Brasília - DF, 70381-515',
  opening_hours: '24h'
)

Dropoff.create(
  name: ' Pão de Açúcar - Sul 304/305',
  address: ' SHCS 304/305, s/n Bloco A MC, SHCS, Brasília - DF, 70337-010',
  opening_hours: '24h'
)

Dropoff.create(
  name: ' Pão de Açúcar - Moema',
  address: ' Av. Ibirapuera, 3068 - Moema, São Paulo - SP, 04028-003',
  opening_hours: '24h'
)

Dropoff.create(
  name: ' St. Marche Perdizes Sumaré ',
  address: ' Av. Sumaré, 721 - Perdizes, São Paulo - SP, 05016-090',
  opening_hours: '24h'
)

Dropoff.create(
  name: ' Supermercados Mambo - Morumbi',
  address: ' Av. Giovanni Gronchi, 2799 - Morumbi, São Paulo - SP, 05651-002',
  opening_hours: '24h'
)

Dropoff.create(
  name: ' Supermercados Mambo - Vila Madalena',
  address: ' R. Dep. Lacerda Franco, 553 - Vila Madalena, São Paulo - SP, 05418-001',
  opening_hours: '24h'
)

Dropoff.create(
  name: ' Pão de Açúcar - Vila Leopoldina',
  address: ' Av. Imperatriz Leopoldina, 845 - Vila Leopoldina, São Paulo - SP, 05305-011',
  opening_hours: '24h'
)

Dropoff.create(
  name: ' Pão de Açúcar - Clodomiro Amazonas',
  address: ' Av. Sumaré, 721 - Perdizes, São Paulo - SP, 05016-090',
  opening_hours: '24h'
)

Coupon.create(
  company_id: 10,
  discount: ' ❤ Cupom adidas 15% OFF',
  code: ' LEAFS25JUN21',
  leafs_value: 25
  )

Coupon.create(
  company_id: 10,
  discount: 'Outlet adidas: até 75% de desconto + frete grátis',
  code: ' ADIDAS75',
  leafs_value: 20
  )

Coupon.create(
  company_id: 10,
  discount: ' Outlet tênis adidas: economize 50%',
  code: ' LEAFSADIDAS50',
  leafs_value: 50
  )

Coupon.create(
  company_id: 4,
  discount: ' Código Dell de R$200 de desconto',
  code: ' Dell200',
  leafs_value: 50
  )
    
Coupon.create(
  company_id: 3,
  discount: ' Cupom de desconto Privalia 20% OFF',
  code: ' Leafs20',
  leafs_value: 20
  )

Coupon.create(
  company_id: 6,
  discount: ' Cupom Netshoes com 15% OFF em vestuário training',
  code: ' TRAINING',
  leafs_value: 20
  )

Coupon.create(
  company_id: 6,
  discount: ' Ganhe 25% OFF nos itens TOPNetshoes ',
  code: ' TOPROUPAS',
  leafs_value: 20
  )


  
puts 'all set'
