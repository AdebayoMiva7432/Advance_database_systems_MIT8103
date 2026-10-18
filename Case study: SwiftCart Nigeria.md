
Case Study: SwiftCart Nigeria — E-commerce Management System

1. Background and Description

SwiftCart Nigeria is a proposed e-commerce business that provides an online platform for customers to purchase products from different categories, including electronics, fashion, home appliances, and household items. The business operates in Nigeria and aims to provide customers with a convenient way to browse products, place orders, make payments, and track deliveries.

As the business grows, managing customer information, product records, inventory levels, orders, payments, and delivery details becomes increasingly complex. Maintaining these records manually or in separate, unconnected systems can lead to data duplication, inconsistent information, inaccurate stock levels, and difficulties tracking orders.

To address these challenges, SwiftCart Nigeria requires a centralized database management system built with PostgreSQL. The database will organize business information into related tables and enforce appropriate constraints to maintain data accuracy, consistency, and integrity.

2. Problem Statement

SwiftCart Nigeria needs a reliable database system to manage its e-commerce operations efficiently. Without a well-designed database, the business may experience duplicate customer records, incorrect product quantities, incomplete order information, inconsistent payment records, and delays in retrieving transaction details.

The proposed system will provide a structured way to store, update, retrieve, and manage business data. It will also support the analysis of sales transactions, product availability, customer purchasing behavior, and order fulfillment.

3. Aim and Objectives

The aim of this project is to design and implement a relational database system for SwiftCart Nigeria using PostgreSQL.

The specific objectives are to:

Design a database structure that stores customer, product, order, payment, inventory, and delivery information.

Identify the entities, attributes, relationships, primary keys, foreign keys, and other constraints required for the database.

Apply normalization principles to reduce unnecessary data duplication and improve data integrity.

Implement the database schema and use SQL queries to retrieve and analyze business information.

Examine query execution plans and apply suitable indexing and optimization techniques to improve query performance.

Demonstrate transaction processing, commit and rollback operations, and appropriate concurrency controls.

Explore how NoSQL data models and distributed or cloud database technologies could support the business as it grows.

4. Scope of the System

The proposed system will cover the following major business activities:

Customer management: Store customer identifiers, names, email addresses, and phone numbers.

Product management: Maintain product names, categories, prices, descriptions, and availability.

Inventory management: Record stock quantities and update inventory when products are sold or replenished.

Order management: Record customer orders, order dates, order statuses, and the products included in each order.

Payment management: Store payment references, amounts, payment methods, and payment statuses.

Delivery management: Track delivery addresses, shipment details, and delivery statuses.

The project will focus on database design, implementation, integrity, query processing, transaction management, advanced data models, and distributed database concepts rather than developing a complete customer-facing website.

5. Proposed Database Entities

The initial relational database design will consider the following entities:

Customers: Stores customer details, including customer ID, name, email, and phone number.

Products: Stores product information, including product ID, name, description, price, and stock-related details.

Categories: Groups products into categories for easier organization and retrieval.

Orders: Records orders placed by customers, including order ID, customer ID, order date, and status.

Order Items: Records the products and quantities associated with each order, including the price at which each product was ordered.

Payments: Records payment transactions associated with customer orders.

Deliveries: Stores delivery information, including the delivery address, dispatch details, and delivery status.

The final entities and attributes will be refined during the ER modelling and normalization stages. Primary keys, foreign keys, uniqueness rules, required fields, and appropriate value constraints will be defined to enforce data integrity.

6. Expected Benefits

The proposed database system is expected to improve the accuracy and organization of business records, reduce unnecessary duplication, support reliable order and payment tracking, and make product and sales information easier to retrieve. It will also provide a practical foundation for evaluating database performance, transaction reliability, NoSQL alternatives, and cloud or distributed database solutions.

7. Relevance to the Coursework

SwiftCart Nigeria provides a consistent and realistic scenario for all five portfolio activities in MIT8103 Advanced Database Systems. The project will begin with relational database design and modelling, progress to SQL query processing and optimization, demonstrate transaction and concurrency concepts, explore suitable NoSQL data models, and evaluate distributed or cloud database approaches.

The same case study will be maintained throughout the coursework so that each activity builds on the previous work and demonstrates the practical application of advanced database concepts to a business problem.
