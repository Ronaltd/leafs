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
  name: 'Dropp off 1',
  address: 'R. Mal. Hastimphilo de Moura, 30, São Paulo - SP, 05641-000',
  opening_hours: '24h'
  )

Dropoff.create(
  name: 'Dropp off 2 - G Barbosa',
  address: 'R. Luiz Chagas, 55, Aracaju - SE, 49037-430',
  opening_hours: '24h'
  )

Dropoff.create(

  name: 'Dropp off 3 - Pão de aúcar',
  address: 'R. José Seabra Batista,Jardins, Aracaju - SE, 49025-750',
  opening_hours: '24h'
  )

Dropoff.create(
  name: 'Dropp off 4 - Extra',
  address: 'Av. Adélia Franco, 3735 - Grageru, Aracaju - SE, 49025-620',
  opening_hours: '24h'
  )

Dropoff.create(
  name: 'Dropp off 5- Bompreço',
  address: 'Av. Pedro Valadares, 780 - Jardins, Aracaju - SE, 49025-090',
  opening_hours: '24h'
  )

Dropoff.create(
  name: 'Dropoff 6 - Shopping Jardins',
  address: 'Avenida Ministro Geraldo Barreto Sobra, 215 - Jardins, Aracaju - SE, 49026-010',
  opening_hours: '24h'
  )

Dropoff.create(
  name: 'Dropoff 7 - Mcdolnads',
  address: 'Av. Hermes Fontes, 1118 - Suissa, Aracaju - SE, 49050-000',
  opening_hours: '24h'
  )

Dropoff.create(
  name: 'Dropp off 7',
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


puts 'all set'
