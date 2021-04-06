//made by Darmin404/Alex404
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.oredict.IOreDictEntry;

val mv_machine_hull = <meta_tile_entity:gregtech:hull.mv>;
val mv_piston = <metaitem:electric.piston.mv>;


val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");

val name_removals = [
    "computronics:audio_cable1",
    "computronics:iron_note_block0",
    "computronics:speaker5",
    "computronics:tape_reader7",
    "computronics:camera3",

] as string[];

for item in name_removals {
	recipes.removeByRecipeName(item);
}

//----------------------------------------------------------------------------------------------


//Audio Cable
assembler.recipeBuilder()
	.inputs(<ore:wireFineIron> * 4)
    .inputs(<minecraft:noteblock>)
    .fluidInputs([<liquid:plastic> * 144])
	.outputs(<computronics:audio_cable>)
	.EUt(60)
	.duration(400)
	.buildAndRegister();


//Camera
recipes.addShaped("ct_comp_camera", <computronics:camera> , 
    [[<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>],
    [mv_machine_hull, <ore:gemEnderEye>, <ore:craftingLensWhite>],
    [<ore:plateAluminium>, <ore:craftingToolWrench>, <ore:plateAluminium>]]);

//Iron note block
recipes.addShaped("ct_comp_iron_note_block", <computronics:iron_note_block> , 
    [[<ore:plateIron>, <minecraft:noteblock>, <ore:plateIron>],
    [<ore:plateIron>, mv_machine_hull, <ore:plateIron>],
    [<ore:plateIron>, <ore:craftingToolWrench>, <ore:plateIron>]]);
    

//speaker
recipes.addShaped("ct_comp_speaker", <computronics:speaker>, 
    [[<ore:plateAluminium>, <minecraft:noteblock>, <ore:plateAluminium>],
    [<minecraft:noteblock>, mv_machine_hull, <minecraft:noteblock>],
    [<ore:plateAluminium>, <ore:circuitGood>, <ore:plateAluminium>]]);
    
    
//Tape drive
recipes.addShaped("ct_comp_tape_drive", <computronics:tape_reader>, 
    [[<ore:cableGtSingleAnnealedCopper>, <ore:circuitGood>, <ore:craftingToolWrench>],
    [mv_piston, mv_machine_hull, <ore:plateSteelMagnetic>],
    [<ore:cableGtSingleAnnealedCopper>, <ore:circuitGood>, <ore:cableGtSingleAnnealedCopper>]]);
