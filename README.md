## SFML

If SFML is not installed on your system:

 * Extract the SFML archive you want in the `librairies` folder (precompiled or not).
Note that there can be some issues with the precompiled version.
 * If you want to compile SFML: `make sfml` (in this directory). You need these dependencies:

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

## Dodge man

To compile: `make all`

To run: `make run`

To clean: `make clean`

You can specify a different path for sfml with the parameter `SFML=path_to_sfml`.
