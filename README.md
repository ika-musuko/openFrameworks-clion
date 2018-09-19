# openFrameworks-clion
sherwyn's personal template project for openframeworks and clion, with a built in CLion debug configuration. 

this assumes you have already installed openframeworks https://openframeworks.cc/ according to the linux gcc6 configuration.

stole ideas from around the internet and https://forum.openframeworks.cc/t/are-there-any-plan-for-supporting-clion/17188/52

readme will be constantly updated as i use this template project more. if something doesn't work, write an issue.

the makefile stuff is for getting compilation to work (!!important!!) but the cmake stuff is just for getting jetbrains's code completion/autosuggest/other magic to work). it will be a good day when jetbrains decides to directly support other methods of building (such as makefiles alone)

## CLion dependencies
- makefile support https://plugins.jetbrains.com/plugin/9333-makefile-support (you can  install this from the built in plugin manager in CLion settings)

## renaming the project
!!! don't delete .project_name !!! <br/>
<code>./rename_project.sh your-project-name</code>

## basic setup instructions 
this guide assumes you already know how to use CLion and have the above dependencies installed in CLion.
1. clone this
2. <code>rm -rf .git</code>
3. open CLion and **Import** the folder (don't just open). click "open existing project" in the subsequent popup
4. go to <code>CMakeLists.txt</code> and change <code>OF_DIRECTORY</code> argument to your openFrameworks root path under the <code>===================== oF Directory =====================</code> section
5. go to <code>Makefile</code> and change <code>OF_ROOT</code> to the absolute root path of openFrameworks
5. run the <code>oFDebug</code> build mode
    - the normal clion build mode via CMake will **not** work. use my oFDebug build mode which has gnumake build the project instead
6.  have fun

## existing oF project
follow the above steps and then replace everything in src/ with your files. modify the Source Files section of CMakeLists.txt accordingly. 

if you have addons, add them to:
  - addons.make
  - cmake/addons.cmake
    - just look at what i did for ofxGui and repeat the same thing in the # includes section. in the ##### section, add your other addons as extra arguments like i did to the set() calls.
      - maybe in the future i will make this easier to do

## hey it doesn't work this is a scam!!
1. *Install Linux*
2. ensure openFramework's built in ./install_dependencies.sh was done correctly (re-run it?)
3. use your package manager to find any missing dependencies (ex: <code>apt search [thing]</code>)
4. install the appropriate packages you find (usually they are something like "libthing-dev") 
  - gotchas 
    - utf8.h is libutfcpp-dev
    - for gst/gst.h problems you might as well just do <code>sudo apt install gstreamer*</code>
