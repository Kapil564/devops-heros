# 05. DynamoDB & RDS - Database Services

## DynamoDB

### What is DynamoDB?
Amazon DynamoDB is a fully managed, serverless, key-value NoSQL database designed to run high-performance applications at any scale.

### NoSQL
NoSQL databases are built for specific data models and have flexible schemas for building modern applications. They are widely recognized for their ease of development, functionality, and performance at scale.

### Tables
Similar to other database systems, DynamoDB stores data in tables. A table is a collection of items.

### Items
An item is a group of attributes that is uniquely identifiable among all of the other items. It is similar to a row, record, or tuple in a relational database system.

### Attributes
An attribute is a fundamental data element, something that does not need to be broken down any further. It is similar to a column or field.

### Partition Key
A simple primary key, composed of one attribute known as the partition key. DynamoDB uses the partition key's value as input to an internal hash function. The output from the hash function determines the partition (physical storage internal to DynamoDB) where the item will be stored.

### Sort Key
A composite primary key is composed of two attributes: a partition key and a sort key. Items with the same partition key are stored together in sorted order by sort key value.

### Use Cases
- Ad tech (user profiles, events).
- Gaming (player data, session history).
- E-commerce (shopping carts, catalogs).

---

## RDS

### What is RDS?
Amazon Relational Database Service (Amazon RDS) makes it easy to set up, operate, and scale a relational database in the cloud. It provides cost-efficient and resizable capacity while automating time-consuming administration tasks such as hardware provisioning, database setup, patching, and backups.

### Relational Database
A type of database that stores and provides access to data points that are related to one another. Relational databases are based on the relational model, an intuitive, straightforward way of representing data in tables.

### Supported Engines
Amazon RDS is available on several database instance types and supports multiple engines:
- Amazon Aurora
- PostgreSQL
- MySQL
- MariaDB
- Oracle Database
- SQL Server

### DB Instances
A DB instance is an isolated database environment in the cloud. It is the basic building block of Amazon RDS.

### Security
RDS allows you to encrypt databases using keys managed through AWS KMS. Network access is controlled using VPC security groups.

### Backups
RDS provides automated backups (retention up to 35 days) and manual DB snapshots (user-initiated and kept until explicitly deleted).

### Multi-AZ
A Multi-AZ DB instance deployment provides enhanced availability and durability by automatically provisioning and maintaining a synchronous standby replica in a different Availability Zone.

### Read Replicas
Read replicas allow you to scale out beyond the capacity of a single DB instance for read-heavy database workloads.

### Use Cases
- Traditional enterprise applications (ERP, CRM).
- Web and mobile applications needing structured, relational data.
- E-commerce applications.
