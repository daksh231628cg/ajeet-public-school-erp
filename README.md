# Ajeet Public School Attendance ERP v3.3

Dependency-free Node.js school attendance and academic management system.

## Run

### Linux / macOS
```bash
node server.js
```
Open: http://localhost:3000

### Windows
Double-click `start.bat` or run `node server.js`.

No npm install, API key, database account, or AI builder tokens are required. Data is stored locally in `school-data.json` and can be backed up.

## Demo logins
- Admin: `admin@school.local` / `admin123`
- Teacher: `teacher@school.local` / `teacher123`
- Student: `STU001` / `student123`
- Parent: `parent@school.local` / `parent123`

## v3.0 academic access controls
- Admin-only Academic Sessions: create, edit, and set current session.
- Teacher assignments are controlled by **Session + Class + Section + Subject**.
- Teacher access is enforced on the backend, not only hidden in the UI.
- Attendance is session-wise.
- Assessments are session-wise.
- Assessment entry permissions are configurable by Admin.
- Default permissions:
  - Unit Test: Teacher
  - Class Test: Teacher + Admin
  - Half Yearly: Admin
  - Pre-Board: Admin
  - Board Exam: Admin, External
- Board Exam is marked external and is excluded from internal report-card calculations.
- For Classes 10 and 12, internal report cards can therefore run through Pre-Board without treating CBSE Board Exam as a school assessment.
- Existing v2.x data is migrated on load: missing session IDs are attached to the current session and old `Test`/`Exam` labels are mapped to `Unit Test`/`Half Yearly`.

## Notes
The app is designed for local school/LAN use. For internet-facing production deployment, add HTTPS, a real database, secure password/session management, backups, and stronger request protections.


## Windows 10/11

- Extract the ZIP completely.
- Double-click `start.bat`.
- If Node.js is not installed, the launcher downloads the official Node.js v24.21.0 Windows x64 portable runtime automatically (first run only).
- Then it starts the ERP at `http://localhost:3000`.
- No `npm install` is required.
