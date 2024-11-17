package rules

deny[msg] {
    resource := input.resource.aws_redshift_cluster[name]
    not resource.tags.owner
	
    msg := {
        "publicId": "OWNER_TAG",
        "title": "Missing an owner from tag",
        "severity": "medium",
        "msg": sprintf("input.resource.aws_s3_bucket.[%s].tags", [name]),
        "issue": "",
        "impact": "",
        "remediation": "please add a tag to bucket: " + sprintf("input.resource.aws_s3_bucket.[%s].tags", [name]") 
        "references": [],
    }
}