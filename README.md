# automation
Snap automation scripts.

## What these scripts do

These scripts add keyboard bindings to the Snap UI to make routine tasks easier.

 * Alt-E to end the game/click next after every match/game.  E for "End this match/game"
 * Alt-A to click the play button on the main screen.  A for "plAy"
 * Alt-S to retreat/concede.  S for "Stop playing this round".
 * Alt_Q to mute the opponent.  Q for "Quiet".

Alt-Q is the best part of this script.  If you don't use anything else, that is the best part.  Simplest way to auto mute opponents.

## Right hand vs left hand

This script was built with the idea that you have your right hand on the mouse and use your left hand on the keyboard.  So, the alt keys are easily reachable.  It would be good to have a left-handed-mouse-user's version.

## Files

There are 2 

* SNAP-Landscape.ahk - adds the above hotkeys to Snap if you run the app in portrait mode.
* SNAP-Portrait.ahk - adds the above hotkeys to Snap if you run the app in landscape mode.  I think this is the usual configuration on pc.

Load the script in autohotkey and the keyboard bindings will be enabled.

## Autohotkey

Instructions on how to use autohotkey are on the autohotkey website.  

These files were tested with version 2.0.13.  I don't think they will work with 1.*.

## Testing

I tested these on my pc and they worked.  I _think_ the resolution functions work but I have only validated them on 1440x2560 and 1920x1200 resolutions so others may not work as expected.  If not, feel free to create a PR with the fixes applied.

I have a decent machine so the delays between mouse clicks work for me.  I assume they will work for everyone.  If not, the scripts have variables at the top of the script to increase the time if you need to.  Again, submit an issue or a PR.

## Will you get banned for using this?

When in doubt, don't use this script.  I don't think its a problem, but it is against the [terms of service](https://www.marvelsnap.com/privacy?id=7051886382070930181).

> use automated scripts, software, code or systems to collect information from or otherwise interact with the Services;

These are not cheating script and do not actually affect the game.  They are just QOL helpers.  

Use at your own risk.

## History

 here have been [attempts](https://www.reddit.com/r/MarvelSnap/comments/1229qk6/windows_pc_ahk_script_for_minor_qol_improvements/) at adding [scripts](https://www.reddit.com/r/MarvelSnap/comments/189q357/little_trick_to_bind_any_keyboard_or_mouse_key_to/) to snap in the [past](https://www.reddit.com/r/MarvelSnap/comments/10otkc3/i_made_an_agatha_macro_for_fun_i_sit_and_watch_it/).  This repository adds 2 new [autohotkey](https://www.autohotkey.com/) scripts to add key bindings to some frequently used features in Snap.  

