Describe -Name Math -Fixture {
    It -Name '2+2 is 4' -Test {
        2+2 | Should -Be 4
    }
}