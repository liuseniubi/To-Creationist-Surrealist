//Made by jocemod
//Made For 2CS

//sixcolonium_nugget
<recipetype:interactio:item_fluid_transform>.addJSONRecipe("sixcolonium_nugget", {
  "type": "interactio:item_fluid_transform",
  "inputs": [
    {
      "item": "emendatusenigmatica:iron_chunk",
      "count": 1,
    },
	{
      "item": "emendatusenigmatica:gold_chunk",
      "count": 1,
    },
	{
      "item": "emendatusenigmatica:silver_chunk",
      "count": 1,
    },
	{
      "item": "emendatusenigmatica:lead_chunk",
      "count": 1,
    },
	{
      "item": "emendatusenigmatica:nickel_chunk",
      "count": 1,
    },
	{
      "item": "emendatusenigmatica:tin_chunk",
      "count": 1,
    },
	{
      "item": "emendatusenigmatica:copper_chunk",
      "count": 1,
    },
	{
      "item": "emendatusenigmatica:zinc_chunk",
      "count": 1,
    }
  ],
  "fluid": {
    "fluid": "water"
  },
  "output": {
    "entries": [
      {
        "result": {
           "item": "contenttweaker:sixcolonium_nugget",
           "count": 1
        },
        "weight": 5
      },
	  {
        "result": {
           "item": "contenttweaker:sixcolonium_nugget",
           "count": 3
        },
        "weight": 50
      },
	  {
        "result": {
           "item": "contenttweaker:sixcolonium_nugget",
           "count": 6
        },
        "weight": 14
      },
      {
        "result": {
           "item": "contenttweaker:sixcolonium_nugget",
           "count": 5
        },
        "weight": 30
      }
    ],
    "empty_weight": 1,
    "rolls": 2
  },
  "consume_fluid": 0.5
});