//made by alex404

/*//-------------------------------------------
FOR BEST USE: Go into config folder (config/advRocketry). Open those different .xml files and find "<Recipes useDefault="true">" and put it to "false".

Remove the recipes inside the .xml as well.

Also. Better change "hydrogen" to "liquid_hydrogen" in the main config for bipropellant fuels, as I've used that for monopropellant rocket fuel.
The same for oxydizer: change "oxygen" to "liquid_oxygen".
//------------------------------------------*/

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.oredict.IOreDictEntry;

val autoclave = mods.gregtech.recipe.RecipeMap.getByName("autoclave");
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
val chemical_reactor = mods.gregtech.recipe.RecipeMap.getByName("chemical_reactor");
val metal_bender = mods.gregtech.recipe.RecipeMap.getByName("metal_bender");
val circuit_assembler = mods.gregtech.recipe.RecipeMap.getByName("circuit_assembler");

val gt_advanced_thruster = <metaitem:impeller.hv>;
val gt_circuit_board = <metaitem:board.good.plastic>;
val gt_datastick = <metaitem:tool.datastick>;
val gt_display = <metaitem:display>;
val gt_ev_electric_motor = <metaitem:electric.motor.ev>;
val gt_ev_emitter = <metaitem:emitter.ev>;
val gt_ev_field_generator = <metaitem:field.generator.ev>;
val gt_ev_machine_hull = <gregtech:machine:504>;
val gt_ev_sensor = <metaitem:sensor.ev>;
val gt_hv_electric_motor = <metaitem:electric.motor.hv>;
val gt_hv_electric_pump = <metaitem:electric.pump.hv>;
val gt_hv_emitter = <metaitem:emitter.hv>;
val gt_hv_energy_hatch = <gregtech:machine:732>;
val gt_hv_input_bus = <gregtech:machine:730>;
val gt_hv_input_hatch = <gregtech:machine:732>;
val gt_hv_machine_hull = <gregtech:machine:503>;
val gt_hv_miner = <gregtech:machine:2223>;
val gt_hv_sensor = <metaitem:sensor.hv>;
val gt_hv_output_bus = <gregtech:machine:731>;
val gt_hv_output_hatch = <gregtech:machine:733>;
val gt_hv_robot_arm = <metaitem:robot.arm.hv>;
val gt_iv_electric_motor = <metaitem:electric.motor.iv>;
val gt_lv_electric_motor = <metaitem:electric.motor.lv>;
val gt_mv_electric_motor = <metaitem:electric.motor.mv>;
val gt_plastic_circuit_board = <metaitem:board.plastic>;
val gt_plate_nand = <metaitem:plate.nand_memory_chip>;
val gt_plate_ram = <metaitem:plate.random_access_memory>;
val gt_solar_panel = <metaitem:cover.solar.panel.lv>;



val name_removals = [
    "advancedrocketry:blockconcrete",
    "libvulpes:inputhatch",
    "libvulpes:outputhatch",
    "libvulpes:fluidinputhatch",
    "libvulpes:fluidoutputhatch",
    "libvulpes:forgepowerinput",
    "libvulpes:structuremachine",
    "libvulpes:advstructuremachine",
    "libvulpes:coalgenerator",
    "libvulpes:basicmotor", 
    "libvulpes:advancedmotor",
    "libvulpes:enhancedmotor",
    "libvulpes:elitemotor",
    "advancedrocketry:stickiron",
    "advancedrocketry:stickcopper",
    "advancedrocketry:sticksteel",
    "advancedrocketry:sticktitanium",
    "advancedrocketry:stickiridium",
    "advancedrocketry:fansteel",
    "advancedrocketry:gearsteel",
    "advancedrocketry:geartitanium",
    "advancedrocketry:coilgold",
    "advancedrocketry:coilcopper",
    "advancedrocketry:coiltitanium",
    "advancedrocketry:coilaluminum", 
    "advancedrocketry:coiliridium",
    "advancedrocketry:holoprojector", 
    "libvulpes:linker",
    "libvulpes:battery",
    "advancedrocketry:structuretower",
    "advancedrocketry:blastbrick",
    "advancedrocketry:carbonscrubbercartidge",
    "advancedrocketry:lens",
    "advancedrocketry:sawbladeiron",
    "advancedrocketry:charcoalbrick",
    "advancedrocketry:userinterface",
    "advancedrocketry:sealdetector",
    "advancedrocketry:orescanner",
    "advancedrocketry:jetpack",
    "advancedrocketry:spacehelmet",
    "advancedrocketry:spacechestplate",
    "advancedrocketry:spaceleggings",
    "advancedrocketry:spaceboots",
    "advancedrocketry:oremapper",
    "advancedrocketry:microwavetransmitter",
    "advancedrocketry:compositionsensor",
    "advancedrocketry:massdetector",
    "advancedrocketry:opticalsensor",
    "advancedrocketry:satellite",
    "advancedrocketry:basicsolarpanel",
    "advancedrocketry:largesolarpanel",
    "advancedrocketry:satelliteidchip",
    "advancedrocketry:planetidchip",
    "advancedrocketry:asteroidchip",
    "advancedrocketry:spacestationidchip",
    "advancedrocketry:controlcircuitboard",
    "advancedrocketry:iocircuitboard",
    "advancedrocketry:liquidiocircuitboard",
    "advancedrocketry:solarpanel",
    "advancedrocketry:quartz_crucible",
    "advancedrocketry:sawblade",
    "advancedrocketry:platepress",
    "advancedrocketry:forcefieldprojector",
    "advancedrocketry:vacuumlaser",
    "advancedrocketry:blockpump",
    "advancedrocketry:suitworkstation",
    "advancedrocketry:arcfurnace",
    "advancedrocketry:rollingmachine",
    "advancedrocketry:crystallizer",
    "advancedrocketry:cuttingmachine",
    "advancedrocketry:precisionassemblingmachine",
    "advancedrocketry:electrolyser",
    "advancedrocketry:chemicalreactor",
    "advancedrocketry:precisionlaseretcher",
    "advancedrocketry:centrifuge",
    "advancedrocketry:satellitebuilder",
    "advancedrocketry:blackholegenerator",
    "advancedrocketry:microwavereciever",
    "advancedrocketry:warpcore",
    "advancedrocketry:beacon",
    "advancedrocketry:railgun",
    "advancedrocketry:spacelaser",
    "advancedrocketry:gravitymachine",
    "advancedrocketry:terraformer",
    "advancedrocketry:spaceelevatorcontroller",
    "advancedrocketry:engine",
    "advancedrocketry:bipropellantengine",
    "advancedrocketry:advengine",
    "advancedrocketry:advbipropellantengine",
    "advancedrocketry:blockfueltank",
    "advancedrocketry:blockbipropellantfueltank",
    "advancedrocketry:blockoxidizerfueltank",
    "advancedrocketry:intake",
    "advancedrocketry:drill",
    "advancedrocketry:rocketbuilder",
    "advancedrocketry:stationbuilder",
    "advancedrocketry:deployablerocketbuilder",
    "advancedrocketry:satellitebay",
    "advancedrocketry:fuelingstation",
    "advancedrocketry:monitoringstation",
    "advancedrocketry:satellitecontrolcenter",
    "advancedrocketry:warpmonitor",
    "advancedrocketry:orientationcontroller",
    "advancedrocketry:gravitycontroller",
    "advancedrocketry:altitudecontroller",
    "advancedrocketry:oxygenscrubber",
    "advancedrocketry:oxygenvent",
    "advancedrocketry:oxygencharger",
    "advancedrocketry:oxygendetection",
    "advancedrocketry:circlelight"
] as string[];

