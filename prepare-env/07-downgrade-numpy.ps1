# in cause of: A module that was compiled using NumPy 1.x cannot be run in NumPy 2.0.0 as it may crash.
echo "downgrading numpy"
pip uninstall numpy  
pip install "numpy<2.0" 