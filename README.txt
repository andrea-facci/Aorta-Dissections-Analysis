The archive are organized as follows:
- HA contains the setup and results files of healthy aorta.
- FPA contains the setup and results files of fully perfused aorta model;
- PTA contains the setup and results files of partially thrombosed aorta model;
- FTA contains the setup and results files of fully thrombosed aorta model.
- Geometries contains the IGES files.
The flow and pressure at the outlets were obtained during the simulation with openFoam specific functions reported in the controlDict file.
Specifically, the pressure values were calculated both at the outlets of the virtual cylinder and at the fisics oulets with the specific sections created with "surface" file.
The WSS, turbulence intensity, and Q were obtained with post-process funtionality in OpenFoam, after simulation.
The TAWSS and OSI were obteined by the Matlab algorithm (File Post_processing_OSI_TAWSS.m).
   