for item in name_removals {
	recipes.removeByRecipeName(item);
}


val furnace_removals = [
    <libvulpes:productingot:3>,
    <libvulpes:productingot:6>,
    <libvulpes:productingot:7>,
    <libvulpes:productingot:9>,
    <libvulpes:productingot:10>,
    <advancedrocketry:misc:1>,    
] as IIngredient[];

for item in furnace_removals {
    furnace.remove(item);
}


//----------------------------------------------------------------------------------------------


//Anti-fog Visor
assembler.recipeBuilder()
	.inputs(<ore:foilSilver> * 4)
    .inputs(<ore:craftingLensWhite> * 2)
	.inputs(<ore:ringPlastic> * 2)
    .inputs(<ore:stickStainlessSteel> * 4)
    .fluidInputs([<liquid:soldering_alloy> * 144])
	.outputs(<advancedrocketry:itemupgrade:4>)
	.EUt(480)
	.duration(150)
	.buildAndRegister();  
    
    
//Atmosphere Analyzer
assembler.recipeBuilder()
	.inputs(<ore:foilStainlessSteel>)
    .inputs(<metaitem:carbon.mesh>)
    .inputs(<libvulpes:battery>)
    .inputs(<ore:circuitAdvanced>)
    .inputs(<advancedrocketry:misc>)
	.outputs(<advancedrocketry:atmanalyser>)
	.EUt(480)
	.duration(400)
	.buildAndRegister();
    
    
//Atmosphere Detector
recipes.addShaped("ar_atmosphere_detector", <advancedrocketry:oxygendetection>, 
    [[<ore:plateStainlessSteel>, <ore:circuitAdvanced>, <ore:plateStainlessSteel>],
    [<advancedrocketry:pressuretank:2>, <minecraft:iron_bars>, <ore:rotorStainlessSteel>],
    [<ore:plateStainlessSteel>, gt_hv_machine_hull,<ore:plateStainlessSteel>]]); 

    
//Athmosphere Terraformer
recipes.addShaped("ar_atmosphere_terraformer", <advancedrocketry:terraformer>, 
    [[<ore:plateTitanium>, <ore:plateTitanium>, <ore:plateTitanium>],
    [<advancedrocketry:ic:5>, gt_ev_machine_hull, <advancedrocketry:ic:3>],
    [gt_advanced_thruster, gt_ev_emitter, gt_advanced_thruster]]);



//basic lens
//removed because everything else got GT lenses for crafting

//Battery
assembler.recipeBuilder()
	.inputs(<ore:plateCurvedBatteryAlloy> * 4)
    .inputs(<ore:cableGtSingleRedAlloy>)
    .fluidInputs([<liquid:redstone> * 1296])
	.outputs(<libvulpes:battery>)
	.EUt(480)
	.duration(400)
	.buildAndRegister();


//Beacon
recipes.addShaped("ar_beacon", <advancedrocketry:beacon>, 
    [[null, <advancedrocketry:ic:1>, null],
    [null, gt_hv_machine_hull, null],
    [null, gt_hv_emitter, null]]);


//Beacon Finder
assembler.recipeBuilder()
	.inputs(<advancedrocketry:itemupgrade:4>)
	.inputs(<advancedrocketry:ic:1>)
    .fluidInputs([<liquid:soldering_alloy> * 144])
	.outputs(<advancedrocketry:beaconfinder>)
	.EUt(480)
	.duration(150)
	.buildAndRegister();  
    

//Biome changer
assembler.recipeBuilder()
	.inputs(<ore:stickLongTitanium> * 2)
    .inputs(<ore:circuitExtreme> *2 )
    .inputs(gt_ev_sensor)
    .inputs(gt_ev_emitter)
	.outputs(<advancedrocketry:satelliteprimaryfunction:5>)
	.EUt(1440)
	.duration(850)
	.buildAndRegister();

    
//Biome changer Remote
assembler.recipeBuilder()
	.inputs(<libvulpes:battery>)
    .inputs(<ore:circuitExtreme> )
    .inputs(<advancedrocketry:misc>)
    .inputs(<advancedrocketry:ic:1>)
	.outputs(<advancedrocketry:biomechanger>)
	.EUt(1440)
	.duration(350)
	.buildAndRegister();


//Bionic Leg Upgrade
assembler.recipeBuilder()
	.inputs(<metaitem:robot.arm.hv>)
    .inputs(<ore:stickLongStainlessSteel> * 2)
    .inputs(<ore:gearSmallStainlessSteel> * 4)
    .inputs(<ore:screwStainlessSteel> * 4)
    .fluidInputs([<liquid:soldering_alloy> * 144])
	.outputs(<advancedrocketry:itemupgrade:2>)
	.EUt(480)
	.duration(250)
	.buildAndRegister();  


//Black Hole generator
recipes.addShaped("ar_blackhole_generator", <advancedrocketry:blackholegenerator>, 
    [[gt_ev_sensor, gt_ev_field_generator, <ore:circuitExtreme>],
    [gt_ev_field_generator, gt_ev_machine_hull, gt_ev_field_generator],
    [<ore:circuitExtreme>, gt_ev_field_generator, gt_ev_sensor]]);



//Carbon collection cartidge
assembler.recipeBuilder()
	.inputs(<metaitem:carbon.mesh> * 2)
    .inputs(<ore:plateCurvedStainlessSteel> * 4 )
	.outputs(<advancedrocketry:carbonscrubbercartridge>)
	.EUt(480)
	.duration(400)
	.buildAndRegister();
   

