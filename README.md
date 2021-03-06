## SFML

You have to install SFML on your system: `sudo apt-get install libsfml-dev`.

If you don't want to install SFML on your system, or if you have not root permissions:

 * Extract a version of SFML compatible with your system in the `libraries` folder (precompiled or sources).
By default, it should be extracted in a directory `SFML-2.4.2`.
Extract the archive `SFML-2.4.2-precompiled-ubuntu.tar.gz` for the computers in the C411 room.
 * If you want to compile SFML: `make sfml` (in this directory, not in the sfml directory). You need these dependencies:

```
freetype
jpeg
x11
xrandr
xcb
x11-xcb
xcb-randr
xcb-image
opengl
flac
ogg
vorbis
vorbisenc
vorbisfile
openal
pthread
```

## Doxygen

For UNIX systems, Doxygen is already locally installed in `tools/doxygen-1.8.13`.
If this version is not compatible with your OS, please replace it with a compatible version.

## Dodge man

To compile everything and generate the doc: `make all`

To compile the tests: `make tests`

To compile the project: `make dodge`

To generate the doc: `make doc`

To test: `make test`

To run: `make run`

To clean: `make clean`

You can specify a different path for sfml or doxygen with the parameters  `SFML=path_to_sfml DOXYGEN=path_to_doxygen`.
