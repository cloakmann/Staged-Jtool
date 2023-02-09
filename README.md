# Staged-Jtool

![This is an image](https://media.discordapp.net/attachments/564427359105843220/1073282111114588160/image.png)
The tool could be downloaded [here](https://github.com/cloakmann/Staged-Jtool/releases/tag/v0.13).

This tool aims to allow users to make a stage of multiple maps of Jtool needle with all resources needed with great efficiency, which will make handling needle collabs much easier.

## Basic Usage
 - unzip the release file and run source.exe to use the tool
 - Press **PageUp** or **PageDown** to switch skins to display
 - Press **K** instead of **F** to change room speed

## Music Module
This Jtool has integrated music module from Jtool mod 1.2.0 to Jtool 1.3.5. 

Press escape you will see the song currently playing, and you can:

#### 1 -  play previous song

#### 2 - play next song

#### 3 - loop current song

**Note that file name containing non-English character will lead to display error in the tool, and may not be exported properly.**

## Cached Jmap Storage
This Jtool can save multiple jmaps into a cache jmap storage, press F3 and you will see a floating toolbar to the left of the window, from which you may manage the cache storage.

### 1 - Adding a default jmap to the top of storage

This will add a default jmap(traditional startup map with 3 blocks in the middle) to the top of the storage.

### 2 - Importing external jmap file

This will allow you to select an external jmap file to import to the tool. Apart from equivalent feature as Ctrl + O, this will also add the file to the top of storage.

### 3 - Go to the previous map in storage

This will clear the current map and load the previous map in storage.

### 4 - Go to the next map in storage

This will clear the current map and load the next map in storage.

### 5 - Export all resources in storage

This will export all the resources in a folder, the resources will include:

> 1. Skin that is currrently used

> 2. Music file that is currently played

> 3. All maps in the storage as jmap files

### Save current map

Equivalent to Ctrl + S, this will save current map in storage as jmap file.

### Remove current map from storage

This will remove current map from storage. **Cannot be undone!**

### Clear all maps in the storage

This will remove all maps in storage, and a startup map will be placed instead. **Cannot be undone!**

## About the NSFS extension being used
This Jtool need the  extension [non_sandboxed_filesystem](https://github.com/YAL-GameMaker/non_sandboxed_filesystem) to work.

**Note that according to license of the extension, all files related to non_sandboxed_filesystem is intentionally removed from the repository.**

**If you want to use this tool, get the extension from the link and import it to the project.**

**The release may have exposed some of the content from the extension, but any usage of that shall follow the license from the link above, you take your own risk to use the resources.**

## FAQ about the project
 - To run the project, first you need to go to mainInit() and change global.editor_project_path to any absolute path.
 - To export the tool, change global.editor_project_path as `filename_dir(parameter_string(0)) + "\"; ` and export as .zip