//Chip, Asteroid
circuit_assembler.recipeBuilder()
	.inputs(<ore:circuitGood> * 1)
    .inputs(<advancedrocketry:ic:1>)
    .inputs(gt_circuit_board)
    .fluidInputs([<liquid:soldering_alloy> * 144])
	.outputs(<advancedrocketry:asteroidchip>)
    .property("circuit", 17)
	.EUt(320)
	.duration(250)
	.buildAndRegister(); 
   

//Chip, Planet
circuit_assembler.recipeBuilder()
	.inputs(<ore:circuitGood> * 2)
    .inputs(<advancedrocketry:satelliteidchip>)
    .inputs(gt_circuit_board)
    .fluidInputs([<liquid:soldering_alloy> * 144])
	.outputs(<advancedrocketry:planetidchip>)
    .property("circuit", 17)
	.EUt(320)
	.duration(250)
	.buildAndRegister(); 


//Chip, satellite Id
circuit_assembler.recipeBuilder()
	.inputs(<ore:circuitGood>)
    .inputs(gt_circuit_board)
    .fluidInputs([<liquid:soldering_alloy> * 144])
	.outputs(<advancedrocketry:satelliteidchip>)
    .property("circuit", 17)
	.EUt(320)
	.duration(250)
	.buildAndRegister(); 


//Chip, space station Id
circuit_assembler.recipeBuilder()
	.inputs(<ore:circuitExtreme>)
    .inputs(<libvulpes:linker>)
    .inputs(gt_circuit_board)
    .fluidInputs([<liquid:soldering_alloy> * 144])
	.outputs(<advancedrocketry:spacestationchip>)
    .property("circuit", 17)
	.EUt(1330)
	.duration(250)
	.buildAndRegister();   
    
    
//Chip, space elevator
circuit_assembler.recipeBuilder()
    .inputs(<advancedrocketry:spacestationchip>)
	.inputs(<advancedrocketry:ic:1>)
    .inputs(gt_circuit_board)
    .fluidInputs([<liquid:soldering_alloy> * 144])
	.outputs(<advancedrocketry:elevatorchip>)
    .property("circuit", 17)
	.EUt(320)
	.duration(250)
	.buildAndRegister(); 

  
//Circle light
recipes.addShaped("ar_circle_light", <advancedrocketry:circlelight>, 
    [[<ore:plateStainlessSteel>, null, null],
    [null, <ore:glowstone>, null],
    [null, null, null]]);

  
  
//circuit board, control
circuit_assembler.recipeBuilder()
    .inputs(<ore:plateNetherQuartz> * 2)
	.inputs(<ore:circuitAdvanced>)
    .inputs(gt_circuit_board)
    .inputs(<ore:plateCopper> * 4)
    .fluidInputs([<liquid:soldering_alloy> * 144])
	.outputs(<advancedrocketry:ic:3>)
	.EUt(320)
	.duration(150)
	.buildAndRegister(); 


//circuit board, I/O
circuit_assembler.recipeBuilder()
    .inputs(<ore:plateNetherQuartz> * 2)
	.inputs(<ore:circuitAdvanced>)
    .inputs(gt_circuit_board)
    .inputs(<ore:plateGold> * 4)
    .fluidInputs([<liquid:soldering_alloy> * 144])
	.outputs(<advancedrocketry:ic:4>)
	.EUt(320)
	.duration(150)
	.buildAndRegister(); 


//circuit board, Fluid
circuit_assembler.recipeBuilder()
    .inputs(<ore:plateNetherQuartz> * 2)
	.inputs(<ore:circuitAdvanced>)
    .inputs(gt_circuit_board)
    .inputs(<ore:plateLapis> * 4)
    .fluidInputs([<liquid:soldering_alloy> * 144])
	.outputs(<advancedrocketry:ic:5>)
	.EUt(320)
	.duration(150)
	.buildAndRegister(); 


//Co2 scrubber
recipes.addShaped("ar_co2_scrubber", <advancedrocketry:oxygenscrubber>, 
    [[<minecraft:iron_bars>, <ore:rotorStainlessSteel>, <minecraft:iron_bars>],
    [<advancedrocketry:carbonscrubbercartridge>, gt_hv_electric_motor, <advancedrocketry:carbonscrubbercartridge>],
    [<minecraft:iron_bars>, gt_hv_machine_hull,<minecraft:iron_bars>]]);


//Coal Generator
recipes.addShaped("ar_coal_generator", <libvulpes:coalgenerator>, 
    [[<ore:cableGtSingleTin>, <ore:circuitBasic>, <ore:cableGtSingleTin>],
    [gt_lv_electric_motor, <ore:craftingFurnace>, gt_lv_electric_motor],
    [<ore:gearSteel>, <ore:craftingToolWrench>, <ore:gearSteel>]]);


//Coil, Aluminum
recipes.addShaped("ar_coil_aluminum", <libvulpes:coil0:9>, 
    [[<ore:wireGtQuadrupleAluminium>, <ore:wireGtQuadrupleAluminium>, <ore:wireGtQuadrupleAluminium>],
    [<ore:wireGtQuadrupleAluminium>, <ore:craftingToolWrench>, <ore:wireGtQuadrupleAluminium>],
    [<ore:wireGtQuadrupleAluminium>, <ore:wireGtQuadrupleAluminium>, <ore:wireGtQuadrupleAluminium>]]);



//Coil, copper
recipes.addShaped("ar_coil_copper", <libvulpes:coil0:4>, 
    [[<ore:wireGtQuadrupleCopper>, <ore:wireGtQuadrupleCopper>, <ore:wireGtQuadrupleCopper>],
    [<ore:wireGtQuadrupleCopper>, <ore:craftingToolWrench>, <ore:wireGtQuadrupleCopper>],
    [<ore:wireGtQuadrupleCopper>, <ore:wireGtQuadrupleCopper>, <ore:wireGtQuadrupleCopper>]]);


//Coil, gold
recipes.addShaped("ar_coil_gold", <libvulpes:coil0:2>, 
    [[<ore:wireGtQuadrupleGold>, <ore:wireGtQuadrupleGold>, <ore:wireGtQuadrupleGold>],
    [<ore:wireGtQuadrupleGold>, <ore:craftingToolWrench>, <ore:wireGtQuadrupleGold>],
    [<ore:wireGtQuadrupleGold>, <ore:wireGtQuadrupleGold>, <ore:wireGtQuadrupleGold>]]);


