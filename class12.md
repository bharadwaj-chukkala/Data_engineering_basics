What is Kafka?
- Kafka is a distributed streaming platform that is used for building real-time data pipelines and streaming apps. It is horizontally scalable, fault-tolerant, and runs on commodity hardware. It is designed to be able to handle trillions of events per day.

What are the core capabilities of Kafka?
- High Throughput: Kafka is designed to be able to handle trillions of events per day.
- Fault Tolerance: Kafka is designed to be fault-tolerant, so it can handle failures in the system without losing data.
- Horizontal Scalability: Kafka is designed to be horizontally scalable, so it can handle large amounts of data without losing performance.
- High Availability: Kafka can stretch across multiple data centers over availability zones or connect separate clusters across geographic centers, so it can handle failures in the system without losing data.
- Permanent Storage: Stores streams of data in a distributed, fault-tolerant, and durable cluster of servers.

Main concepts of Kafka
- An events is a record of something that has happened in the system (a world, business, or application).
- Clients that publish events to Kafka are called producers.
- Clients that subscribe to events from Kafka are called consumers.
- In Kafka, producers and consumers are decoupled and agnostic of each other. Producers do not know which consumers will read their events, and consumers do not know which producers will write their events. Producer never need to wait for a customer.

What is a Topic in Kafka?
- A topic is a category or feed name to which records are published. Topics in Kafka are always multi-subscriber and multi-producer.


Anatomy of a Kafka Topic:
- A topic is split into a number of partitions, which are distributed across the servers in the Kafka cluster.