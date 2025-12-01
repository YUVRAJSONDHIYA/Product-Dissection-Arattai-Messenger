📱 Arattai Messenger – Database Schema & ER Diagram

A complete relational database design for Arattai Messenger, showcasing how a modern messaging platform manages users, chats, messages, groups, calls, media, and system interactions.

📝 Project Overview

This project presents a fully normalized PostgreSQL database schema and Entity-Relationship Diagram (ERD) for Arattai Messenger.
It demonstrates how messaging apps handle real-time communication, multimedia sharing, group interactions, and device synchronization.

The project includes:

Database Schema Design

ER Diagram

Entity Descriptions

Relationships & Data Flow

PostgreSQL Table Creation Scripts

Case Study Insights

🧩 Key Features

Relational Database Schema covering Users, Chats, Messages, Groups, Group Members, Calls, and Media.

Comprehensive ER Diagram illustrating entity relationships and foreign key mappings.

Strong Referential Integrity through Primary Keys, Foreign Keys, and constraints.

ENUM-based classification for message types, media types, call types, and chat types.

Normalized Structure (1NF–3NF) ensuring scalable and efficient data storage.

Modeled real-world communication flows such as 1:1 chat, group chat, voice/video calls, and media sharing.

🏗️ Tech Stack

PostgreSQL

SQL

Draw.io / dbdiagram.io / PgAdmin ERD Tools

Relational Database Design

Normalization Principles

🗂️ Database Entities

The schema includes the following core entities:

Users – Stores profile and personal information

Chats – Handles individual & group conversations

Messages – Stores text/media messages

Groups – Defines group-level attributes

GroupMembers – Connects users to groups

Calls – Tracks voice/video calls

Media – Stores URLs and metadata of shared media

🔗 Relationships

A User can participate in multiple chats

A Chat contains multiple messages

A User sends multiple messages

A Group contains multiple users via GroupMembers

A User can make & receive multiple calls

A Message can contain multiple media files

🗄️ SQL Schema (PostgreSQL)

This project includes complete SQL scripts for:

Table creation

Primary & foreign key constraints

ENUM definitions

Timestamps & defaults

Relationship mapping

📊 ER Diagram

The ER Diagram visually represents:

Entities

Attributes

Cardinality

Foreign key constraints

Messaging flow between system components


📚 Case Study Summary

This project also includes a product dissection of Arattai Messenger, covering:

Real-world communication problems

How Arattai solves privacy, accessibility, and synchronization issues

Core product features like chat management, multi-device support, and media sharing

Insights into user behavior and system design

Overall architecture understanding

These insights strengthen both technical and product-thinking skills.

🚀 How to Use

Clone the repository

Import the SQL file into PostgreSQL

View ERD diagrams from the /diagrams folder

Modify or extend the schema as needed for learning or projects

📌 Learning Outcomes

Designing scalable relational databases

Understanding messaging platform architecture

Mastering ER modeling & normalization

Implementing PK/FK constraints & ENUM types

Translating real-world workflows into database systems