//Coil, Iridium
recipes.addShaped("ar_coil_iridium", <libvulpes:coil0:10>, 
    [[<ore:stickLongIridium>,<ore:stickLongIridium>,<ore:stickLongIridium>],
    [<ore:stickLongIridium>,  <ore:craftingToolWrench>, <ore:stickLongIridium>],
    [<ore:stickLongIridium>, <ore:stickLongIridium>, <ore:stickLongIridium>]]);


//Coil, Titanium
recipes.addShaped("ar_coil_titanium", <libvulpes:coil0:7>, 
    [[<ore:wireGtQuadrupleTitanium>, <ore:wireGtQuadrupleTitanium>, <ore:wireGtQuadrupleTitanium>],
    [<ore:wireGtQuadrupleTitanium>, <ore:craftingToolWrench>, <ore:wireGtQuadrupleTitanium>],
    [<ore:wireGtQuadrupleTitanium>, <ore:wireGtQuadrupleTitanium>, <ore:wireGtQuadrupleTitanium>]]);


//Composition sensor
assembler.recipeBuilder()
	.inputs(<advancedrocketry:satelliteprimaryfunction> * 2)
    .inputs(<advancedrocketry:ic:1>)
    .inputs(<ore:circuitAdvanced> * 2)
	.outputs(<advancedrocketry:satelliteprimaryfunction:1>)
	.EUt(320)
	.duration(850)
	.buildAndRegister();   


//Concrete
mixer.recipeBuilder()
	.inputs(<ore:gravel>)
	.inputs(<ore:dustRegularStone>)
    .inputs(<ore:sand>)
    .fluidInputs([<liquid:water> * 500])
	.outputs(<advancedrocketry:concrete>)
	.EUt(8)
	.duration(600)
	.buildAndRegister();


//Controller, Altitude
recipes.addShaped("ar_controller_altitude", <advancedrocketry:altitudecontroller>, 
    [[null, <ore:circuitExtreme>, null],
    [null, gt_ev_machine_hull, null],
    [ null, gt_ev_field_generator , null]]);


//Controller, Gravity
recipes.addShaped("ar_controller_gravity", <advancedrocketry:gravitycontroller>, 
    [[null, gt_ev_field_generator, null],
    [null, gt_ev_machine_hull, null],
    [ null, <ore:circuitExtreme>, null]]);


//Controller, orientation
recipes.addShaped("ar_controller_orientation", <advancedrocketry:orientationcontroller>, 
    [[null, null, null],
    [gt_ev_field_generator, gt_ev_machine_hull, <ore:circuitExtreme>],
    [ null, null, null]]);




//Data storage unit
assembler.recipeBuilder()
	.inputs(gt_plate_nand * 48)
    .inputs(<ore:platePlastic> * 4)
    .inputs(gt_plate_ram * 4)
    .inputs(<ore:wireFineElectrum> * 8)
    .inputs(gt_plastic_circuit_board)
    .inputs(<ore:circuitAdvanced>)
	.outputs(<advancedrocketry:dataunit>)
	.EUt(320)
	.duration(175)
	.buildAndRegister();   


//Dilithium
autoclave.recipeBuilder()
	.inputs(<ore:dustDilithium>)
    .fluidInputs([<liquid:water> * 1000])
	.outputs(<libvulpes:productgem>)
	.EUt(16)
	.duration(675)
	.buildAndRegister();   


//Drill
recipes.addShaped("ar_drill", <advancedrocketry:drill>, 
    [[<ore:toolHeadDrillStainlessSteel>, null, <ore:toolHeadDrillStainlessSteel>],
    [null, <libvulpes:structuremachine>, null],
    [<ore:toolHeadDrillStainlessSteel>, null, <ore:toolHeadDrillStainlessSteel>]]);


//Engine, monopropellant Advanced
recipes.addShaped("ar_monopropellant_engine_advanced", <advancedrocketry:advrocketmotor>, 
    [[<ore:plateTitanium>, <ore:frameGtStainlessSteel>, <ore:plateTitanium>],
    [null, <ore:plateCurvedTitanium>, null],
    [<ore:plateCurvedTitanium>, null, <ore:plateCurvedTitanium>]]);
    
//Engine, monopropellant basic
recipes.addShaped("ar_monopropellant_engine", <advancedrocketry:rocketmotor>, 
    [[<ore:plateAluminium>, <ore:frameGtStainlessSteel>, <ore:plateAluminium>],
    [null, <ore:plateCurvedAluminium>, null],
    [<ore:plateCurvedAluminium>, null, <ore:plateCurvedAluminium>]]);


//Engine, bipropellant Advanced
recipes.addShaped("ar_bipropellant_engine_advanced", <advancedrocketry:advbipropellantrocketmotor>, 
    [[<ore:plateTitanium>, <ore:frameGtTitanium>, <ore:plateTitanium>],
    [null, <ore:plateCurvedTitanium>, null],
    [<ore:plateCurvedTitanium>, null, <ore:plateCurvedTitanium>]]);


//Engine, bipropellant basic
recipes.addShaped("ar_bipropellant_engine", <advancedrocketry:bipropellantrocketmotor>, 
    [[<ore:plateAluminium>, <ore:frameGtAluminium>, <ore:plateAluminium>],
    [null, <ore:plateCurvedAluminium>, null],
    [<ore:plateCurvedAluminium>, null, <ore:plateCurvedAluminium>]]);

    
    
//flight speed control upgrade
assembler.recipeBuilder()
	.inputs(<advancedrocketry:ic:3>)
    .inputs(<ore:circuitExtreme> * 2)
    .inputs(<metaitem:energy_crystal>)
	.outputs(<advancedrocketry:itemupgrade:1>)
	.EUt(1440)
	.duration(350)
	.buildAndRegister();


//force field projector
recipes.addShaped("ar_force_field_projector", <advancedrocketry:forcefieldprojector>, 
    [[<ore:plateStainlessSteel>, gt_ev_emitter, <ore:plateStainlessSteel>],
    [<ore:plateStainlessSteel>, gt_ev_machine_hull , <ore:plateStainlessSteel>],
    [<ore:plateStainlessSteel>, <ore:circuitExtreme>, <ore:plateStainlessSteel>]]);


//fuel tank, monopropellant
recipes.addShaped("ar_fuel_tank_monopropellant", <advancedrocketry:fueltank>, 
    [[<ore:plateStainlessSteel>, null, <ore:plateStainlessSteel>],
    [<ore:plateStainlessSteel>, null, <ore:plateStainlessSteel>],
    [<ore:plateStainlessSteel>, <ore:ringStainlessSteel>, <ore:plateStainlessSteel>]]);


