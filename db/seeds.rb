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
  logo: 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOIAAADfCAMAAADcKv+WAAABU1BMVEXQBQv///////3RBQ/NBgrQAAfOn6LMCw3DtrXOAADRBgzLBQfNAADRAAD8/////v/QsbHFAAD2//++qKnIeXzTra74+/3RsLL9//vy///YAAD2/frGHh7z+Pf/+/7RPj7LeHv89fTYycfWzszm8fHjysvIenfQSkvJV1jKUVLVurrn4ODEgYD14uDh6OjvvLzR0M/QPkLXP0PWPD3KMC/Oo5rVnJ6+eHfWUE3KLjnJuLLPsaq9h4LFHSTIFhnMFhfUdnPVbGzfv7nZlZLIZWvLfIPNa2HEQ0Tpzc/R1tm8XlfcrKjSJCvHLi7GnJHPFh3GRk/EUFTVY2LIS0Pi8ers5+fHc2nopqLQxLq5nKLbm5/CTljn2NHIcWr12dvZf3rsu7O7NjTRYFm+rabElJe6RjvChH3eo6Tjl6DIhX7hr6a9am7e3+bDi5TRn4+/Ny6/v70sfiWMAAATDklEQVR4nO1d+1/bxpb36BEx0swoUoKxLcs2xhCwweDwSEkw5pWSBihJg5u0S9tL06btzfam//9P+z0jGUji3Nv76e5nN9n5xg9pHmfmzDlzHiN/SMEpODkKo9c1XC/Q19cb/akOf7X+rw9YsD95vM1yvhR/8uvfafpP8D89YMHAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDgU4JPb5/eHzc0J9nrHbgFz3U93/3Xf77l/zjAgeva7zMI2IUg0G3+t/8Iz1+F5/kFr6Dl+a4YA9sV7icAKW3oJP1NpvdQGQSe53he8HHD8zzX88btRV+ura/fwOtjx8bGvcCFGMfwKO5MM8Ys9tFDzQg59k9O+eKz6ZJSlpVzadHLGsPz2xXX7sY0f6/03baXRP4bB1QTke8UxlgbYjFJQmZ97GBqQowzNQ'
  )

Company.create!(
  name: 'Privalia',
  url: '  https://br.privalia.com/public/',
  logo: 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAUkAAACZCAMAAACVHTgBAAAAgVBMVEX///8AAAD5+fmUlJQgICD19fXg4ODAwMBycnKkpKSIiIhBQUEODg4yMjL8/Pzl5eXr6+t4eHjV1dWnp6fNzc28vLycnJxmZmbx8fFUVFSPj4+tra1/f3/GxsZJSUlsbGwYGBheXl5GRkY7OzspKSlgYGA2NjYsLCwkJCQaGhoSEhJsOovkAAAJDElEQVR4nO2caWPqKhCGjUvrUneN2pio3Xv+/w+8AgPMEDBYo96eM8+XJoQtb1iGAdtoMAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzDMP8i+eHeNfhLeEiS7b3r8FfQTI4s712Lv4GDUDJZ37sav59HKWSyuXc9fj9PSslkce+K/HYyEDJ5uVmRnWvmfc3MTzPUSiYPtymwfywqvVLes68kGd7oPVzGRsjk+SYFbmRZdVldtOYzdTuuKfPz6Fkl325RHrxsMqknO5VZC+7UV0p29eR9JiurZHKLIUZ/ucd6sqNKQt7tevI+kz9IydkNyptDWXk92XmV/Kwn7x9VRXGLdc5Dve2fKrlLah2EQ0z6026338vJYqaJlcxI/Fn2LBLU1A0NW1lUXZM3VXKtbps1ZR5iogUbprZBECV7NvLjuw5sebK6iGyYDGr7PE4dO9M/++21hSQd2ZTmb5PLG3f5n3Olr13Bi29MxGHQUiavOPA+xlks91GyhQVKuirwAwWpxUFOoiU3ruSZ3EfJGZVIOX+mrmgZjTWtzra37e6mreUV3XKdPJ2u3rv9eclOi1CymafbnTfxz6EaKSnRkFg49xK/h6j5OThyzKD5bKO+0rm/8TogfKj3LcT1a19cPr8Nj7RLpuVWhv+B9fM6xf1mSkcbqmTeFgm/UZRODw9V07qW5Kmjknidjr0VU/eDE2Xvz0lNVG281pSQOdl5Bmbet7yWYwsUtnJzV8Ff8nrddb'
  )

Company.create!(
  name: 'Dell',
  url: 'https://www.dell.com/pt-br',
  logo: 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAACoCAMAAABt9SM9AAAAdVBMVEX///8AfrwAfLsAc7cAeroAeboAdbgAcbYAd7n2+vz6/P5CkcV0qdFmos3M3+271Ocghb/c6PLs8/hXmsnj7fWItddKlce50ubC2OnV5PCgw96yzuTm7/aqyeE3jcOSutl7rtOZv9yMt9gag74AarNgn8wAZrLUHBtdAAAMmUlEQVR4nO1d55riOgwl7pRQwhACDH257/+IlxK5kcwAKRbsnm9/DdnEOZElWZbkTucf3hHdxWh9GJzSzfh4PI7H/Wm8266zSTf0uLBhsd71BRWCc8YIiS4ghBHGlaKSp7vVJPQIcaCXzTZSKHajqAiEcEVp/zAMPdTAmOz7UvFynmzKuJLp8iv0iENhcojoY0QZwuh4+xfy1V2OKX+GKACXm3Uv9OhbxSKWz8mUI19KDhah36A1zMe0jKmzDWSMc64udhEM4z0Y3YxCv0UrWEeqgIOLmyAojfqnwW62PWO2G0w3kaRC8SJLSUS0Cv0mjWNNxN2rXwxddNrOF8n99cliNZtyKgpmrfpwurKjL1UXovrb7Bc3PRnNxlIxny5xzNoZdwB89YXPlIh2j75vdz5QwuOL0PS70SEHw066r8podHhyGTPcKU++mJw1M9qgyIjrVin6mv3Ppp7XwcnHrYNiab/h2ZYtX/Ysk4NSDu9yUOdIg2PhiBURm4qK+ex+OMIVfZCTepAuVTXMm1XkuCByW/2WKNDrW2JA1Lgmc7/mtrSq9CMWjBPbAedqXd+dZ7Z5ZeQDAoQrawoSOaj1+yepvciU8zrvHQK2uuLH2vXwynZT311xxcISqybcx+6UGrboW/sQU6PaGWnIvK8tD05Nm3lGG+gbeyWae43vo3kMTxt7TMPY6Jcgct/kg2IzFXm/yQc1h43WvYQ2vHxbyjdny8xBFhVE9epFZrH1hjNxqrnimxac6y8TiuCn5h9XLwaq5S+dRHrWq1'
  )

Dropoff.create(
  name: 'Dropp off 1',
  address: 'R. Mal. Hastimphilo de Moura, 30, São Paulo - SP, 05641-000',
  opening_hours: '24h'
  )

puts 'all set'
