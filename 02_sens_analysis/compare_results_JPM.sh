
# IR-bSSFP

bart join 10 irbssfp/sens_R1 irbssfp/sens_R2 irbssfp/sens_B1 irbssfp/sens
bart join 10 irbssfp/grad_R1 irbssfp/grad_R2 irbssfp/grad_B1 irbssfp/grad

# NRMSE between difference quotient results

# Up to this TOL the NRMSE the results are assumed to be successfully reproduced
TOL_GRAD=0.005 # Larger than DSA error, because of numerical noise

ERROR_GRAD=$(bart nrmse irbssfp/grad irbssfp/ref/grad)

echo "Difference quotient error is: ${ERROR_GRAD}."

if (( $(echo "$ERROR_GRAD > $TOL_GRAD" |bc -l) ));
then
    echo "Reproduction was NOT SUCCESSFUL."
else
    echo -e "Reproduction was SUCCESSFUL.\n\n"
fi


# NRMSE between direct sensitivity analysis results

TOL_SENS=0.0001

ERROR_SENS=$(bart nrmse irbssfp/sens irbssfp/ref/sens)

echo "Direct Sensitivity Analysis error is: ${ERROR_SENS}."

if (( $(echo "$ERROR_SENS > $TOL_SENS" |bc -l) ));
then
    echo "Reproduction was NOT SUCCESSFUL."
else
    echo "Reproduction was SUCCESSFUL.\n\n"
fi

# Unprepped IR-bSSFP

bart join 10 irbssfp_unprep/sens_R1 irbssfp_unprep/sens_R2 irbssfp_unprep/sens_B1 irbssfp_unprep/sens
bart join 10 irbssfp_unprep/grad_R1 irbssfp_unprep/grad_R2 irbssfp_unprep/grad_B1 irbssfp_unprep/grad

# NRMSE between difference quotient results

# Up to this TOL the NRMSE the results are assumed to be successfully reproduced
TOL_GRAD=0.005 # Larger than DSA error, because of numerical noise

ERROR_GRAD=$(bart nrmse irbssfp_unprep/grad irbssfp_unprep/ref/grad)

echo "Difference quotient (unprepped) error is: ${ERROR_GRAD}."

if (( $(echo "$ERROR_GRAD > $TOL_GRAD" |bc -l) ));
then
    echo "Reproduction was NOT SUCCESSFUL."
else
    echo -e "Reproduction was SUCCESSFUL.\n\n"
fi


# NRMSE between direct sensitivity analysis results

TOL_SENS=0.0001

ERROR_SENS=$(bart nrmse irbssfp_unprep/sens irbssfp_unprep/ref/sens)

echo "Direct Sensitivity Analysis (unprepped) error is: ${ERROR_SENS}."

if (( $(echo "$ERROR_SENS > $TOL_SENS" |bc -l) ));
then
    echo "Reproduction was NOT SUCCESSFUL."
else
    echo "Reproduction was SUCCESSFUL."
fi