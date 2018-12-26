# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
array =["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtx9iSM3gAWHnkPWopQphw-fE3kqzA1ykfDDKMGLQNjifvwhakhUvz9w",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6qL_NggMlC1EbZtHOghK4LhUb6n9I5hRQSYf9eS5Jrn6Ry1_sUged24Q",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvAiAhEK2u8tTRQ5Y7BuM1SQf7ail8YTk8qjfAvXksGzoLGNmhG570Gw",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNxdxiN64WuEybytllJgBaqXneVo6pvWYODWYFqTOKOcR5V5rh9RiS_g",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7OSl7rntygcL_XTv7lfLg108z_tsrdumqw4rCGytz4jmAX3mFBu-BQw",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThnFCV5SfTf7203moLolnNReVXySzZ5mhyoPOGME9ZixHa8MFADvEkuQ",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQt6rcWT16mhQLRADwZvqFcJlrOkFtCSK7zRnbbGcvYmibr9Hv-DMvUjw",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkfp9AZUZVbKAJrq8BHY5MkahhsR8bP6OaEprv1bARYzcycxUVs3FWbg",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRciHp8CdGXhvipNqAX51SIPOGcAZlOOD_Q2Sn-yq5k6veO6w9T5GgiZ9A",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-vR_Ja9NXwfz5zzP-rIBOvM4d-M7GI6Sh7-T_L7iG0X55uKUXZn0yOYg",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQkjDzW4ItNtI-0eAa3Y8s8X6Yf1zb8aPQuhOKdzP7YB_WKe7TwDnkX2s",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWq1_Fp50Gvd2j4v9FcUBib0zKHO_ESmk6sapOigqHi27UzkVOpMJTBlA",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHG4_c2xYTsAPR5QFXll-L9iNAo0kN94Y2GOIIZhFjfLDkRTNjj0UK7LY",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7r9o2KRZ5yU6vBC9sGNe3HK3dA5oeRjCp-nQiar0A2WX0adwo0iC-3g",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3Yq4E8RhjMUDJ392WDDLijiriClV6BtHMcqo7fsG12fnhcsnnbRqRJTI",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTagPbMCzUhuZOYaWf7FCT6LL4bUYQD3mKt8Qmb9jutC-GOJmKHDJhjPA",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWLYal61of-ZEp5ZFWUwNnUJkXMart7J1CnTcxlUaLxOcBMXyE2-xOIw",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTReyfs8sF2mrDNrfcRKUPTpVn4Lv3XzLQ6WTRExfeNkxnrrqsp8FKbQqk",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRG1I-sAc3jKzVcY0HchSKYjaubywpCakZeenae_p6uQk-oLot3",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZaFvOEiBhDBadhEOv6AyZQt79E6TGM7sIFIc10ItIhoD2zhgW",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJyhhXaWbuEgeDy5kjkGQtTrvQC_W2ZdKoQH_ol40b68PVbuqc5w",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4qp4PkqpnDY6----xIOnZa-4hnRbIlqfVdnOdh0A7ysLdlCXvQw",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXvUa9cniIjlQR2nKL4gkFf8E5ke-pLp4NCwEarmASQ9u_qwzE",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0hf1mbIQwXMBnnHcyTQQ7bQmXYrMXT2JcwoWBvowZBJhGggEU",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQF4A8J1HJpuI3wZOF96cU0iu-Cgdtt6RWaEoLNpHvh1XDS_VD3",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVGBK0DWsja51-uvSr_Kfcj75h7vehKoHT5AFhz512xs2qeO86MA",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxrQMFv9yynIXluk6-egYGco_6RNA7fmZFL7KTYWvTWXd0_N03",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbiIZVLCuyL1QEUIoZLSPhJ7fgwJcXI-E4rg21vo1izZrVSH_Y",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRB7PEUEyUh4NjhHAxF1Qmx0Y27dcFRj5xkWpoSkB15rCK3L1lC",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbgoz9mE9FE1WJxcz69CGsM-5fABw-GAWrhL7nDQdM2CBETfJMGg",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMGx1VLJI1fNQ2ucFMnHklKEeNRw2pI8KmtA1-cdLN4qvo1RH6Zg",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQTRR0D5xys4Gcgz3MyFPoOcQsOIYIWc_yHcryaQDxFQXR7quP",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbwME1TszrF5D-Gz9OWe_Nd8awJ_JWMBqNrzeqlCnmOoQKJv2Pow",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScj-Mqe_MHyT6mHsMhHgSYW5ZK3Se2P6ET-kfjRJ1dBnRbFOX_",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7IOphafNYNUCS-_etcjsoarYKyM4OEc967ggYygfyYKf16lwD",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkVgm6QG2fVx08TrpehIkxQrRDpv5XibY3Al-Z8CjSnGFIB5yB",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR04Tx0mefwBliiI1afu-fKD73dO3EIgPWgMe9wzYmUOqbo281Ijw",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9tDL3JompXi-DNeJ4jbqVZsn7NHeSbm7OZ1tH1Nxar-kqhmR4vg",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4dfuurQtt5AQVbnqDt-88vp_uVDxAcAem-ghhOYS9sz-sfCn2",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0Mk4XZzGFsQFmIPRqJW_s8vx0KD9fPGyVKWtY6d4OeEOTsOCJ",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLTYvRkUymZbZF5NTmKLT_jLSuYReD0WUn97X_O3gCfHorN6zG",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrV0xTc_0f8P93l56bY_lwZdm1jbLY6GWB0EwCZg4XZmvUKHx-",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5EUEREY0urrH5q_Xy1lck778suiliy8BfJwH61TlANL3bV03j",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTSCxeRz-FRDuCJaPoBxP8nXcZEKcJMzu4YDYNx3f-UZRts0oj"]

200.times do
  Hackathon.create(
    host: Faker::Company.unique.name,
    state: Faker::Address.state,
    free: Faker::Boolean.boolean,
    description: Faker::Lorem.paragraphs(10),
    date: Faker::Date.between(23.days.from_now,365.days.from_now),
    img: array[rand(0..array.length-1)],
    url: 'https://www.webdesignerdepot.com/cdn-origin/uploads/2017/05/featured_404.jpg'
  )
end
