# Tutorial for the book chapter: Radiofrequency Ablation

We divide the tutorial into two parts:

1. Mesh generation. The Mesh generation file is rfa-atrial-wall.geo
2. Solving the RFA problem using Finite Element Method (FEM). The file for solving the RFA problem is script.py.

### Requeriments

- Python > 2.7. The Python version can be verifyed with sentence `python3 --version` in command line. The last version can be downloaded [here](https://www.python.org/downloads/).
- [Jupyter Notebook](https://jupyter.readthedocs.io/en/latest/install.html).
- [FEniCS](https://fenicsproject.org/download/)
- [Gmsh](https://gmsh.info/)

### How to use
- Clone or download the repository.

---

## References

1. This tutorial is developed in order to provide to the reader free tools for implementing a simulation of Radiofrequency Ablation (RFA) on the atrial wall similar to that presented in Irastorza et al. (2018). It is based on the next packages and softwares:
2. The tutorial is mostly written in Python programming language.
3. SciPy is a Python-based ecosystem of open-source software for mathematics, science, and engineering. Some of the core packages are: NumPy, library Scipy, and Matplotlib.
4. The mesh is generated with Gmsh. Gmsh is copyright (C) 1997-2020 by C. Geuzaine and J.-F. Remacle and is distributed under the terms of the GNU General Public License (GPL).
5. FEniCS which is a popular open-source (LGPLv3) computing platform for solving partial differential equations (PDEs).
6. For data analysis and visualization we use ParaView uses a permissive BSD license.
7. Particularly, the implementation of the RFA simulation is based on the code of Sheldon Hall under GNU General Public License v3.0 available in this link.

