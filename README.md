# libxformd
A Python / Ctypes wrapper for the "xform_double" Fortran coordinate transformation library. 

These transforms originally came from the "GEOPACK" Fortran libraries by Tsyganenko. I used them extensively in my thesis, 
and they're used in the Stanford 3D Raytracer code. This wrapper allows for their use in Python.

### To build:
For OSX, you'll need to compile the shared library (libxformd.so). 

```
cd/xform_double
make clean
make
make shared
```

### To use:

```
from libxformd import xflib

xf = xflib.xflib(lib_path='<path/to/libxformd.so>')

# to convert geographic (radius, latitude, longitude) to geomagnetic:
flashtime = datetime.datetime(2020,6,1,0,0,0)  # your date
mloc = xf.rllgeo2rllmag([1.0, glat, glon], flashtime)

# To get Magnetic Local Time (MLT):
mlt = xf.lon2MLT(flashtime, mloc[2])
```

The individual methods aren't terribly well documented, but they generally accept a 1x3 vector, and a Datetime object.
