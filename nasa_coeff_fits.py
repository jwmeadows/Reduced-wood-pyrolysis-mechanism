# -*- coding: utf-8 -*-
"""
Created on Fri Mar 21 15:23:51 2025

@author: shrikar
"""

'''This code creates an approximate NASA polynomial fit given a .csv file that has specific heats in J/mole K format. See the file "Hemicellulose_cp.csv" for reference file format'''

import pandas as pd

# Load the uploaded CSV file
file_path = "C:/Users/shrikar/OneDrive - Virginia Tech/Research/DOE_Ansys/Paper 2/Lignin_cp.csv"
df = pd.read_csv(file_path)

# Display the contents of the file
df.head()

import numpy as np
from scipy.optimize import curve_fit

# Rename columns for convenience
df.columns = ['T', 'Cp']

# Define the NASA 7-coefficient Cp polynomial form (Cp/R)
R = 8.3144621  # J/mol-K
Cp_R = df['Cp'] / R  # Convert Cp to dimensionless Cp/R

# Define the Cp/R polynomial: a1 + a2*T + a3*T^2 + a4*T^3 + a5*T^4
def nasa_cp_form(T, a1, a2, a3, a4, a5):
    return a1 + a2*T + a3*T**2 + a4*T**3 + a5*T**4

# Fit the data
popt, _ = curve_fit(nasa_cp_form, df['T'], Cp_R)

# Generate fitted coefficients
a1, a2, a3, a4, a5 = popt

# Estimate a6 and a7 for H/RT and S/R equations (set to 0 for now if unknown)
a6 = 2743.6085157678726  # Typically fitted from enthalpy data. Change these according to your fits. Enthalpy 
a7 = 369.36936323473884  # Typically fitted from entropy data

# Prepare NASA 7-coefficient array for one temperature range (e.g., 300–1500 K)
nasa_coeffs = [a1, a2, a3, a4, a5, a6, a7]

nasa_coeffs
