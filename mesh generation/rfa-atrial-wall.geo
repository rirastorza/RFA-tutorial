// Gmsh project for RFA FEniCS tutorial
// author: 
// date: 2020-03-11

//Parameters of the geometry
elem = 0.0005; // electrode mesh
tissm = 0.001; // tissue mesh
Ytiss = 0.04; // height of tissue domain
Xtiss = 0.04; // width of tissue domain
re = 1.15e-3; // electrode radius (7Fr)
Lele = 3.5e-3; // length of the electrode
insertion = 0.5e-3;// insertion of the electrode within the tissue
Thickatwall = 1.5e-3;// thickness of atrial wall

//Definitions of electrode (metal) points
Point(1) = {0, 0, 0, elem};
Point(2) = {0, -re, 0, elem};
Point(3) = {Sqrt(re^2-(-re+insertion)^2), -re+insertion, 0, elem};
Point(4) = {re, 0, 0, elem};
Point(5) = {re, Lele-re, 0, elem};
Point(6) = {0, Lele-re, 0, elem};

//Definitions of tissues points
Point(7) = {0,Ytiss/2,0,tissm};
Point(8) = {Xtiss/2,Ytiss/2,0,tissm};
Point(9) = {Xtiss/2,-Ytiss/2,0,tissm};
Point(10) = {0,-Ytiss/2,0,tissm};

//Definitions of atrial wall points
Point(11) = {Xtiss/2,-re+insertion,0,elem};
Point(12) = {Xtiss/2,-re-(Thickatwall-insertion),0,elem};
Point(13) = {0,-re-(Thickatwall-insertion),0,elem};

//Definitions of electrode (plastic) points
Point(14) = {re, Ytiss/2, 0, tissm};

//Lines
Circle(1) = {2, 1, 3};
Circle(2) = {3, 1, 4};
Line(3) = {4, 5};
Line(4) = {5, 6};
Line(5) = {6, 1};
Line(6) = {1, 2};
Line(7) = {3, 11};
Line(8) = {11, 12};
Line(9) = {12, 13};
Line(10) = {13, 2};
Line(11) = {12, 9};
Line(12) = {9, 10};
Line(13) = {10, 13};
Line(14) = {6, 7};
Line(15) = {7, 14};
Line(16) = {14, 5};
Line(17) = {14, 8};
Line(18) = {8, 11};

//Atrial wall
Line Loop(1) = {9, 10, 1, 7, 8};
Plane Surface(1) = {1};
//Connective tissue
Line Loop(2) = {13, -9, 11, 12};
Plane Surface(2) = {2};
//Plastic of the electrode
Line Loop(3) = {16, 4, 14, 15};
Plane Surface(3) = {3};
//Blood
Line Loop(4) = {7, -18, -17, 16, -3, -2};
Plane Surface(4) = {4};


Physical Surface(1) = {1}; // Atrial wall
Physical Surface(2) = {2}; // Connective tissue
Physical Surface(3) = {3}; // Plastic
Physical Surface(4) = {4}; // Blood

Physical Line(1) = {10,13,14}; // line of cylindrical symmetry
Physical Line(2) = {1,2,4}; // active electrode (metal)
Physical Line(3) = {11,12}; // passive electrode, U = 0 V and 37 deg
Physical Line(4) = {8,17,18}; // I = 0 A and 37 deg
Physical Line(5) = {3}; // perfusion constant temperature 40 deg
Physical Line(6) = {16}; // convective heat loss (plastic)
Physical Line(7) = {7}; // convective heat loss (tissue)

Delete {
  Line{5};
}
Delete {
  Line{6};
}
Delete {
  Point{1};
}
