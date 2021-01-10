## Learning Objectives

Let's learn about how to install Pester and how Pester tests are structured.
You can install Pester using the `Install-Module` command, which is built into PowerShell's `PowerShellGet` module.

The Pester documentation provides some examples of how to author tests.

## Group Pester Tests

There are a couple options to group Pester tests: `Describe` blocks and `Context` blocks.
For example, you can create separate contexts for ping tests, DNS tests, and service endpoint tests.

## Executing Pester Tests

`Invoke-Pester` is the main entrypoint into the Pester test framework.
There are two phases to Pester: Discovery and Run (aka. execution).
Tests are discovered by file names with the `*.tests.ps1` suffix.