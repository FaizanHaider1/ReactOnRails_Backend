desc 'to add default products in database'
task add_products_in_db: :environment do
    
    f = File.open(`#{Rails.root}/app/assets/images/cup.jpg`, 'rb')
    cupBin = Base64.encode64(f.read)
    f = File.open(`#{Rails.root}/app/assets/images/fork.jpg`, 'rb')
    forkBin = Base64.encode64(f.read)
    f = File.open(`#{Rails.root}/app/assets/images/glass.jpeg`, 'rb')
    glassBin = Base64.encode64(f.read)
    f = File.open(`#{Rails.root}/app/assets/images/plates.jpeg`, 'rb')
    platesBin = Base64.encode64(f.read)
    f = File.open(`#{Rails.root}/app/assets/images/spoons.jpeg`, 'rb')
    spoonsBin = Base64.encode64(f.read)
    f = File.open(`#{Rails.root}/app/assets/images/jug.jpg`, 'rb')
    jugBin = Base64.encode64(f.read)
    f = File.open(`#{Rails.root}/app/assets/images/thermos.jpg`, 'rb')
    thermosBin = Base64.encode64(f.read)
    f = File.open(`#{Rails.root}/app/assets/images/kettle.jpg`, 'rb')
    kettleBin = Base64.encode64(f.read)
    f = File.open(`#{Rails.root}/app/assets/images/salt_pepper_bottles.jpg`, 'rb')
    s_p_bottles = Base64.encode64(f.read)

    Product.create(name: "Plate", price: 65, qty: 6, image: platesBin)
    Product.create(name: "Cup", price: 32, qty: 12, image: cupBin)
    Product.create(name: "Glass", price: 67, qty: 18, image: glassBin)
    Product.create(name: "Fork", price: 89, qty: 12, image: forkBin)
    Product.create(name: "Spoon", price: 79, qty: 6, image: spoonsBin)
    Product.create(name: "Jug", price: 109, qty: 18, image: jugBin)
    Product.create(name: "Thermos", price: 1200, qty: 15, image: thermosBin)
    Product.create(name: "Kettle", price: 120, qty: 21, image: kettleBin)
    Product.create(name: "SpicesBottle", price: 45, qty: 24, image: s_p_bottles)
end