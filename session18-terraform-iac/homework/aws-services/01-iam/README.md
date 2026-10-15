# 01. IAM - Governance

## What is IAM?
AWS Identity and Access Management (IAM) is a web service that helps you securely control access to AWS resources. You use IAM to control who is authenticated (signed in) and authorized (has permissions) to use resources.

## Users
An IAM user is an entity that you create in AWS to represent the person or application that uses it to interact with AWS. A user in AWS consists of a name and credentials.

## Groups
An IAM group is a collection of IAM users. Groups let you specify permissions for multiple users, which can make it easier to manage the permissions for those users.

## Roles
An IAM role is an IAM identity that you can create in your account that has specific permissions. An IAM role is similar to an IAM user, in that it is an AWS identity with permission policies that determine what the identity can and cannot do in AWS. However, instead of being uniquely associated with one person, a role is intended to be assumable by anyone who needs it.

## Policies
A policy is an object in AWS that, when associated with an identity or resource, defines their permissions. AWS evaluates these policies when an IAM principal (user or role) makes a request.

## Permissions
Permissions determine whether a request is allowed or denied. By default, all requests are denied. You must explicitly grant permissions using policies.

## Least Privilege
The principle of least privilege is granting only the permissions required to perform a task. You determine what users need to do and then craft policies that let them perform only those tasks.

## IAM Best Practices
- Lock away your AWS root user access keys.
- Use roles for applications that run on Amazon EC2 instances.
- Grant least privilege.
- Enable MFA (Multi-Factor Authentication) for privileged users.
- Rotate credentials regularly.
- Use IAM Access Analyzer to generate least-privilege policies.

## Common Use Cases
- Managing users, groups, and permissions.
- Granting EC2 instances permissions to access S3 buckets using roles.
- Cross-account access between different AWS accounts.
- Enforcing MFA for critical operations.
