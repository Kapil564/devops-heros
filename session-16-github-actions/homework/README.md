# Complete CI/CD Demo Project (GitHub Actions)

## 1. Architecture

```mermaid
flowchart TD
    A[Developer] -->|git push| B[GitHub Repository]
    B --> C[GitHub Actions]
    C --> D[TEST]
    C --> E[SECURITY]
    D --> F[BUILD]
    F --> G[ARTIFACT]
    G --> H[DEPLOY (CD)]
```

---

## 2. Jobs
The workflow contains four jobs representing a full CI/CD pipeline:
1. `test` (CI)
2. `build` (CI)
3. `security-check` (CI)
4. `deploy` (CD)

---

## 3. Test Job
The test job:
**Checkout** → **Setup Python** → **Install dependencies** → **Run pytest**

---

## 4. Build Job
The build job runs **only** after tests pass.
```yaml
needs: test
```

**Flow:**
Test → PASS → Build → Artifact

---

## 5. Security Check
The security job checks for common sensitive files:
* `.env`
* `*.pem`
* `*.key`

---

## 6. Deploy Job (CD)
The deploy job runs only after build and security checks are successful and only on the `main` branch.
```yaml
needs: [build, security-check]
if: github.ref == 'refs/heads/main' && github.event_name == 'push'
```

---

## 7. Application & Dockerfile
The repository contains a simple Python calculator application. A `Dockerfile` is included to containerize the application for the deployment stage.

**Build Docker Image locally:**
```bash
docker build -t calculator-app .
```

**Run Docker Container:**
```bash
docker run -it calculator-app
```

---

## 8. Run Locally

**Install dependencies:**
```bash
python3 -m pip install -r requirements.txt
```

**Run application:**
```bash
python3 app/calculator.py
```

**Run tests:**
```bash
pytest -v
```

---

## 9. Expected Pipeline Execution
GitHub Actions should show a successful pipeline.

![Pipeline Success Screenshot](path/to/screenshot.png)

```text
Final CI/CD Pipeline
│
├── ✓ Test Application
│
├── ✓ Security Check
│
├── ✓ Build Application
│
└── ✓ CD - Deploy to Production
```

---

## 10. Complete Concept Map

```text
CI/CD
│
├── CI
│   ├── Test
│   ├── Security Check
│   └── Build
│
├── CD
│   └── Deploy to Production
│
└── GitHub Actions
    │
    ├── Workflow
    ├── Jobs
    ├── Steps
    ├── Runner
    ├── Secrets
    └── Artifacts
```
