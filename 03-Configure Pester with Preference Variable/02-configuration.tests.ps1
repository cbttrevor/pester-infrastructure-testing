# Create a default configuration object
$PesterPreference = [PesterConfiguration]::Default

# Examine the root object
$PesterPreference

# Change verbosity of Pester output
$PesterPreference.Output.Verbosity = 'Detailed'

# Customize tags to execute with the Filter property
$PesterPreference.Filter

# Modify test result output
$PesterPreference.TestResult