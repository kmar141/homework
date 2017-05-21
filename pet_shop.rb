def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, amount)
  pet_shop[:admin][:total_cash] += amount
  return total_cash(pet_shop) 
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, amount)
  pet_shop[:admin][:pets_sold] += amount
  return pets_sold(pet_shop)
end

def stock_count(pet_shop)
  return pet_shop[:pets].length()
end

def pets_by_breed(pet_shop, breed)
  short_hairs = []
  for pet in pet_shop[:pets]
    if (pet[:breed] == breed)
      short_hairs.push(pet)
    end
  end
  return short_hairs
end


def pet_exists(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if (pet[:name] == pet_name)
      return true
    end
  end
  return false
end


def find_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if (pet[:name] == pet_name)
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if (pet[:name] == pet_name)
      pet_shop[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock(pet_shop, pet)
  pet_shop[:pets].push(pet)
end

def customer_pet_count(customer)
  customer[:pets].length()
end

def add_pet_to_customer(customer, pet)
  customer[:pets].push(pet)
end

def customer_can_afford_pet(customer, pet)
  return customer[:cash] > pet[:price]
end

def sell_pet_to_customer(pet_shop, pet, customer)
  if pet == nil
    return
  end

  if pet_exists(pet_shop, pet[:name]) && customer_can_afford_pet(customer, pet)
    add_pet_to_customer(customer, pet)
    increase_pets_sold(pet_shop, 1)
    add_or_remove_cash(pet_shop, pet[:price])
  end
end




