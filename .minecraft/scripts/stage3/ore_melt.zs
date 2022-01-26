import crafttweaker.api.BracketHandlers;

function validSymbols(name as string) as string {
    val rl = BracketHandlers.getResourceLocation(name);
    return "_" + rl.path;
}

for chunk, fluid in {
    <item:emendatusenigmatica:iron_chunk> : <fluid:emendatusenigmatica:molten_iron>,
    <item:emendatusenigmatica:copper_chunk> : <fluid:emendatusenigmatica:molten_copper>,
    <item:emendatusenigmatica:tin_chunk> : <fluid:emendatusenigmatica:molten_tin>,
    <item:emendatusenigmatica:silver_chunk> : <fluid:emendatusenigmatica:molten_silver>,
    <item:emendatusenigmatica:nickel_chunk> : <fluid:emendatusenigmatica:molten_nickel>,
    <item:emendatusenigmatica:zinc_chunk> : <fluid:emendatusenigmatica:molten_zinc>,
    <item:emendatusenigmatica:lead_chunk> : <fluid:emendatusenigmatica:molten_lead>
}

{
    <recipetype:create:mixing>.addRecipe("melt" + validSymbols(chunk.registryName), "heated", fluid * 80, [chunk]);
}

for dust, fluid in {
    <item:emendatusenigmatica:iron_dust> : <fluid:emendatusenigmatica:molten_iron>,
    <item:emendatusenigmatica:copper_dust> : <fluid:emendatusenigmatica:molten_copper>,
    <item:emendatusenigmatica:tin_dust> : <fluid:emendatusenigmatica:molten_tin>,
    <item:emendatusenigmatica:silver_dust> : <fluid:emendatusenigmatica:molten_silver>,
    <item:emendatusenigmatica:nickel_dust> : <fluid:emendatusenigmatica:molten_nickel>,
    <item:emendatusenigmatica:zinc_dust> : <fluid:emendatusenigmatica:molten_zinc>,
    <item:emendatusenigmatica:lead_dust> : <fluid:emendatusenigmatica:molten_lead>
}

{
    <recipetype:create:mixing>.addRecipe("melt" + validSymbols(dust.registryName), "heated", fluid * 144, [dust]);
}