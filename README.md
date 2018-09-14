# openFrameworks-clion
sherwyn's personal template project for openframeworks and clion, with a built in CLion debug configuration. 

stole ideas from around the internet and https://forum.openframeworks.cc/t/are-there-any-plan-for-supporting-clion/17188/52

readme will be constantly updated as i use this template project more. if something doesn't work, write an issue.

## CLion dependencies
- makefile support https://plugins.jetbrains.com/plugin/9333-makefile-support (you can  install this from the built in plugin manager in CLion settings)

## basic setup instructions (assumes you already know how to use CLion and have the above dependency installed in CLion)
1. clone this
2. <code>rm -rf .git</code>
3. run <code>make Debug</code> to initially generate a debug executable for CLion
4. open CLion and **Import** the folder (don't just open). click "open existing project" in the subsequent popup
5. right click on Makefile and click "Run Makefile" (so CLion can detect that it exists)
6. go the top right build config debug menu and go to "Edit configurations..."
7. in the "Before Launch" subwindow, double click on "Run another configuration"
8. click on "Makefile" (if this doesn't appear, make sure you did step 5)
9. close out and build+debug using the oFDebug option
10. have fun

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
