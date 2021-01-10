## Learning Objectives

* Pester can be configured by some parameters on the `Invoke-Pester` command.
* If you want to hit `F5` to execute a Pester script in your editor, this configuration will be skipped over.
* One option is to write a separate invocation script file that simply calls `Invoke-Pester`. However, this increases complexity.
* Instead, you can use the `$PesterPreference` variable to [configure various Pester options](https://github.com/pester/Pester#pesterpreference).