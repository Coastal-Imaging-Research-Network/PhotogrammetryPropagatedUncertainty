# PhotogrammetryPropagatedUncertainty
MATLAB implementation of uncertainty propagation through the photogrammetry equations

Currently just an example sandbox with some examples for estimating uncertainty of the camera pose and orthophoto projection.

## exampleSpaceResection.m
Simulates a camera and GCPs and estimates a camera pose and covariance using Total Least Squares

## exampleTPUortho.m
Uses a camera with known uncertainty in the camera pose and propagates error through to the orthophoto in the form of a 3d error ellipse.  (The 95% confidence 2D XY Error ellipse is plotted)
- experimental pixel to pixel uncertainty also added
