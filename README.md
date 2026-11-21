# rayapustikatemplate

A GitHub **template repository** for creating searchable file catalogues named
`rayapustika1`, `rayapustika2`, `rayapustika3` … `rayapustikaN`.

Each catalogue is a static site (GitHub Pages) listing PDFs, images, documents,
spreadsheets and presentations with search, remarks, preview and download.

## Create a new catalogue (rayapustikaN)

1. Open this repository on GitHub and click **Use this template → Create a new repository**.
2. Set **Owner** to your account, **Repository name** to `rayapustikaN`
   (e.g. `rayapustika3`), choose **Public**, then **Create repository**.
3. Do the checklist below in the **new** repository.

## Manual changes required in every new repository

### A. Must do (otherwise the site will not publish)

1. **Enable GitHub Pages with Actions.**
   New repo → **Settings → Pages → Build and deployment → Source: GitHub Actions**.
2. **Run the first publish.**
   Repo → **Actions** tab → *Publish rayapustikaN* → **Run workflow**
   (or just commit any change to `main`). If Actions are disabled on the new
   repo, click **Enable** on the Actions tab first.
3. **Check Pages permissions.** Settings → Actions → General → Workflow
   permissions: leave defaults; the workflow already declares `pages: write`.

Your site will appear at `https://<your-username>.github.io/rayapustikaN/`.

### B. Should do (names and branding)

Replace the placeholder text `rayapustikaN` with the real repo name (e.g. `rayapustika3`) in:

| File | What to change |
| ---- | -------------- |
| `index.html` | `<meta name="description">` (line ~7), `<title>` (line ~8), and the two `<h1>rayapustikaN</h1>` headings (access screen and main header) |
| `.github/workflows/pages.yml` | `name: Publish rayapustikaN` on line 1 |
| `assets/app.js` | first-line comment (cosmetic only) |
| `README.md` | Replace this whole file with `NEW_REPO_README.md` (rename it to `README.md`, replace `rayapustikaN`), then delete `NEW_REPO_README.md` |

Tip: on GitHub use the web editor, or locally run
`grep -rl rayapustikaN . --exclude-dir=.git | xargs sed -i 's/rayapustikaN/rayapustika3/g'`.

Also set the repo's **About** box (top right of the repo page): description and
website URL `https://<your-username>.github.io/rayapustikaN/`.

### C. Security: change the access screen

`assets/access.js`, line 4:

```js
const MOBILE = '9849667879', CODE = '1234';
```

Change the mobile number and four-digit code for each new catalogue.
Clicking inside the clock on the access screen opens the catalogue without either (also browser-side only).
This is only a browser-side screen, **not real security**: the repo, the files
and the code itself are public. Do not upload confidential files.

### D. Your content

- Drop **any file type** into any folder under `Files/`: `pdf`, `images` (incl. `.heic`), `docs`, `spreadsheet`,
  `powerpoints`, `video` (short clips). New folders you create inside `Files/`, and files placed directly in
  `Files/`, are listed too.
- `files-index.js` is regenerated automatically on every push to `main` and saved back to the repository
  (size, last-updated date, path). Write `remarks`, `openText`, `downloadText` by hand; they are preserved.
  Any `http(s)://` or `www.` address inside `remarks` is shown as a link, only in the Remarks column.
- Files whose first two name sections match (sections split by `.`, `-` or `_`), e.g. `dn49.20830513.cover.pdf`
  and `dn49.20830513.raya.pdf`, share one row.
- If the template ever gets sample files or a filled `files-index.js`, delete them in the new repo.

### E. Already automatic (nothing to change)

- The **Add files** button links to the correct repository (derived from the site URL).
- The browser access-session key is unique per repo, so several catalogues do not interfere.
- The favicon (`assets/favicon.svg`) shows the repo number automatically: `rayapustika7` gives a **7**, and it shows **N** in the template itself.
- Catalogue index generation and publishing (`scripts/build-index.py`, workflow).

## Updating the template itself

Keep this repo free of real files. After improving the template, existing
`rayapustikaN` repos do **not** update automatically; copy changes manually.
Make sure **Settings → General → Template repository** stays ticked.
