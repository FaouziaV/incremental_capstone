# VitalWatch – Sprint 1 (Database)

## Case Study Overview

**VitalWatch** is a console-based Real-Time Remote Patient Vital Monitoring System for CarePulse Health Network. It supports remote monitoring of post-surgical and chronic-condition patients at home using wearable heart-rate and pulse-oximetry devices.

Currently, readings are uploaded in batches every 15 minutes. VitalWatch is intended to support faster early-warning scoring, a live patient risk view, device-disconnect detection, and queryable vital history.

## Sprint 1 – Database

Sprint 1 focuses on designing and creating the relational database for VitalWatch, including tables, keys, relationships, constraints, indexes, and sample data.

### Database

- **Database name:** `VitalWatchDB`
- **Database:** SQL Server (as configured for the training track)

## Entities / Tables

The database includes these six tables:

| Table | Purpose |
|---|---|
| `Patient` | Stores patient details, ward association, and monitoring status |
| `Ward` | Stores ward identifiers and ward names |
| `Device` | Stores devices assigned to patients and device status |
| `VitalReading` | Stores vital readings from devices, with timestamps |
| `Alert` | Stores patient alerts, severity, status, and acknowledgement details |
| `CareTeamAssignment` | Stores patient-to-nurse assignments and assignment dates |

## Relationships

- A **Patient** can have multiple **Devices**; each device belongs to one patient.
- A **Device** can have multiple **VitalReading** records; each reading belongs to one device.
- A **Patient** can have multiple **Alerts**; each alert belongs to one patient.
- A **Patient** can have multiple **CareTeamAssignment** records; each assignment belongs to one patient.

## Schema Requirements

- Primary keys for all six tables.
- Foreign keys to maintain relationships between tables.
- Auto-generated primary keys.
- Required defaults:
  - `Patient.Status` defaults to `Monitored`.
  - `Device.Status` defaults to `Active`.
  - `Alert.Status` defaults to `Open`.
- `VitalReading.ReadingValue` uses a decimal type with precision and scale of `DECIMAL(6,2)`.
- `VitalReading.RecordedAt` stores date/time with microsecond precision where supported.
- An index on `VitalReading(DeviceID, RecordedAt)` to support time-based vital-reading lookups.
- Appropriate text lengths and data types for each column.

## Sample Data Requirements

The case study requires:

- At least **10 sample rows in each table**.
- At least **200 rows in the highest-volume table** (`VitalReading`).
- Sample records must respect all foreign-key relationships.

## Suggested Project Files

```text
Sprint-1/
└── README.md
    └── database script (SQL file)
```

Add your SQL script to this folder alongside this README. Rename the SQL file or update this section to match your actual file name.

## How to Run

1. Open the Sprint 1 SQL script in your database tool (MySQL Workbench or SQL Server Management Studio, depending on your track).
2. Execute the script to create the `VitalWatchDB` database and tables.
3. Run the inserts to populate the sample data.
4. Verify the records and relationships by querying each table.
5. Confirm that `VitalReading` contains at least 200 rows and that the index exists.

## Learning Outcomes

Sprint 1 demonstrates:

- Relational database schema design and normalization.
- Primary keys, foreign keys, and constraints.
- Data types and defaults.
- Indexing for frequent queries.
- Maintaining referential integrity across related tables.

---

**Project:** VitalWatch – Real-Time Remote Patient Vital Monitoring System  
**Sprint:** 1 – Database