//fuel tank, bipropellant
recipes.addShaped("ar_fuel_tank_bipropellant", <advancedrocketry:bipropellantfueltank>, 
    [[<ore:plateStainlessSteel>, null, <ore:plateStainlessSteel>],
    [<ore:plateStainlessSteel>, <ore:ringStainlessSteel>, <ore:plateStainlessSteel>],
    [<ore:plateStainlessSteel>, null, <ore:plateStainlessSteel>]]);
    
    
//fuel tank, oxidizer
recipes.addShaped("ar_fuel_tank_oxidizer", <advancedrocketry:oxidizerfueltank>, 
    [[<ore:plateStainlessSteel>, <ore:ringStainlessSteel>, <ore:plateStainlessSteel>],
    [<ore:plateStainlessSteel>, null, <ore:plateStainlessSteel>],
    [<ore:plateStainlessSteel>, null, <ore:plateStainlessSteel>]]);


//Fuelling station
recipes.addShaped("ar_fuelling_station", <advancedrocketry:fuelingstation>, 
    [[<ore:plateStainlessSteel>, <ore:plateStainlessSteel>, <ore:plateStainlessSteel>],
    [<advancedrocketry:ic:5>, gt_hv_machine_hull, <advancedrocketry:ic:5>],
    [<ore:plateStainlessSteel>, <ore:plateStainlessSteel>, <ore:plateStainlessSteel>]]);
 

//Gas charge pad
recipes.addShaped("ar_gas_charger", <advancedrocketry:oxygencharger>, 
    [[null, null, null ],
    [<advancedrocketry:pressuretank:2>, <advancedrocketry:misc>, <advancedrocketry:pressuretank:2>],
    [<ore:plateStainlessSteel>, gt_hv_machine_hull,<ore:plateStainlessSteel>]]);
    


//Gas intake
recipes.addShaped("ar_gas_intake", <advancedrocketry:intake>, 
    [[<ore:turbineBladeStainlessSteel>, null, <ore:turbineBladeStainlessSteel>],
    [null, <libvulpes:structuremachine>, null],
    [<ore:turbineBladeStainlessSteel>, null, <ore:turbineBladeStainlessSteel>]]);


//Gravity controller
recipes.addShaped("ar_gravity_controller", <advancedrocketry:gravitymachine>, 
    [[null, <advancedrocketry:satelliteprimaryfunction:2>, null],
    [null, gt_ev_machine_hull, null],
    [null, gt_ev_emitter, null]]);


//heatproof bricks
recipes.addShaped("ar_heatproof_bricks", <advancedrocketry:blastbrick> * 2, 
    [[<metaitem:brick.fireclay>, <metaitem:brick.fireclay>, <metaitem:brick.fireclay>],
    [<metaitem:brick.fireclay>, <minecraft:magma_cream>, <metaitem:brick.fireclay>],
    [<metaitem:brick.fireclay>, <metaitem:brick.fireclay>, <metaitem:brick.fireclay>]]);

    
//Holoprojector
assembler.recipeBuilder()
	.inputs(gt_hv_sensor)
    .inputs(<ore:cableGtSingleGold> * 2)
	.inputs(<ore:circuitAdvanced>)
    .inputs(gt_display)
    .inputs(<ore:foilStainlessSteel> * 4)
    .fluidInputs([<liquid:soldering_alloy> * 144])
	.outputs(<libvulpes:holoprojector>)
	.EUt(480)
	.duration(400)
	.buildAndRegister();    
    
    
//Hover Upgrade
assembler.recipeBuilder()
	.inputs(<advancedrocketry:ic:3>)
    .inputs(<ore:circuitAdvanced> * 2)
    .inputs(<ore:wireFineRedAlloy> * 8)
	.outputs(<advancedrocketry:itemupgrade>)
	.EUt(360)
	.duration(150)
	.buildAndRegister();


    
//Jetpack
assembler.recipeBuilder()
	.inputs(<ore:plateCurvedStainlessSteel> * 4)
    .inputs(gt_advanced_thruster * 2)
	.inputs(<ore:circuitAdvanced>)
    .inputs(<ore:stickStainlessSteel> * 4)
    .fluidInputs([<liquid:soldering_alloy> * 288])
	.outputs(<advancedrocketry:jetpack>)
	.EUt(480)
	.duration(800)
	.buildAndRegister();


//Input hatch
recipes.addShapeless("ar_input_hatch", <libvulpes:hatch>, [gt_hv_input_bus, <ore:craftingToolWrench>]);


//Input fluid hatch
recipes.addShapeless("ar_input_fluid_hatch", <libvulpes:hatch:2>, [gt_hv_input_hatch, <ore:craftingToolWrench>]);


//iron saw blade
//removed because useful only for one thing, that got a better saw gt_saw blade


//Laser drill
recipes.addShaped("ar_laser_drill", <advancedrocketry:spacelaser>, 
    [[<ore:circuitExtreme>, gt_hv_miner, <ore:circuitExtreme>],
    [gt_hv_miner, gt_ev_machine_hull, gt_hv_miner],
    [gt_ev_emitter, gt_hv_miner, gt_ev_emitter]]);



//Lens
assembler.recipeBuilder()
	.inputs(<ore:frameGtTitanium>)
    .inputs(<ore:craftingLensWhite> * 3)
    .fluidInputs([<liquid:soldering_alloy> * 144])
	.outputs(<advancedrocketry:blocklens>)
	.EUt(1200)
	.duration(250)
	.buildAndRegister();  
    
    
//Linker
assembler.recipeBuilder()
	.inputs(gt_hv_emitter)
    .inputs(<ore:cableGtSingleGold> * 2)
	.inputs(<ore:circuitAdvanced> * 2)
    .inputs(<ore:foilStainlessSteel> * 4)
    .fluidInputs([<liquid:soldering_alloy> * 144])
	.outputs(<libvulpes:linker>)
	.EUt(480)
	.duration(400)
	.buildAndRegister();  


//Machine structure
assembler.recipeBuilder()
	.inputs(<ore:plateStainlessSteel> * 6 )
	.inputs(<ore:frameGtStainlessSteel>)
	.outputs(<libvulpes:structuremachine> * 3)
    .property("circuit", 17)
	.EUt(16)
	.duration(50)
	.buildAndRegister();


//Machine structure, advanced
assembler.recipeBuilder()
	.inputs(<ore:plateTitanium> * 6 )
	.inputs(<ore:frameGtTitanium>)
	.outputs(<libvulpes:advstructuremachine> * 3)
    .property("circuit", 17)
	.EUt(16)
	.duration(50)
	.buildAndRegister();
    
    
