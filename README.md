# Work Hours

A minimal, phone-first tracker for a monthly hours quota (80 h by default).

- Log shifts with date, start, end, and Office/Home (Office is the default). Hours are calculated automatically, including overnight shifts.
- See the month's total, the hours left, and overtime at a glance.
- **Overtime tab:** overtime hours × rate (€18/h by default), plus extra payments such as software subscriptions, with a downloadable PDF bill.
- **Export tab:** a clean PDF hours sheet cut to exactly the monthly quota. Overtime is removed in small random cuts, home shifts first, then office. **Shuffle cuts** picks a different spread.

The app source is one file, `hours.html`, which is also published as a Claude artifact. `index.html` is the GitHub Pages copy. It's generated from `hours.html`, so after editing `hours.html`, rebuild it with:

```powershell
powershell -ExecutionPolicy Bypass -File build.ps1
```

## Storage

When the app is opened as a Claude artifact, data syncs through your claude.ai account. When the file is opened anywhere else, data is saved in that browser's local storage only.
