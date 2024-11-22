package rules

deny[msg] {
    resource := input.resource.aws_s3_bucket[name]
    not resource.tags.owner

    msg := {
        "publicId": "OWNER_TAG",
        "title": "No Owner Tag",
        "severity": "medium",
        "msg": sprintf("Missing owner tag in resource: input.resource.aws_s3_bucket[%s].tags", [name]),
        "issue": "Missing an owner from tag",
        "impact": "Medium",
        "remediation": "Please add an owner tag to bucket",
        "references": ["www.internaldocs.com/ownertagrules/"]
    }
}