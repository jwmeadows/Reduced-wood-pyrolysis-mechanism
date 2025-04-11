! cantera-version: 3.0.0
! date: Wed, 21 Mar 2025 9:53:14 -0500
! ../transport/gri30_tran.dat.
! Hemicellulose, cellulose, and lignin are represented as the condensed solid state species. Char is referred to as C_s. 
! Hemicellulose is defined as C6H10O5 whose molecular weight is 162.1406 kg/kmol. Cellulose is defined as C12H22O11 whose molecular weight is 342.3 kg/kmol.
! Lignin is defined as C18H13N3Na2O8S2 whose molecular weight is 509.4 g/mol. Char is defined to be carbon (C (s)) with a molecular weight of 12 kg/kmol.
! THERMO is defined using NASA-7 polynomials. Specific heat capacities of Hemicellulose, Cellulose, and Lignin were initially formulated as power law functions. However, 
! a NASA-7 fit function is used to convert them to NASA-7 polynomials
! TRANSPORT properties are given by the GRI3.0 mechanism Link: [http://combustion.berkeley.edu/gri-mech/version30/text30.html#thefiles](http://combustion.berkeley.edu/gri-mech/version30/text30.html#thefiles)

ELEM
O H C N
END

SPECIES
Hemicellulose_s Cellulose_s Lignin_s C_s H2O  CH4 CO CO2  N2 H2
END

THERMO ALL
200.000   1000.000  5000.000

O2                      O   2               G200.000   3500.000  1000.000      1
 3.28253784E+00 1.48308754E-03-7.57966669E-07 2.09470555E-10-2.16717794E-14    2
-1.08845772E+03 5.45323129E+00 3.78245636E+00-2.99673416E-03 9.84730201E-06    3
-9.68129509E-09 3.24372837E-12-1.06394356E+03 3.65767573E+00                   4
H2O                     H   2O   1          G200.000   3500.000  1000.000      1
 3.03399249E+00 2.17691804E-03-1.64072518E-07-9.70419870E-11 1.68200992E-14    2
-3.00042971E+04 4.96677010E+00 4.19864056E+00-2.03643410E-03 6.52040211E-06    3
-5.48797062E-09 1.77197817E-12-3.02937267E+04-8.49032208E-01                   4
CH4                     C   1H   4          G200.000   3500.000  1000.000      1
 7.48514950E-02 1.33909467E-02-5.73285809E-06 1.22292535E-09-1.01815230E-13    2
-9.46834459E+03 1.84373180E+01 5.14987613E+00-1.36709788E-02 4.91800599E-05    3
-4.84743026E-08 1.66693956E-11-1.02466476E+04-4.64130376E+00                   4
CO                      C   1O   1          G200.000   3500.000  1000.000      1
 2.71518561E+00 2.06252743E-03-9.98825771E-07 2.30053008E-10-2.03647716E-14    2
-1.41518724E+04 7.81868772E+00 3.57953347E+00-6.10353680E-04 1.01681433E-06    3
 9.07005884E-10-9.04424499E-13-1.43440860E+04 3.50840928E+00                   4
CO2                     C   1O   2          G200.000   3500.000  1000.000      1
 3.85746029E+00 4.41437026E-03-2.21481404E-06 5.23490188E-10-4.72084164E-14    2
-4.87591660E+04 2.27163806E+00 2.35677352E+00 8.98459677E-03-7.12356269E-06    3
 2.45919022E-09-1.43699548E-13-4.83719697E+04 9.90105222E+00                   4
N2                      N   2               G300.000   5000.000  1000.000      1
 2.92664000E+00 1.48797680E-03-5.68476000E-07 1.00970380E-10-6.75335100E-15    2
-9.22797700E+02 5.98052800E+00 3.29867700E+00 1.40824040E-03-3.96322200E-06    3
 5.64151500E-09-2.44485400E-12-1.02089990E+03 3.95037200E+00                   4
Hemicellulose_s                             G300.0   1500.0  1000.0            1
-4.357648E+01  3.996665E-01 -7.576559E-04  6.747968E-07 -2.262855E-10          2
 6.948859527174684E+02 1.5728746506585986E+02                                  3
Cellulose_s                             G300.0   1500.0  1000.0                1
-9.994715E+01  0.877731E-01 -1.6567E-03  1.473232E-07 -4.9360398E-10           2
 2.7436085157678726E+03 3.6936936323473884E+02                                 3
Lignin_s                             G300.0   1500.0  1000.0                   1
-1.622867E+01  1.3566 -2.5445E-03  2.25787E-06 -7.5558E-10           	       2
 6.14838E+02 6.462704E+03                                 		       3
C_s                                  G300.0   1500.0  1000.0                   1
1.08591E+00 3.17519E+01 0.000E+00 0.000E+00 0.000E+00                          2
-1.4116E+06 -9.4730172E+03                                                     3 
END

REACTIONS CAL/MOLE MOLE
! Hemicellulose pyrolysis. Stoichiometric coefficients for products are not included. The mass flow rates of products are computed through volatile fractions.
Hemicellulose_s => CH4 + CO2 + CO + C_s 1.95E+07 0.00E+00 2.4378585E+04
! Cellulose pyrolysis. Stoichiometric coefficients for products are not included. The mass flow rates of products are computed through volatile fractions.
Cellulose_s => CH4 + CO2 + CO + C_s 1.15E+14 0.00E+00 4.6295411E+04
! Lignin pyrolysis. Stoichiometric coefficients for products are not included. The mass flow rates of products are computed through volatile fractions.
Lignin_s => CH4 + CO2 + CO + C_s 1.1E+03 0.00E+00 1.869742E+04

! Gas phase reactions
CH4 + O2 => CO + H2 + H2O 4.8801E+12 0.4452 2.3849E+04
CO + H2O => CO2 + H2 2.3037E+11 -1.0206 2.3901E+03
CO2 + H2 => CO + H2O 1.4286E+12 0.2851 1.7072E+05
O2 + 2H2 => 2H2O 1.000E+09 2.5903 1.1360E+02
END
