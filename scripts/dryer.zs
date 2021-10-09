import mods.requious.SlotVisual;
import mods.requious.Color;
import mods.requious.ComponentFace;
import mods.requious.AssemblyRecipe;
import mods.requious.GaugeDirection;

var dryer = <assembly:dryer>;
 
static dryerProgress as SlotVisual = SlotVisual.createGauge("requious:textures/gui/assembly_slots.png",6,5,1,6,GaugeDirection.right(),false);
 
dryer.setTextSlot(3,0).setVisual(SlotVisual.create(7,1)).setRenderText("Drying Unit");
dryer.setItemSlot(3,1,ComponentFace.all(),1).setAccess(true,false).setGroup("input1");
dryer.setItemSlot(3,2,ComponentFace.all(),1).setAccess(true,false).setGroup("input2");
dryer.setItemSlot(3,3,ComponentFace.all(),1).setAccess(true,false).setGroup("input3");
dryer.setItemSlot(3,4,ComponentFace.all(),1).setAccess(true,false).setGroup("input4");
dryer.setDurationSlot(4,1).setGroup("input1").setVisual(dryerProgress);
dryer.setDurationSlot(4,2).setGroup("input2").setVisual(dryerProgress);
dryer.setDurationSlot(4,3).setGroup("input3").setVisual(dryerProgress);
dryer.setDurationSlot(4,4).setGroup("input4").setVisual(dryerProgress);
dryer.setItemSlot(5,1,ComponentFace.all(),64).setAccess(false,true).setGroup("output1");
dryer.setItemSlot(5,2,ComponentFace.all(),64).setAccess(false,true).setGroup("output2");
dryer.setItemSlot(5,3,ComponentFace.all(),64).setAccess(false,true).setGroup("output3");
dryer.setItemSlot(5,4,ComponentFace.all(),64).setAccess(false,true).setGroup("output4");

// dry sponge
var drySponge1 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output1",<minecraft:sponge>);
}).requireItem("input1",<minecraft:sponge:1>).requireDuration("input1", 200);
dryer.addRecipe(drySponge1);

var drySponge2 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output2",<minecraft:sponge>);
}).requireItem("input2",<minecraft:sponge:1>) .requireDuration("input2", 200);
dryer.addRecipe(drySponge2);

var drySponge3 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output3",<minecraft:sponge>);
}).requireItem("input3",<minecraft:sponge:1>) .requireDuration("input3", 200);
dryer.addRecipe(drySponge3);

var drySponge4 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output4",<minecraft:sponge>);
}).requireItem("input4",<minecraft:sponge:1>) .requireDuration("input4", 200);
dryer.addRecipe(drySponge4);

dryer.setJEIItemSlot(3,2,"input");
dryer.setJEIItemSlot(5,2,"output");
dryer.setJEIDurationSlot(4,2,"duration", dryerProgress);
 
var drySpongeJEI = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<minecraft:sponge>);
}).requireItem("input",<minecraft:sponge:1>).requireDuration("duration", 200);

dryer.addJEIRecipe(drySpongeJEI);