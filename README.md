<  ForgeCraft - Documentation >
# ----------------< Note >---------------- #
This datapack is created by LPMC2, with some assist from CloudWolf which includes:
- entity_hit_matching (Modified)
- raycast functions: start_raycast, raycast, collide (Modified)
Please do not copy and claim it as own work (Be warned, HUGE TONS of code to be read lmao), I have put a lot of time on the functions & the forging system.

Please notify me from the platform I published if you found any bugs or problems with the datapack.
# -------------< Known Problems >------------- #
1. You should not place Reforge Anvil on the following blocks:
- Any block that is not 1 block height, especially player head, endstone frame etc. It would just break the block.
2. All Reforges are unable to work with firework rockets, as the projectile doesn't contain the weapon component (This is my main method for detecting player firing arrow.)
3. You can apply some effects like stunning, leeching etc. If the weapon is in main hand but use left hand to fire the arrow or quick switch the weapon.
4. Potion Effects from Armor will not work after respawning if the gamerule of keepinventory is on.
5. You can still get hit effects from mobs even if blocked.
6. Some reforge may not work with all types of items. This is because it uses the scoreboard of [minecraft.item.xxx.used] for detection.

# -----------< Settings > ----------- #
### How to start:
- Command (require cheats, and at least Minecraft 1.21.6):<br/>
/function forgecraft_lpmc2:settings
### List of settings:
- Enhancement Book maximum applied amount: The maximum amount of enhancement books (unlocked at Forging lvl 13) that can apply to the equipment. Default to 10.
- Mob Modification: A legacy feature. It adds a way to modify some mobs with specific conditions. It also include some boss fights. Default to FALSE.
- Require Converting to apply reforge: Set this to true to disable the feature, that auto-convert any item into forge item before applying the reforge. It will require you to craft the forging converter in order to apply any reforge if set to TRUE.
Default to FALSE.
- Model Texture - Armor: This set if the applied reforge also applies the texture to the armor model (The one displayed in 3rd person). Recommended to turn off if there're other mods/datapacks/resourcepacks that sets a new texture and you would like to keep it.
Default to TRUE.
- Model Texture - Item: This set if the applied reforge also applies the texture to the item model (The one displayed in your slot). Recommended to turn off if there're other mods/datapacks/resourcepacks that sets a new texture and you would like to keep it.
Default to TRUE.

# -----------< Guide > ----------- #
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
8. If you don't want the custom texture for item model, type this command to disable the feature:
/function gamerules:istextureequipment/false
9. In case you missed it from the \< Settings \> above, If you want to change settings easily, type the following command to start the Settings UI:
/function forgecraft_lpmc2:settings

This is a solo project, that it was created in free time while in college & after work. I really appreciate for those who downloaded, or liked my project. If you are reading this, I hope that you have a great future, and able to fulfill what you want.

# -----------< Debugging > ----------- #
Want to help me finding problems? No worries! Here's what you can do to support me:

To debug all reforge items, you can use the command:
/function forgecraft_lpmc2:menu
It will open a menu, that can choose and get the item from clicking and confirming.

### Requirements for debugging:
- Minecraft Version: 1.21.6 or newer (Dialog doesn't exist yet in 1.21.5 or lower, although the datapack supports that version)
- World: Prefer Normal Generated worlds/Flat worlds. Don't recommend using your survival world, unless you really want to. (It might break the balance of your world!)
- Allow Commands: on
- Gamemode: Creative (The menu will banish you if you try to use other gamemodes)
- A github account to provide Issue information

### How to performance test
- Client Side server (usually for lan server / singleplayer): press `F3 + L`, wait for 10s, click on the underlined result log, open the newest zip file and check `server/profiling.txt`
- Server Side: Use Third-party server checker.