//Mass Sensor
assembler.recipeBuilder()
	.inputs(<advancedrocketry:satelliteprimaryfunction> * 2)
    .inputs(<ore:gemDilithium>)
    .inputs(<ore:circuitAdvanced> * 2)
	.outputs(<advancedrocketry:satelliteprimaryfunction:2>)
	.EUt(320)
	.duration(850)
	.buildAndRegister();   
    
    
//Microwave reciever
recipes.addShaped("ar_microwave_reciever", <advancedrocketry:microwavereciever>, 
    [[gt_hv_sensor, <advancedrocketry:solarpanel>, gt_hv_sensor],
    [<ore:plateStainlessSteel>, gt_hv_machine_hull, <ore:plateStainlessSteel>],
    [<ore:circuitAdvanced>, <ore:plateStainlessSteel>, <ore:circuitAdvanced>]]);    
    

//Microwave transmitter
assembler.recipeBuilder()
	.inputs(<ore:stickLongTitanium> * 2)
    .inputs(<ore:circuitExtreme>)
    .inputs(gt_ev_emitter * 2)
    .inputs(<advancedrocketry:ic:1>)
    .inputs(<ore:plateDenseLead>)
	.outputs(<advancedrocketry:satelliteprimaryfunction:3>)
	.EUt(1440)
	.duration(850)
	.buildAndRegister();


//motor, basic
recipes.addShaped("ar_motor_basic", <libvulpes:motor>, 
    [[null, <ore:plateCurvedAluminium>, <ore:plateAluminium>],
    [<ore:stickLongAluminium>, gt_mv_electric_motor, <ore:plateAluminium>],
    [null, <ore:plateCurvedAluminium>, <ore:plateAluminium>]]);
    
    
//motor, advanced
recipes.addShaped("ar_motor_advanced", <libvulpes:advancedmotor>, 
    [[null, <ore:plateCurvedStainlessSteel>, <ore:plateStainlessSteel>],
    [<ore:stickLongStainlessSteel>, gt_hv_electric_motor, <ore:plateStainlessSteel>],
    [null, <ore:plateCurvedStainlessSteel>, <ore:plateStainlessSteel>]]);


//motor, enhanced
recipes.addShaped("ar_motor_enhanced", <libvulpes:enhancedmotor>, 
    [[null, <ore:plateCurvedTitanium>, <ore:plateTitanium>],
    [<ore:stickLongTitanium>, gt_ev_electric_motor, <ore:plateTitanium>],
    [null, <ore:plateCurvedTitanium>, <ore:plateTitanium>]]);
    
    
//motor, elite
recipes.addShaped("ar_motor_elite", <libvulpes:elitemotor>, 
    [[null, <ore:plateCurvedTungstenSteel>, <ore:plateTungstenSteel>],
    [<ore:stickLongTungstenSteel>, gt_iv_electric_motor, <ore:plateTungstenSteel>],
    [null, <ore:plateCurvedTungstenSteel>, <ore:plateTungstenSteel>]]);
    
    
//Optical sensor
assembler.recipeBuilder()
	.inputs(<ore:plateElectrum> * 3)
    .inputs(<ore:craftingLensWhite> * 3)
    .fluidInputs([<liquid:glowstone> * 1000])
	.outputs(<advancedrocketry:satelliteprimaryfunction>)
	.EUt(320)
	.duration(850)
	.buildAndRegister();   
    

//Ore Mapper
assembler.recipeBuilder()
	.inputs(<ore:stickLongStainlessSteel> * 2)
    .inputs(<ore:circuitAdvanced> *2 )
    .inputs(gt_hv_sensor)
    .inputs(<advancedrocketry:ic:1> * 2)
	.outputs(<advancedrocketry:satelliteprimaryfunction:4>)
	.EUt(360)
	.duration(850)
	.buildAndRegister();


//Ore scanner
assembler.recipeBuilder()
	.inputs(<ore:foilStainlessSteel>)
    .inputs(gt_hv_sensor)
    .inputs(<libvulpes:battery>)
    .inputs(<ore:circuitAdvanced> * 2)
    .inputs(<advancedrocketry:misc>)
	.outputs(<advancedrocketry:orescanner>)
	.EUt(480)
	.duration(400)
	.buildAndRegister();    


//Output hatch
recipes.addShapeless("ar_output_hatch", <libvulpes:hatch:1>, [gt_hv_output_bus, <ore:craftingToolWrench>]);


//Output fluid hatch
recipes.addShapeless("ar_output_fluid_hatch", <libvulpes:hatch:3>, [gt_hv_output_hatch, <ore:craftingToolWrench>]);


//Oxygen vent
recipes.addShaped("ar_oxygen_vent", <advancedrocketry:oxygenvent>, 
    [[<minecraft:iron_bars>, <ore:rotorStainlessSteel>, <minecraft:iron_bars>],
    [<advancedrocketry:pressuretank:2>, gt_hv_electric_motor, <advancedrocketry:pressuretank:2>],
    [<minecraft:iron_bars>, gt_hv_machine_hull,<minecraft:iron_bars>]]);
    

//padded landing boots
//Ore scanner
assembler.recipeBuilder()
	.inputs(<ore:foilPlastic> * 8)
    .inputs(<ore:foilRubber> * 8)
    .inputs(<metaitem:carbon.mesh> * 8)
    .inputs(<minecraft:leather_boots>)
    .inputs(<ore:craftingFeather> * 16)
	.outputs(<advancedrocketry:itemupgrade:3>)
	.EUt(320)
	.duration(100)
	.buildAndRegister(); 



//plate presser
//removed because completely useless


//Power Input Plug
recipes.addShapeless("ar_energy_input_hatch", <libvulpes:forgepowerinput>, [gt_hv_energy_hatch, <ore:craftingToolWrench>]);


//Pump
recipes.addShaped("ar_pump", <advancedrocketry:blockpump>, 
    [[<ore:circuitAdvanced>, <advancedrocketry:misc>, <advancedrocketry:ic:5>],
    [gt_hv_electric_pump, gt_hv_machine_hull, gt_hv_electric_pump],
    [<ore:stickStainlessSteel>, gt_hv_electric_pump, <ore:stickStainlessSteel>]]);



//Quartz crucible
recipes.addShaped("ar_quartz_crucible", <advancedrocketry:iquartzcrucible>, 
    [[<ore:plateNetherQuartz>, null, <ore:plateNetherQuartz>],
    [<ore:plateNetherQuartz>, <minecraft:cauldron>, <ore:plateNetherQuartz>],
    [<ore:plateNetherQuartz>, <ore:plateNetherQuartz>, <ore:plateNetherQuartz>]]);


