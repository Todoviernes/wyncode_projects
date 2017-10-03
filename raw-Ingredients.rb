# You’re going to need the solution to this HW problem for an in-class Hackathon later this week so make sure you get it done.

# Your task is to turn this menu https://www.taquizatacos.com/menu.pdf into a hash data structure and store it in a variable called menu.

# Once you have done this, I should be able to run the following lines of code and have it return the appropriate values:

taco_section = {
  name:"Tacos",
  items:[
    {
      name: "AL PASTOR",
      description: "pork, achiote, pineapple",
      price: "3.50"
    },
    {
      name: "CARNITAS",
      description: "pork, orange, cinnamon",
      price: "3.50"
    },
    {
      name: "CHORIZO",
      description: "pork, paprika, cumin, garlic",
      price: "3.50"
    },
    {
      name: "ASADA",
      description: "steak, citrus, chile de arbol",
      price: "3.50"
    },
    {
      name: "BARBACOA",
      description: "beef, cumin, pasilla negra",
      price: "3.50"
    },
    {
      name: "LENGUA",
      description: "beef tongue, cerveza victoria",
      price: "3.50"
    },
    {
      name: "POLLO",
      description: "chicken, scallion, cilantro",
      price: "3.50"
    },
    {
      name: "CAMARON",
      description: "shrimp, red mole, slaw",
      price: "3.50"
    },
    {
      name: "HUITLACOCHE",
      description: "corn truffle, corn, scallion",
      price: "3.50"
    },
    {
      name: "RAJAS",
      description: "poblano, onion, crema, cotija",
      price: "3.50"
    },
    {
      name: "CHAPULINES",
      description: "grasshoppers, avocado, tajin",
      price: "3.50"
    }
  ]
}
sides_section = {
  name:"Sides / Antojitos",
  items:[
    {
      name: "TOTOPOS",
      description: "hand torn blue masa chips",
      additions: [{addon: "guac", price: 2.00}, {addon: "frijoles", price: 2.00}, {addon: "salsa", price: 1.50}],
      price: "5.00"
    },
    {
      name: "ELOTE",
      description: "charred corn, cilantro, jalapeno crema, cotija",
      price: "5.00"
    },
    {
      name: "QUINOA",
      description: "jicama, corn, scallion, chile, nopal dressing ",
      price: "6.50"
    },
  ]
}
beer_section = {
  name:"Beer - Cerveza",
  items:[
    {
      name: "CORONA EXTRA",
      price: "7.00"
    },
    {
      name: "CORONA LIGHT",
      price: "6.00"
    },
    {
      name: "NEGRA MODELO",
      price: "6.00"
    },
    {
      name: "PACIFICO",
      price: "6.00"
    },
    {
      name: "TECATE",
      price: "5.00"
    },
    {
      name: "VICTORIA",
      price: "6.00"
    },
    {
      name: "ROTATING CRAFT SELECTION",
      price: "8.00"
    }
  ]
}
breakfast_section = {
  name:"Breakfast",
  description:"EVERYDAY 8 AM – 11:30 AM",
  items:[
    {
      name: "HUEVOS A LA MEXICANA",
      description: "scrambled eggs, pico, frijoles, crema, tortillas",
      price: "5.00"
    },
    {
      name: "QUESADILLAS DE EPAZOTE",
      description: "queso chihuahua, cotija, epazote, pico, frijoles",
      price: "5.00"
    },
    {
      name: "TOSTADA DE AGUACATE",
      description: "avocado, egg, frijoles, cabbage, cotija",
      price: "6.00"
    },
    {
      name: "CHILAQUILES",
      description: "crispy masa, pollo, salsa roja, eggs, crema",
      price: "6.00"
    },
    {
      name: "TORTILLA DE AGUACATE",
      description: "avocado, queso chihuahua, cotija, frijoles",
      price: "6.00"
    }
  ]
}
cofee_and_tea_section = {
  name:"Coffe and Tea",
  items:[
    {
      name: "ESPRESSO",
      options: [{option1: "shot", price: 3.00}, {option2: "cortado", price: 4.00}, {option3: "latte", price: 5.00}],
      price: "5.00"
    },
    {
      name: "LA ENDULZADA",
      description: "espresso, condensed milk, ice, shaken",
      price: "5.00"
    },
    {
      name: "GREEN TEA",
      description: "Jasmine Cloud by JoJo Tea",
      price: "3.00"
    },
    {
      name: "ORANGE JUICE",
      description: "Fresh Squeezed Florida OJ",
      price: "5.00"
    }
  ]
}
menu = {
  sections: [taco_section, sides_section, beer_section, breakfast_section, cofee_and_tea_section]
}

puts menu[:sections][0][:name] # should output "Tacos"

puts menu[:sections][1][:name] # should output "Sides / Antojitos"

puts menu[:sections][0][:items][0][:name] # should output "Al Pastor"

puts menu[:sections][0][:items][0][:description] # should output "pork, achiote, pineapple"

puts menu[:sections][0][:items][0][:price] # should output 3.50