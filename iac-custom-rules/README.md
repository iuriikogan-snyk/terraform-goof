# Snyk IaC Custom Rules Demo

This repository demonstrates how to use **Snyk IAC Custom Rules** to enforce a rule requiring an `Owner` tag on any s3 buckets defined in terraform. This ensures that every bucket in your infrastructure is traceable to an accountable team or individual, promoting better governance and cost management. It's a simple example that displays how custom rules can be applied to domain or business specific requirements.

## Prerequisites

Before using this demo, ensure you have met the following prerequisites:

1. Install the Snyk CLI [Snyk CLI](https://docs.snyk.io/snyk-cli/install-the-snyk-cli)
2. Install Terraform [Terraform](https://developer.hashicorp.com/terraform/install?product_intent=terraform)
3. Install the Snyk IAC Custom Rules SDK [Snyk IAC custom rules SDK](https://docs.snyk.io/scan-with-snyk/snyk-iac/build-your-own-iac-custom-rules/current-iac-custom-rules/install-the-sdk)
4. Have credentials to access to an OCI registry (e.g. dockerhub username and password)

## Rule Overview

The rule enforces the following policy:

- **Requirement**: All resources must include an `Owner` tag.
- **Target**: s3 buckets defined in terraform.

## Usage Instructions

### 1. Clone the Repository

```bash
git clone https://github.com/iuriikogan-snyk/terraform-goof.git
```

### 2. Update the Terraform vars

```bash
mv example.secrets.auto.tfvars secrets.auto.tfvars
vi secrets.auto.tfvars
```

### 3. Create a Rule template for the OWNER_TAG rule via the SDK

```bash
snyk-iac-rules template --rule OWNER_TAG --format hcl2
```

### 4. Edit the Template to target s3 buckets



### 5. Edit the /rules/(RULENAME)/fixtures files

TODO

## Resources

- [Snyk IaC Custom Rules SDK Documentation](https://docs.snyk.io/scan-with-snyk/snyk-iac/build-your-own-iac-custom-rules/current-iac-custom-rules/writing-rules-using-the-sdk/writing-a-rule)
- [REGO Playground](https://play.openpolicyagent.org/)
- [Examples of IAC Custom Rules](https://docs.snyk.io/scan-with-snyk/snyk-iac/build-your-own-iac-custom-rules/current-iac-custom-rules/writing-rules-using-the-sdk/examples-of-iac-custom-rules)