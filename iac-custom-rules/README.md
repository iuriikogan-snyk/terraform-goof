# Snyk IaC Custom Rules Demo

This repository demonstrates how to use **Snyk IAC Custom Rules** to enforce a rule requiring an `Owner` tag on any s3 buckets defined in terraform. This ensures that every bucket in your infrastructure is traceable to an accountable team or individual, promoting better governance and cost management. It's a simple example that displays how custom rules can be applied to domain or business specific requirements.

## Prerequisites

Before using this demo, ensure you have met the following prerequisites:

1. Install the Snyk CLI [Snyk CLI](https://docs.snyk.io/snyk-cli/install-the-snyk-cli)
2. Install Terraform [Terraform](https://www.terraform.io/)
3. Install the Snyk IAC Custom Rules SDK [Snyk IAC custom rules SDK](https://github.com/snyk/snyk-iac-custom-rules-sdk)
4. Have credentials to access to an OCI registry ( )

## Rule Overview

The rule enforces the following policy:

- **Requirement**: All resources must include an `Owner` tag.
- **Target**: s3 buckets defined in terraform.

### Rule Implementation

TODO

## Usage Instructions

1. **Clone the Repository**

git clone TODO

## 2. Install Dependencies

TODO

## 3. Create a Rule template via the SDK

TODO

## 4. Edit the Template to target s3 buckets

## 5. Edit the /rules/(RULENAME)/fixtures files

TODO

## Resources

- [Snyk IaC Custom Rules SDK Documentation](https://docs.snyk.io/scan-with-snyk/snyk-iac/build-your-own-iac-custom-rules/current-iac-custom-rules/writing-rules-using-the-sdk/writing-a-rule)
- [Snyk CLI Documentation](https://docs.snyk.io/snyk-cli)