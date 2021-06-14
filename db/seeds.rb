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
  name: 'Extra',
  url: 'https://www.extra.com.br/',
  logo: 'https://iguatemi.com.br/saocarlos/sites/saocarlos/files/logo-1360167379150.png'
  )


Company.create!(
  name: 'Americanas',
  url: 'https://www.americanas.com.br/',
  logo: 'data:image/png;base64,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'
  )

Company.create!(
  name: 'Privalia',
  url: '  https://br.privalia.com/public/',
  logo: 'https://store-images.s-microsoft.com/image/apps.29966.9007199267044076.c76415e3-cff7-4f25-98df-796755acc41d.40ea793e-5e29-4d38-adef-a3205d667644?mode=scale&q=90&h=300&w=300'
  )

Company.create!(
  name: 'Dell',
  url: 'https://www.dell.com/pt-br',
  logo: 'https://image.pngaaa.com/396/600396-small.png'
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