//Railgun
recipes.addShaped("ar_railgun", <advancedrocketry:railgun>, 
    [[<ore:plateCurvedSteelMagnetic>, null, <ore:plateCurvedSteelMagnetic>],
    [<ore:plateCurvedSteelMagnetic>, gt_hv_machine_hull, <ore:plateCurvedSteelMagnetic>],
    [<ore:plateCurvedSteelMagnetic>, <ore:circuitAdvanced>, <ore:plateCurvedSteelMagnetic>]]);


//Rocket Builder
recipes.addShaped("ar_rocket_builder", <advancedrocketry:rocketbuilder>, 
    [[gt_hv_robot_arm, <advancedrocketry:misc>,gt_hv_robot_arm],
    [<advancedrocketry:ic:3>, gt_hv_machine_hull, <advancedrocketry:ic:3>],
    [gt_hv_robot_arm, <ore:gearAluminium>, gt_hv_robot_arm]]);


//rocket fuel
chemical_reactor.recipeBuilder()
	.fluidInputs([<liquid:liquid_oxygen> * 10 ])
	.fluidInputs([<liquid:liquid_hydrogen> * 10 ] )
	.fluidOutputs(<liquid:rocketfuel> * 10)
	.EUt(64)
	.duration(50)
	.buildAndRegister();
    
    
//rocket monitoring station
recipes.addShaped("ar_ocket_monitor", <advancedrocketry:monitoringstation>, 
    [[<advancedrocketry:satelliteprimaryfunction>, <ore:plateStainlessSteel>, <ore:plateStainlessSteel>],
    [<ore:circuitAdvanced>, gt_hv_machine_hull, <advancedrocketry:ic:3>],
    [<ore:plateStainlessSteel>, <ore:plateStainlessSteel>, <ore:plateStainlessSteel>]]);
 
 
 //Satellite bay
recipes.addShaped("ar_satellite_bay", <advancedrocketry:loader:1>, 
    [[null, <ore:circuitAdvanced>, null],
    [null, <libvulpes:structuremachine>, gt_hv_robot_arm],
    [null, null, null]]);
 

//Satellite builder
recipes.addShaped("ar_satellite_builder", <advancedrocketry:satellitebuilder>, 
    [[<advancedrocketry:dataunit>, <ore:circuitAdvanced>, <advancedrocketry:dataunit>],
    [gt_hv_robot_arm, <libvulpes:structuremachine>, gt_hv_robot_arm],
    [<ore:plateStainlessSteel>, gt_hv_machine_hull, <ore:plateStainlessSteel>]]);


//Satellite,chassis
recipes.addShaped("ar_satellite", <advancedrocketry:satellite>, 
    [[<ore:plateAluminium>, <ore:plateCurvedAluminium>, <ore:plateAluminium>],
    [<ore:stickLongStainlessSteel>, <ore:frameGtAluminium>, <ore:stickLongStainlessSteel>],
    [<ore:plateAluminium>, <ore:plateCurvedAluminium>, <ore:plateAluminium>]]);


//Satellite Terminal
recipes.addShaped("ar_satellite_terminal", <advancedrocketry:satellitecontrolcenter>, 
    [[<advancedrocketry:satelliteprimaryfunction>, <ore:plateStainlessSteel>, <advancedrocketry:satelliteprimaryfunction>],
    [<ore:circuitAdvanced>, gt_hv_machine_hull, <ore:circuitAdvanced>],
    [<ore:plateStainlessSteel>, <ore:plateStainlessSteel>, <ore:plateStainlessSteel>]]);


//Sawblade
recipes.addShaped("ar_sawblade", <advancedrocketry:sawblade>, 
    [[<ore:stickStainlessSteel>, null, <ore:stickStainlessSteel>],
    [<ore:plateStainlessSteel>, <ore:craftingDiamondBlade>, <ore:plateStainlessSteel>],
    [<ore:plateStainlessSteel>, null, <ore:plateStainlessSteel>]]);



//Seal Detector
assembler.recipeBuilder()
	.inputs(<ore:cableGtSingleGold> * 4)
    .inputs(<ore:circuitAdvanced>)
	.inputs(gt_hv_sensor)
    .inputs(<ore:foilStainlessSteel> * 4)
    .inputs(<advancedrocketry:pressuretank>)
    .fluidInputs([<liquid:soldering_alloy> * 144])
	.outputs(<advancedrocketry:sealdetector>)
	.EUt(480)
	.duration(400)
	.buildAndRegister(); 


//Solar panel, basic
assembler.recipeBuilder()
	.inputs(gt_solar_panel * 2)
    .inputs(<ore:stickLongStainlessSteel>)
    .fluidInputs([<liquid:glowstone> * 1000])
	.outputs(<advancedrocketry:satellitepowersource>)
	.EUt(320)
	.duration(350)
	.buildAndRegister();   


//Solar panel, block
recipes.addShaped("ar_solar_panel_block", <advancedrocketry:solarpanel>, 
    [[null, gt_solar_panel, null],
    [<ore:plateStainlessSteel>, <ore:frameGtStainlessSteel>, <ore:plateStainlessSteel>],
    [<ore:plateStainlessSteel>, <ore:plateStainlessSteel>, <ore:plateStainlessSteel>]]);  


//Solar panel, LARGE
assembler.recipeBuilder()
	.inputs(<advancedrocketry:satellitepowersource> * 6)
    .inputs(<ore:stickLongStainlessSteel>)
    .fluidInputs([<liquid:soldering_alloy> * 288])
	.outputs(<advancedrocketry:satellitepowersource:1>)
	.EUt(320)
	.duration(850)
	.buildAndRegister(); 


//Space Elevator
recipes.addShaped("ar_space_elevator", <advancedrocketry:spaceelevatorcontroller>, 
    [[<ore:plateTitanium>, <advancedrocketry:ic:3>, <ore:plateTitanium>],
    [<advancedrocketry:ic:3>, gt_hv_machine_hull, <advancedrocketry:ic:3>],
    [<ore:plateTitanium>, gt_hv_electric_motor, <ore:plateTitanium>]]);
    

//Space suit, helmet
recipes.addShaped("ar_space_suit_helmet", <advancedrocketry:spacehelmet>, 
    [[<ore:platePolytetrafluoroethylene>, <ore:platePolytetrafluoroethylene>, <ore:platePolytetrafluoroethylene>],
    [<ore:platePolytetrafluoroethylene>, <metaitem:rebreather>, <ore:platePolytetrafluoroethylene>],
    [null, <meta_tile_entity:gtadditions:ga_transparent_casing>, null]]);
    
