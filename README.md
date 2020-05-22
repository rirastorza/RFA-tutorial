# Tutorial for the book chapter: Radiofrequency Ablation

This tutorial is developed in order to provide to the reader free tools for implementing a simulation of Radiofrequency. We divide the tutorial into two parts:

1. Mesh generation. The Mesh generation file is rfa-atrial-wall.geo
2. Solving the RFA problem using Finite Element Method (FEM). The file for solving the RFA problem is script.py.

---

### How to use
- Clone or download the repository.

---

## References
 
1. Ablation (RFA) on the atrial wall similar to that presented in [Irastorza et al. (2018)](https://onlinelibrary.wiley.com/doi/abs/10.1111/jce.13363). 
2. The tutorial is mostly written in Python programming language.
3. SciPy is a Python-based ecosystem of open-source software for mathematics, science, and engineering. Some of the core packages are: [NumPy](https://numpy.org/), library [Scipy](https://www.scipy.org/), and [Matplotlib](https://matplotlib.org/).
4. The mesh is generated with [Gmsh](https://gmsh.info/). Gmsh is copyright (C) 1997-2020 by C. Geuzaine and J.-F. Remacle and is distributed under the terms of the GNU General Public License (GPL).
5. [FEniCS](https://fenicsproject.org/download/) which is a popular open-source (LGPLv3) computing platform for solving partial differential equations (PDEs).
6. For data analysis and visualization we use [ParaView](https://www.paraview.org/) uses a permissive BSD license.
7. Particularly, the implementation of the RFA simulation is based on the code of Sheldon Hall under GNU General Public License v3.0 available in this [link](https://github.com/sheldonkhall/MITA-model).

