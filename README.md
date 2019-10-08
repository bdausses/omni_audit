# omni_audit

## Description
This is a wrapper cookbook for the community `audit` cookbook that simply uses code in the default attributes file to attempt to determine what OS it is running against, and apply an appropriate audit profile.

## Usage
- Clone this repo.
- Adjust the `.kitchen.yml` file to match your environment/AWS account settings.
- `berks install`
- `kitchen verify`

## Assumptions
- Your instance can access the internet and pull resources.  The `berks install` function will pull dependencies from the Chef Supermarket.  The `verify` funtion of the `kitchen verify` command will pull an exa