//Space suit, chest piece
recipes.addShaped("ar_space_suit_chest", <advancedrocketry:spacechestplate>, 
    [[<ore:platePolytetrafluoroethylene>, <advancedrocketry:pressuretank:2>, <ore:platePolytetrafluoroethylene>],
    [<ore:platePolytetrafluoroethylene>, <ore:platePolytetrafluoroethylene>, <ore:platePolytetrafluoroethylene>],
    [<ore:platePolytetrafluoroethylene>, <ore:platePolytetrafluoroethylene>, <ore:platePolytetrafluoroethylene>]]);


//Space suit, Leggins
recipes.addShaped("ar_space_suit_leggins", <advancedrocketry:spaceleggings>, 
    [[<ore:platePolytetrafluoroethylene>, <ore:platePolytetrafluoroethylene>, <ore:platePolytetrafluoroethylene>],
    [<ore:platePolytetrafluoroethylene>, null, <ore:platePolytetrafluoroethylene>],
    [<ore:platePolytetrafluoroethylene>, null, <ore:platePolytetrafluoroethylene>]]);
    
    
//Space suit, boots
recipes.addShaped("ar_space_suit_boots", <advancedrocketry:spaceboots>, 
    [[null, null, null],
    [<ore:platePolytetrafluoroethylene>, null, <ore:platePolytetrafluoroethylene>],
    [<ore:platePolytetrafluoroethylene>, null, <ore:platePolytetrafluoroethylene>]]);
    

//Station builder
recipes.addShaped("ar_station_builder", <advancedrocketry:stationbuilder>, 
    [[gt_hv_robot_arm, <advancedrocketry:misc>,gt_hv_robot_arm],
    [<advancedrocketry:ic:3>, gt_hv_machine_hull, <advancedrocketry:ic:3>],
    [gt_hv_robot_arm, <ore:gemDilithium>, gt_hv_robot_arm]]);



//Structure Tower
recipes.addShaped("ar_structure_tower", <advancedrocketry:structuretower> * 3, 
    [[<ore:stickStainlessSteel>, <ore:craftingToolWrench>, <ore:stickStainlessSteel>],
    [<ore:stickStainlessSteel>, <ore:frameGtStainlessSteel>, <ore:stickStainlessSteel>],
    [<ore:stickStainlessSteel>, <ore:craftingToolHardHammer>, <ore:stickStainlessSteel>]]);
   
   
//Suit workstation
recipes.addShaped("ar_suit_workstation", <advancedrocketry:suitworkstation>, 
    [[gt_hv_robot_arm, <ore:workbench>, gt_hv_robot_arm],
    [<ore:plateStainlessSteel>, gt_hv_machine_hull, <ore:plateStainlessSteel>],
    [gt_hv_robot_arm, <libvulpes:structuremachine>, gt_hv_robot_arm]]);  


//tank, low pressure
metal_bender.recipeBuilder()
	.inputs(<ore:plateCurvedSteel> * 2 )
	.outputs(<advancedrocketry:pressuretank>)
    .property("circuit", 17)
	.EUt(16)
	.duration(50)
	.buildAndRegister();
    

//tank
metal_bender.recipeBuilder()
	.inputs(<ore:plateCurvedAluminium> * 2 )
	.outputs(<advancedrocketry:pressuretank:1>)
    .property("circuit", 17)
	.EUt(16)
	.duration(50)
	.buildAndRegister();
    

//tank, high pressure
metal_bender.recipeBuilder()
	.inputs(<ore:plateCurvedStainlessSteel> * 2 )
	.outputs(<advancedrocketry:pressuretank:2>)
    .property("circuit", 17)
	.EUt(16)
	.duration(50)
	.buildAndRegister();
    
    
//tank, super high pressure
metal_bender.recipeBuilder()
	.inputs(<ore:plateCurvedTitanium> * 2 )
	.outputs(<advancedrocketry:pressuretank:3>)
    .property("circuit", 17)
	.EUt(16)
	.duration(50)
	.buildAndRegister();
    
    
//Tracking circuit
assembler.recipeBuilder()
    .inputs(<ore:circuitGood>)
	.inputs(gt_circuit_board)
    .fluidInputs([<liquid:soldering_alloy> * 144])
	.outputs(<advancedrocketry:ic:1>)
    .property("circuit", 18)
	.EUt(320)
	.duration(250)
	.buildAndRegister(); 


//Unmanned drone builder
recipes.addShaped("ar_unmanned_drone", <advancedrocketry:deployablerocketbuilder>, 
    [[gt_hv_robot_arm, <advancedrocketry:misc>,gt_hv_robot_arm],
    [<advancedrocketry:ic:3>, gt_hv_machine_hull, <advancedrocketry:ic:3>],
    [gt_hv_robot_arm, <ore:gearStainlessSteel>, gt_hv_robot_arm]]);


//User Interface
assembler.recipeBuilder()
	.inputs(<metaitem:display>)
	.inputs(<ore:dyeLime> * 2)
    .inputs(<ore:plateGlowstone>)
	.outputs(<advancedrocketry:misc>)
	.EUt(480)
	.duration(200)
	.buildAndRegister();
    
    
//Vacuum Laser
recipes.addShaped("ar_vacuum_laser", <advancedrocketry:vacuumlaser>, 
    [[<ore:plateStainlessSteel>, <ore:blockGlass>, <ore:plateStainlessSteel>],
    [<metaitem:energy_crystal>, <advancedrocketry:crystal:3>, <metaitem:energy_crystal>],
    [<ore:plateStainlessSteel>, gt_hv_machine_hull, <ore:plateStainlessSteel>]]);
    
    
//Warp core
recipes.addShaped("ar_warp_core", <advancedrocketry:warpcore>, 
    [[<ore:gemDilithium>, gt_ev_field_generator, <ore:gemDilithium>],
    [gt_ev_field_generator, gt_ev_machine_hull, gt_ev_field_generator],
    [<ore:gemDilithium>,gt_ev_field_generator, <ore:gemDilithium>]]);
    
    
//Warp monitor
recipes.addShaped("ar_warp_monitor", <advancedrocketry:warpmonitor>, 
    [[<ore:gemDilithium>, <advancedrocketry:misc>, <ore:gemDilithium>],
    [<advancedrocketry:ic:3>, gt_ev_machine_hull, <advancedrocketry:ic:3>],
    [<ore:plateTitanium>,<ore:plateTitanium>, <ore:plateTitanium>]]);
