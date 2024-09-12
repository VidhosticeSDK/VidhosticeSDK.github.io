```xml
<placeableTypes
    name="placeable" className="Placeable"
    name="tree" parent="placeable"
    name="bush" parent="placeable"
    name="foliage" parent="placeable"

    name="simplePlaceable" parent="placeable"
        specialization="placement"
        specialization="clearAreas"
        specialization="indoorAreas"
        specialization="foliageAreas"
        specialization="tipOcclusionAreas"
        specialization="ai"
        specialization="animatedObjects"
        specialization="leveling"
        specialization="triggerMarkers"
        specialization="dynamicallyLoadedParts"
        specialization="hotspots"
        specialization="deletedNodes"
        specialization="colorable"
        specialization="lights"

    name="decoObject" parent="placeable"
        specialization="placement"
        specialization="ai"

    name="trainSystem" parent="placeable"
        specialization="ai"
        specialization="trainSystem"
        specialization="hotspots"
        specialization="triggerMarkers"

    name="greenhouse" parent="simplePlaceable"
        specialization="productionPoint"
        specialization="greenhouse"
        specialization="infoTrigger"

    name="sellingStation" parent="simplePlaceable"
        specialization="sellingStation"

    name="silo" parent="simplePlaceable"
        specialization="silo"
        specialization="infoTrigger"

    name="siloExtension" parent="simplePlaceable"
        specialization="siloExtension"

    name="highPressureWasher" parent="simplePlaceable"
        specialization="highPressureWasher"
        specialization="infoTrigger"

    name="garageWorkshop" parent="simplePlaceable"
        specialization="workshop"

    name="garageSolarPanels" parent="simplePlaceable"
        specialization="solarPanels"
        specialization="incomePerHour"

    name="beehive" parent="simplePlaceable"
        specialization="beehive"
        specialization="infoTrigger"

    name="beehivePalletSpawner" parent="simplePlaceable"
        specialization="beehivePalletSpawner"
        specialization="infoTrigger"

    name="solarPanel" parent="simplePlaceable"
        specialization="solarPanels"
        specialization="incomePerHour"

    name="workshop" parent="simplePlaceable"
        specialization="workshop"

    name="doghouse" parent="simplePlaceable"
        specialization="doghouse"

    name="manureHeap" parent="simplePlaceable"
        specialization="manureHeap"
        specialization="infoTrigger"

    name="objectStorage" parent="simplePlaceable"
        specialization="objectStorage"
        specialization="infoTrigger"

    name="bunkerSilo" parent="simplePlaceable"
        specialization="bunkerSilo"

    name="productionPoint" parent="simplePlaceable"
        specialization="productionPoint"
        specialization="infoTrigger"

    name="productionPointWardrobe" parent="productionPoint"
        specialization="wardrobe"

    name="buyingStation" parent="simplePlaceable"
        specialization="buyingStation"

    name="chargingStation" parent="buyingStation"
        specialization="chargingStation"

    name="windTurbine" parent="simplePlaceable"
        specialization="windTurbine"
        specialization="incomePerHour"

    name="weatherStation" parent="simplePlaceable"
        specialization="weatherStation"

    name="vine" parent="simplePlaceable"
        specialization="fence"
        specialization="vine"

    name="fence" parent="simplePlaceable"
        specialization="fence"

    name="baseHusbandry" parent="simplePlaceable"
        specialization="husbandry"
        specialization="husbandryAnimals"
        specialization="husbandryFood"
        specialization="husbandryFence"
        specialization="infoTrigger"

    name="cowHusbandryPasture" parent="baseHusbandry"
        specialization="husbandryWater"
        specialization="husbandryMilk"

    name="cowHusbandry" parent="baseHusbandry"
        specialization="husbandryWater"
        specialization="husbandryMilk"
        specialization="husbandryStraw"
        specialization="husbandryLiquidManure"

    name="cowHusbandryFeedingRobot" parent="cowHusbandry"
        specialization="husbandryFeedingRobot"

    name="sheepHusbandry" parent="baseHusbandry"
        specialization="husbandryWater"
        specialization="husbandryPallets"

    name="pigHusbandryPasture" parent="baseHusbandry"
        specialization="husbandryWater"

    name="pigHusbandry" parent="baseHusbandry"
        specialization="husbandryLiquidManure"
        specialization="husbandryWater"
        specialization="husbandryStraw"

    name="horseHusbandryPasture" parent="baseHusbandry"
        specialization="husbandryWater"

    name="horseHusbandry" parent="baseHusbandry"
        specialization="husbandryWater"
        specialization="husbandryStraw"

    name="chickenHusbandry" parent="baseHusbandry"
        specialization="husbandryPallets"

    name="farmhouse" parent="simplePlaceable"
        specialization="farmhouse"
        specialization="wardrobe"
        specialization="cartridgePlayer"

    name="wardrobe" parent="simplePlaceable"
        specialization="wardrobe"

    name="weighingStation" parent="simplePlaceable"
        specialization="weighingStation"
/>
```
