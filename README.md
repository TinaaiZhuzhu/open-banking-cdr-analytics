# Open Banking CDR Analytics Portfolio

## Project Overview

...

## Tech Stack

- PostgreSQL
- SQL
- Power BI

## SPRINT 1 Executive Dashboard
Dashboard Includes

✔ Consent Completion Rate

✔ Drop-off Funnel

✔ Error Reason Analysis

✔ Data Holder Comparison

✔ KPI Cards 

![Executive Dashboard](images/executive_dashboard.png)
Business Outcome

Identified major consent abandonment reasons and visualised customer journey performance to support product improvements.

## SPRINT 2 Open Bankin ADR Performance Dashboard


###📌 Project Overview

This project analyses a simulated Consumer Data Right (CDR) Open Banking consent journey from the perspective of a Data Holder (CBA).

The objective is to identify where customers drop off during the consent journey, compare Authorised Data Recipients (ADRs), and build an interactive Power BI dashboard that supports business decision-making.

---

### 🎯 Business Questions

This dashboard aims to answer the following questions:

- How many consent requests were received?
- What is the overall consent completion rate?
- What is the overall OTP success rate?
- Which ADRs have the highest and lowest consent completion rates?
- Which ADRs have the highest and lowest OTP success rates?
- Does a higher OTP success rate always lead to a higher consent completion rate?

---

### 🛠 Tech Stack

- PostgreSQL
- SQL
- Power BI
- DAX

---

### 📂 Data Preparation 

A PostgreSQL View (`vw_adr_metrics`) was created to prepare aggregated metrics for Power BI.

The View includes:

- ADR Provider
- Total Consents
- Completed Consents
- Total OTP Sent
- Successful OTPs
- Consent Completion Rate
- OTP Success Rate
- ADR Ranking

The View was intentionally designed to keep both **raw counts** and **calculated rates**, allowing Power BI to calculate overall KPIs correctly.

---

###📈 Dashboard 

#### KPI Cards

The dashboard includes three headline KPIs:

- Total Consents
- Overall Consent Completion Rate
- Overall OTP Success Rate

These KPIs provide an immediate overview of platform performance.

---

#### ADR Performance Ranking

Two bar charts compare ADR performance by:

- Consent Completion Rate
- OTP Success Rate

These visualisations help identify the highest and lowest performing ADRs.

---

#### Relationship Analysis

A scatter plot compares:

- X-axis: OTP Success Rate
- Y-axis: Consent Completion Rate

Each point represents an ADR.

This helps identify ADRs that perform differently from the overall trend.The scatter plot highlights ADRs whose consent completion rates do not align with their OTP success rates, helping identify potential issues beyond authentication.

For example, an ADR with a high OTP success rate but a low consent completion rate suggests that authentication is working correctly, while customers may be abandoning the journey during the consent process.

---

### 💡 Key Business Insights

The dashboard demonstrates that:

- Most ADRs show a positive relationship between OTP success rate and consent completion rate.
- High OTP success does not always guarantee high consent completion.
- Some ADRs appear as outliers, indicating potential usability or consent journey issues rather than authentication problems.
- Scatter plots provide stronger analytical insights than comparing two independent bar charts.

---

### 📚 Lessons Learned

During this sprint, several important technical and design lessons were identified.

#### 1. Keep raw counts in SQL

Instead of storing only calculated percentages, the SQL View also keeps:

- Total Consents
- Completed Consents
- Total OTP Sent
- Successful OTPs

This allows Power BI to calculate overall KPIs correctly.

---

#### 2. Store percentage values as decimals

Percentage values should be stored as decimal values (0–1) instead of multiplying by 100 in SQL.

Example:

❌ 81.1

✅ 0.811

Power BI can then format the values directly as percentages.

---

#### 3. Treat SQL Views as data interfaces

When modifying an existing View, avoid changing the order of existing columns.

Instead, append new columns to the end to prevent downstream reporting issues.

---

#### 4. Use DAX where appropriate

Overall KPIs were implemented using DAX Measures.

ADR-level metrics were calculated in SQL and reused directly in visualisations.

This keeps the semantic model simple and avoids unnecessary calculations.

---

#### 5. Build dashboards around business questions

Rather than creating visualisations for their own sake, each chart was designed to answer a specific business question.

This improves dashboard usability and storytelling.

---
### Dashboard Preview

<img src="images/Open Banking ADR Performance Dashboard.png" width="900">
### 🚀 Future Improvements

Planned enhancements include:

- Customer Journey Dashboard
- Drop-off Funnel Analysis
- Device & Channel Analysis
- Time-based Trend Analysis
- Interactive Filters & Drill-through
- Advanced DAX Measures


## SPRINT 3 Customer Journey Dashboard



## Key Business Insights



## Repository Structure