# <  ForgeCraft - Documentation >
## ----------------< Note >---------------- #
This datapack is created by LPMC2, with some assist from CloudWolf which includes:
- entity_hit_matching (Modified)
- raycast functions: start_raycast, raycast, collide (Modified)
Please do not copy and claim it as own work (Be warned, HUGE TONS of code to be read lmao), I have put a lot of time on the functions & the forging system.

Please notify me from the platform I published if you found any bugs or problems with the datapack.
## -------------< Known Problems >------------- #
1. You should not place Reforge Anvil on the following blocks:
- Any block that is not 1 block height, especially player head, endstone frame etc. It would just break the block.
2. All Reforges are unable to work with firework rockets, as the projectile doesn't contain the weapon component (This is my main method for detecting player firing arrow.)
3. You can apply some effects like stunning, leeching etc. If the weapon is in main hand but use left hand to fire the arrow or quick switch the weapon.
4. Potion Effects from Armor will not work after respawning if the gamerule of keepinventory is on.
5. You can still get hit effects from mobs even if blocked.
6. Some reforge may not work with all types of items. This is because it uses the scoreboard of [minecraft.item.xxx.used] for detection.

## -----------< Guide > ----------- #
1. Craft the Reforge Anvil from the given recipe, if the recipe doesn't appear in the crafting table, type the following command:
/recipe give @p crafting:reforge_anvil
You need the Recipe Book opened in order to view the crafting recipe.
To place the reforge anvil, just place it like spawn egg. However, there are a few cautions:
- Avoid placing on non-full block items like stairs, slab, carpets. All of this can cause the anvil to not spawn.

2. From the reforge anvil, there is a item slot and a forge slot, where you can put / return your item in it from [right click / Left click]. There is also a forge slot, where you can put forge item like the Forging Converter in it. 
- To forge the item, click on the symbol 🛠 above the anvil and slot items to forge the item. However, if the item/forge item is incorrect or your xp level isn't enough, it will not do anything.
- For Getting the Reforge Anvil back as a item, all you need to do is to destroy the anvil. 
3. Almost all reforge items are obtainable by crafting. In addition, there are some that can be obtained from mobs. 
4. Mob modification is disabled by default. If you wished to enable mob modification, you can type:
/function gamerules/ismobmodification/true
5. If you updated this datapack to newer versions and notice no new reforges added, please type:
/function reforge/unlock_all_reforges
To view the recipes for new reforges.
6. If you want to get the reforge anvil (In case you lost it, although it can be crafted), you can type:
/function reforge/give_reforge_anvil
7. To modify the maximum count for enhancement books applied, you can type the following command:
/function gamerules:enhancementmaxcount/set {count:10}
Where "count" is the maximum count to apply
8. To stop the Armor textures from disappearing (If not using Resourcepack), type this command to disable the feature:
/function gamerules:istexturearmor/false

This is a solo project, that it was created in free time while in college & after work. I really appreciate for those who downloaded, or liked my project. If you are reading this, I hope that you have a great future, and able to fulfill what you want.

## -----------< Debugging > ----------- #
Want to help me finding problems? No worries! Here's what you can do to support me:

To debug all reforge items, you can use the command:
/function forgecraft_lpmc2:menu
It will open a menu, that can choose and get the item from clicking and confirming.

### Requirements:
- Minecraft Version: 1.21.6 or newer (Dialog doesn't exist yet in 1.21.5 or lower)
- World: Prefer Normal Generated worlds. Don't recommend using your survival world, unless you really want to.
- Allow Commands: on
- Gamemode: Creative (The menu will banish you if you try to use other gamemodes)
- A github account to provide Issue information
