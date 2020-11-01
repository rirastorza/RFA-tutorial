# Complementary material for Chapter 6 (Radiofrequency Ablation)

This tutorial aims to provide the reader with free tools for simulating Radiofrequency Ablations. It is divided into three parts:
1. [Mesh generation using Gmsh](https://github.com/rirastorza/RFA-tutorial/blob/master/mesh%20generation/meshgenration.ipynb). The file can be found at: rfa-atrial-wall.geo
2. [Solving the RFA problem using the Finite Element Method (FEM)](https://github.com/rirastorza/RFA-tutorial/blob/master/solving%20by%20fem/solvingbyfem.ipynb). Some theory and code.
3. [Running a simulation](https://github.com/rirastorza/RFA-tutorial/blob/master/run/coding.ipynb).

The complete Python script (RFA_script.py), Gmsh scrip (rfa-atrial-wall.geo) and converted .xml files can be downloaded from the folder called [example](https://github.com/rirastorza/RFA-tutorial/tree/master/example).

### How to use

- Clone or download the repository.
- The Jupyter Notebooks below provide an introduction to meshing tools, simulating by FEM and visualizing RFA models. The Notebooks can be viewed directly in nbviewer. To execute any of the notebooks either locally or in the Google Colaboratory, please see [Section 3.1](https://github.com/rirastorza/RFA-tutorial/blob/master/run/coding.ipynb) for setup instructions.

---

## References

1. Ablation (RFA) on the atrial wall similar to that presented in [Irastorza et al. (2018)](https://onlinelibrary.wiley.com/doi/abs/10.1111/jce.13363). 
2. The tutorial is mostly written in [Python](https://www.python.org/) programming language.
3. SciPy is a Python-based ecosystem of open-source software for mathematics, science, and engineering. Some of the core packages are: NumPy, library [Scipy](https://www.scipy.org/), and [Matplotlib](https://matplotlib.org/).
4. The mesh is generated with [Gmsh](https://gmsh.info/). Gmsh is copyright (C) 1997-2020 by C. Geuzaine and J.-F. Remacle and is distributed under the terms of the GNU General Public License (GPL).
5. [FEniCS](https://fenicsproject.org/download/) which is a popular open-source (LGPLv3) computing platform for solving partial differential equations (PDEs).
6. For data analysis and visualization we use [ParaView](https://www.paraview.org/), which uses a permissive BSD license.
7. The implementation of the RFA simulation is based on the Sheldon Hall Code under GNU General Public License v3.0 available in this [link](https://github.com/sheldonkhall/MITA-model).
