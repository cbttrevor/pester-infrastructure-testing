Describe 'AWS Cloud Infrastructure' {
    It 'Should have fewer than ten EC2 instances' {
        $EC2InstanceList = @()
        $RegionList = (Get-AWSRegion).Region -notmatch 'af-south-1|ap-east-1|eu-south-1|me-south-1|us-iso-east-1|us-isob-east-1'
        foreach ($Region in $RegionList) {
            try {
                Write-Host -Object $Region
                $EC2InstanceList += Get-EC2Instance -Region $Region
            }
            catch {
                Write-Host ('Region {0} failed' -f $Region)
            }
        }
        $EC2InstanceList.Count | Should -BeLessThan 10
    }
}