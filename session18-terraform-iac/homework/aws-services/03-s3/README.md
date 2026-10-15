# 03. S3 - Storage

## What is S3?
Amazon Simple Storage Service (Amazon S3) is an object storage service that offers industry-leading scalability, data availability, security, and performance.

## Buckets
A bucket is a container for objects stored in Amazon S3. Every object is contained in a bucket. Bucket names must be globally unique across all AWS accounts.

## Objects
Objects are the fundamental entities stored in Amazon S3. An object consists of object data and metadata (like name, size, date, etc.).

## Storage Classes
Amazon S3 offers a range of storage classes designed for different use cases:
- S3 Standard (frequently accessed data)
- S3 Intelligent-Tiering (data with unknown or changing access patterns)
- S3 Standard-IA (Infrequent Access)
- S3 One Zone-IA
- S3 Glacier (Archive)
- S3 Glacier Deep Archive (Long-term archive)

## Versioning
Versioning allows you to keep multiple variants of an object in the same bucket. You can use versioning to preserve, retrieve, and restore every version of every object stored in your bucket.

## Lifecycle Policies
Lifecycle policies allow you to automate moving objects between different storage classes or deleting them after a certain period, helping manage costs efficiently.

## Encryption
S3 supports data encryption both in transit (using SSL/TLS) and at rest (using Server-Side Encryption (SSE) with S3-managed keys, AWS KMS keys, or customer-provided keys).

## Bucket Policies
Bucket policies are resource-based IAM policies that you attach to an S3 bucket to grant access permissions to the bucket and the objects in it.

## Common Use Cases
- Backup and restore.
- Hosting static websites.
- Data lakes and big data analytics.
- Archiving.
- Application data storage (images, videos, documents).
