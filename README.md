equi2cubic
==========

This is a MATLAB script that converts cubic images into an equirectangular representation.

**Author: Ray Phan (ray@bublcam.com)**

# Introduction

This is a simple MATLAB script that takes a cubic representation of a scene that is provided as 6 cubic images and transform them into an equirectangular image.  Some good theory on the subject can be found on Paul Bourke's webpage [and can be found here](http://paulbourke.net/geometry/transformationprojection/).

Given 6 images of size `n x n`, the output image will be of size `2n x n`, where `2n` is the width and `n` is the height of the image.

It should be noted that this code does *not* perform any interpolation when sampling the cubic faces.  This performs nearest neighbour sampling instead.  You are certainly welcome to implement this on your own if you would like!

# Sources of inspiration

This code would have not been made possible without the following sources:

1. [This stackoverflow post - http://stackoverflow.com/questions/11504584/cubic-to-equirectangular-projection-algorithm](http://stackoverflow.com/questions/11504584/cubic-to-equirectangular-projection-algorithm)
2. Paul Bourke's webpage (see above)
3. [The OpenGL 4.1 specification - Chapter 3.8.10 - http://www.opengl.org/registry/doc/glspec41.core.20100725.pdf](http://www.opengl.org/registry/doc/glspec41.core.20100725.pdf)

# Requires

Any version of MATLAB with the Image Processing Toolbox installed.  Alternatively, this should be Octave friendly so you can use that environment if you like.

# How to run the code

Assuming that you already have 6 cubic images loaded in, which are denoted as ``top, bottom, left, right, front`` and ``back``, you would run the MATLAB script this way:

```
outIm = cubic2equi(top, bottom, left, right, front, back);
```

However, if you are in doubt, I have included a sample test script so you can run it and see what the results are.

# What is included in this repository
1. The cubic-to-equirectangular conversion script
2. An example script that you can use to see the script in action
3. An example set of 6 cubic images (pulled from Paul Bourke's webpage)

# License
This code is protected under the MIT License.  You may feel free to use the code in any way, shape, or form and can modify it to your heart's content.  The only thing I request is that you cite where the source came from and give me credit whenever you decide to use it.  Thanks!
