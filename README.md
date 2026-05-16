# 🍔 Swiggy SQL Data Analysis Project

A comprehensive SQL-based data analysis project exploring Swiggy's delivery, user behavior, restaurant performance, and order trends to derive actionable business insights.

## 📋 Table of Contents

- [Project Overview](#project-overview)
- [Objectives](#objectives)
- [Dataset](#dataset)
- [Database Schema](#database-schema)
- [Key Features](#key-features)
- [SQL Queries](#sql-queries)
- [Analysis & Insights](#analysis--insights)
- [Getting Started](#getting-started)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Project Structure](#project-structure)
- [Key Findings](#key-findings)
- [Technologies Used](#technologies-used)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

## Project Overview

This project leverages SQL to analyze Swiggy's operational data across multiple dimensions:
- **User Behavior**: Patterns, preferences, and engagement metrics
- **Restaurant Performance**: Ratings, order frequency, and popularity
- **Delivery Analytics**: Delivery times, distances, and success rates
- **Order Trends**: Peak hours, popular cuisines, and seasonal patterns
- **Business Insights**: Revenue drivers, customer retention, and growth opportunities

## Objectives

✅ Analyze customer ordering patterns and preferences  
✅ Evaluate restaurant performance and customer satisfaction  
✅ Identify delivery efficiency metrics and optimization opportunities  
✅ Discover trends in cuisine popularity and seasonal demand  
✅ Generate actionable business intelligence for stakeholders  
✅ Optimize pricing and promotional strategies  

## Dataset

The project utilizes a relational database containing:

| Table | Description |
|-------|-------------|
| **users** | Customer information, registration dates, preferences |
| **restaurants** | Restaurant details, cuisine types, ratings, location |
| **orders** | Order information, timestamps, status, total amount |
| **order_items** | Individual items in orders, quantities, prices |
| **deliveries** | Delivery personnel, delivery times, distances, ratings |
| **reviews** | Customer reviews and ratings for restaurants |

*Note: This is a sample schema. Adjust based on your actual data.*

## Database Schema

### Users Table
```sql
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15),
    registration_date DATE,
    city VARCHAR(50),
    total_orders INT
);
