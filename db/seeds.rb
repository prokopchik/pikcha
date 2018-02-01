role_admin = Role.create!(name: "Admin")
role_member = Role.create!(name: "Member")

currency_usd = Currency.create!(name: "USD", rate: 2.1)
currency_eur = Currency.create!(name: "EUR", rate: 2.3)
currency_byn = Currency.create!(name: "BYN", rate: 1)

user_kos = User.create!(name: "Konstantin",
                       email: "koszenin@gmail.com",
                       phone_number: "+375296865689",
                       role: role_member,
                       currency: currency_eur,
                       password: 123456)

user_david = User.create!(name: "David",
                         email: "davidcholadze@gmail.com",
                         phone_number: "+375293251333",
                         role: role_member,
                         currency: currency_usd,
                         password: 654321)

user_ihar = User.create!(name: "Ihar",
                        email: "iharprokop@gmail.com",
                        phone_number: "+375259251685",
                        role: role_admin,
                        currency: currency_byn,
                        password: 12345678)


address_kos = Address.create!(address_1: "Slobodskaya 141-132",
                             address_2: "Gazety Pravdy 3-62",
                             city: "Minsk",
                             country: "Belarus",
                             zip_code: 220025,
                             user: user_kos)

address_david = Address.create!(address_1: "Slobodskaya 167-167",
                             address_2: "Esenina 22-100",
                             city: "Minsk",
                             country: "Belarus",
                             zip_code: 220025,
                             user: user_david)

address_ihar = Address.create!(address_1: "Slobodskaya 141-140",
                             address_2: "",
                             city: "Minsk",
                             country: "Belarus",
                             zip_code: 220025,
                             user: user_ihar)


order_kos = Order.create!(user: user_kos,
                      address: address_kos,
                      status: "в обработке",
                      currency: currency_byn)

order_david = Order.create!(user: user_david,
                      address: address_david,
                      status: "в обработке",
                      currency: currency_usd)

order_ihar = Order.create!(user: user_ihar,
                      address: address_ihar,
                      status: "done",
                      currency: currency_eur)


manufacturer_apple = Manufacturer.create!(name: "Apple")
manufacturer_oneplus = Manufacturer.create!(name: "OnePlus")
manufacturer_lg = Manufacturer.create!(name: "LG")


operation_system_ios = OperationSystem.create!(name: "IOS")
operation_system_android = OperationSystem.create!(name: "Android")


mobile_phone_apple_iphone_5_16 = MobilePhone.create!(name: "iPhone 5",
                                                 manufacturer: manufacturer_apple,
                                                 price: 250,
                                                 memory_storage: 16,
                                                 display_size: 4,
                                                 operative_memory: 1,
                                                 processor: "Apple A6 2*1300 МГц",
                                                 operation_system: operation_system_ios)

mobile_phone_apple_iphone_7_plus_128 = MobilePhone.create!(name: "iPhone 7 Plus",
                                                 manufacturer: manufacturer_apple,
                                                 price: 1700,
                                                 memory_storage: 128,
                                                 display_size: 4.7,
                                                 operative_memory: 2,
                                                 processor: "Apple A10 Fusion 4*2340 МГц",
                                                 operation_system: operation_system_ios)

mobile_phone_oneplus_5_128 = MobilePhone.create!(name: "5",
                                                 manufacturer: manufacturer_oneplus,
                                                 price: 1300,
                                                 memory_storage: 128,
                                                 display_size: 5.5,
                                                 operative_memory: 8,
                                                 processor: "Qualcomm Snapdragon 835 MSM8998 8*2450 МГц",
                                                 operation_system: operation_system_android)

mobile_phone_oneplus_3_64 = MobilePhone.create!(name: "3",
                                                 manufacturer: manufacturer_oneplus,
                                                 price: 900,
                                                 memory_storage: 64,
                                                 display_size: 5.5,
                                                 operative_memory: 6,
                                                 processor: "Qualcomm Snapdragon 820 MSM8996 4*2150 МГц",
                                                 operation_system: operation_system_android)

mobile_phone_lg_nexus_5x_32 = MobilePhone.create!(name: "Nexus 5x",
                                                 manufacturer: manufacturer_lg,
                                                 price: 620,
                                                 memory_storage: 32,
                                                 display_size: 5.2,
                                                 operative_memory: 2,
                                                 processor: "Qualcomm Snapdragon 808 MSM8992 6*1820 МГц",
                                                 operation_system: operation_system_android)

mobile_phone_lg_nexus_5x_16 = MobilePhone.create!(name: "Nexus 5x",
                                                 manufacturer: manufacturer_lg,
                                                 price: 570,
                                                 memory_storage: 16,
                                                 display_size: 5.2,
                                                 operative_memory: 2,
                                                 processor: "Qualcomm Snapdragon 808 MSM8992 6*1820 МГц",
                                                 operation_system: operation_system_android)

color_red = Color.create!(name: "Red")
color_black = Color.create!(name: "Black")
color_silver = Color.create!(name: "Silver")
color_white = Color.create!(name: "White")
color_mint = Color.create!(name: "Mint")

mobile_phone_lg_nexus_5x_16.colors << color_mint
mobile_phone_lg_nexus_5x_16.colors << color_white
mobile_phone_lg_nexus_5x_16.colors << color_black

mobile_phone_oneplus_5_128.colors << color_black
mobile_phone_oneplus_3_64.colors << color_silver

mobile_phone_apple_iphone_7_plus_128.colors << color_black
mobile_phone_apple_iphone_7_plus_128.colors << color_silver

mobile_phone_lg_nexus_5x_32.colors << color_mint
mobile_phone_lg_nexus_5x_32.colors << color_white
mobile_phone_lg_nexus_5x_32.colors << color_black

mobile_phone_apple_iphone_5_16.colors << color_black
mobile_phone_apple_iphone_5_16.colors << color_white

order_mobile_phone_kos = OrderMobilePhone.create!(mobile_phone: mobile_phone_oneplus_5_128,
                                                 quantity: 1,
                                                 color: color_black,
                                                 order: order_kos,
                                                 price: mobile_phone_oneplus_5_128.price * 1)

order_mobile_phone_kos = OrderMobilePhone.create!(mobile_phone: mobile_phone_oneplus_3_64,
                                                 quantity: 2,
                                                 color: color_silver,
                                                 order: order_kos,
                                                 price: mobile_phone_oneplus_3_64.price * 2)

order_mobile_phone_david = OrderMobilePhone.create!(mobile_phone: mobile_phone_apple_iphone_7_plus_128,
                                                   quantity: 1,
                                                   color: color_black,
                                                   order: order_david,
                                                   price: mobile_phone_apple_iphone_7_plus_128.price * 1)

order_mobile_phone_ihar = OrderMobilePhone.create!(mobile_phone: mobile_phone_lg_nexus_5x_32,
                                                  quantity: 1,
                                                  color: color_black,
                                                  order: order_ihar,
                                                  price: mobile_phone_lg_nexus_5x_32.price * 1)

order_mobile_phone_ihar = OrderMobilePhone.create!(mobile_phone: mobile_phone_apple_iphone_5_16,
                                                  quantity: 1,
                                                  color: color_white,
                                                  order: order_ihar,
                                                  price: mobile_phone_apple_iphone_5_16.price * 1)
