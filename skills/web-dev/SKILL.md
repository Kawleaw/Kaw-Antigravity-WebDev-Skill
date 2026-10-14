---
name: web-dev
description: >-
  คลังรวม 67 Specialized Skills & Workflows สำหรับงาน Full-Stack Web Development, API Architecture,
  Database, DevOps, Testing, Security (จาก jeffallan/claude-skills).
  Use when building web applications, backend APIs, frontend UI, database schemas, full-stack architectures,
  writing tests, or running development workflows. Covers Next.js, React, Vue, FastAPI, NestJS, Django,
  PostgreSQL, SQL, Docker, Kubernetes, Testing, and Security.
---

# Web Development Specialist Hub (67 Skills)

สกิลนี้เป็น **Orchestrator Hub** รวม 67 ทักษะเฉพาะทางระดับ Senior สำหรับงาน Full-Stack Web Development, Architecture, Testing, Security, และ DevOps โดยอ้างอิงจากมาตรฐาน [jeffallan/claude-skills](https://github.com/jeffallan/claude-skills)

เมื่อผู้ใช้เรียก `/web-dev` หรือมีคำขอเกี่ยวข้องกับการพัฒนาเว็บ ให้ทำตามขั้นตอนการโหลดและใช้งานดังนี้:

---

## 🚀 ขั้นตอนการทำงาน (How to Execute)

1. **ระบุขอบเขตงาน** จากคำขอของผู้ใช้ (ภาษา, เฟรมเวิร์ก, ฐานข้อมูล, หรือประเภทงาน)
2. **ค้นหา Sub-Skill ที่ตรงกับงาน** จากตาราง Decision Tree ด้านล่าง
3. **เปิดอ่านคู่มือเชิงลึกของ Sub-Skill** ผ่าน `view_file` ที่พาธ:
   `C:/Users/phuri/.gemini/config/skills/web-dev/skills/<skill-name>/SKILL.md`
   *(และหากต้องการ Pattern เชิงลึก ให้อ่านไฟล์ในโฟลเดอร์ `references/` ของสกิลนั้นเพิ่มเติม)*
4. **ปฏิบัติตามกฎเกณฑ์ MUST DO / MUST NOT DO** ของสกิลนั้นอย่างเคร่งครัดในการเขียนโค้ดและออกแบบ

---

## 🧭 Decision Tree & Routing Table (67 Skills)

### 1. Frontend & Web UI Frameworks
| ต้องการทำ... | ใช้ Sub-Skill | พาธไฟล์ |
|---|---|---|
| **Next.js 14+** (App Router, Server Actions, RSC, Vercel) | `nextjs-developer` | [`skills/nextjs-developer/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/nextjs-developer/SKILL.md) |
| **React 18/19** (Components, Hooks, Suspense, State) | `react-expert` | [`skills/react-expert/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/react-expert/SKILL.md) |
| **Vue 3** (Composition API, Pinia, TypeScript) | `vue-expert` | [`skills/vue-expert/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/vue-expert/SKILL.md) |
| **Vue 3 JavaScript** (Composition API, JSDoc Typing) | `vue-expert-js` | [`skills/vue-expert-js/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/vue-expert-js/SKILL.md) |
| **Angular 17+** (Standalone Components, Signals, NgRx) | `angular-architect` | [`skills/angular-architect/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/angular-architect/SKILL.md) |
| **Real-time / WebSocket** (Socket.io, SSE, Scaling, Events) | `websocket-engineer` | [`skills/websocket-engineer/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/websocket-engineer/SKILL.md) |

### 2. Backend API Frameworks
| ต้องการทำ... | ใช้ Sub-Skill | พาธไฟล์ |
|---|---|---|
| **FastAPI** (Python Async, Pydantic V2, SQLAlchemy, OpenAPI) | `fastapi-expert` | [`skills/fastapi-expert/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/fastapi-expert/SKILL.md) |
| **NestJS** (TypeScript Backend, Modules, Guards, Prisma/TypeORM) | `nestjs-expert` | [`skills/nestjs-expert/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/nestjs-expert/SKILL.md) |
| **Django & DRF** (Django REST Framework, ORM, Models) | `django-expert` | [`skills/django-expert/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/django-expert/SKILL.md) |
| **Spring Boot 3.x** (Java, Spring Security 6, JPA, WebFlux) | `spring-boot-engineer` | [`skills/spring-boot-engineer/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/spring-boot-engineer/SKILL.md) |
| **Laravel 10+** (PHP, Eloquent, Sanctum, Horizon, Livewire) | `laravel-specialist` | [`skills/laravel-specialist/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/laravel-specialist/SKILL.md) |
| **Ruby on Rails 7+** (Active Record, Hotwire/Turbo, Sidekiq) | `rails-expert` | [`skills/rails-expert/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/rails-expert/SKILL.md) |
| **.NET Core 8+** (ASP.NET Minimal APIs, EF Core, CQRS) | `dotnet-core-expert` | [`skills/dotnet-core-expert/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/dotnet-core-expert/SKILL.md) |

### 3. Database & File Storage
| ต้องการทำ... | ใช้ Sub-Skill | พาธไฟล์ |
|---|---|---|
| **PostgreSQL** (Optimization, Indexing, Partitioning, JSONB) | `postgres-pro` | [`skills/postgres-pro/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/postgres-pro/SKILL.md) |
| **Advanced SQL** (Queries, CTEs, Window Functions, Tuning) | `sql-pro` | [`skills/sql-pro/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/sql-pro/SKILL.md) |
| **Database Optimizer** (Query Plan, EXPLAIN ANALYZE, Locks) | `database-optimizer` | [`skills/database-optimizer/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/database-optimizer/SKILL.md) |
| **AWS S3 File Storage** (django-storages, Boto3, Presigned URLs) | `django-storages-s3` | [`skills/django-storages-s3/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/django-storages-s3/SKILL.md) |

### 4. API & System Architecture
| ต้องการทำ... | ใช้ Sub-Skill | พาธไฟล์ |
|---|---|---|
| **RESTful API Design** (OpenAPI, Pagination, Idempotency) | `api-designer` | [`skills/api-designer/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/api-designer/SKILL.md) |
| **System Architecture & ADR** (Architecture Decision Records) | `architecture-designer` | [`skills/architecture-designer/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/architecture-designer/SKILL.md) |
| **GraphQL Architecture** (Schema Design, Resolvers, Federation) | `graphql-architect` | [`skills/graphql-architect/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/graphql-architect/SKILL.md) |
| **Microservices Architecture** (Distributed Systems, Event-Driven) | `microservices-architect` | [`skills/microservices-architect/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/microservices-architect/SKILL.md) |

### 5. Testing & Quality Assurance
| ต้องการทำ... | ใช้ Sub-Skill | พาธไฟล์ |
|---|---|---|
| **Comprehensive Testing** (TDD, Unit, Integration, Mocking) | `test-master` | [`skills/test-master/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/test-master/SKILL.md) |
| **E2E Testing with Playwright** (Browser Automation, UI Test) | `playwright-expert` | [`skills/playwright-expert/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/playwright-expert/SKILL.md) |
| **Code Review & Standards** (PR Review, Code Smells) | `code-reviewer` | [`skills/code-reviewer/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/code-reviewer/SKILL.md) |
| **Root-Cause Debugging** (Trace, Logs, Edge Case Isolation) | `debugging-wizard` | [`skills/debugging-wizard/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/debugging-wizard/SKILL.md) |

### 6. Security & Hardening
| ต้องการทำ... | ใช้ Sub-Skill | พาธไฟล์ |
|---|---|---|
| **Security Audit & Review** (OWASP Top 10, Auth, Pentest) | `security-reviewer` | [`skills/security-reviewer/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/security-reviewer/SKILL.md) |
| **Secure Coding Guardian** (Input Validation, XSS, CSRF, Injection) | `secure-code-guardian` | [`skills/secure-code-guardian/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/secure-code-guardian/SKILL.md) |
| **Adversarial & Pre-Mortem** (Red-Teaming, Edge Cases) | `the-fool` | [`skills/the-fool/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/the-fool/SKILL.md) |

### 7. Language Specialists
| ภาษา | ใช้ Sub-Skill | พาธไฟล์ |
|---|---|---|
| **TypeScript** (Strict Types, Generics, Type Guards) | `typescript-pro` | [`skills/typescript-pro/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/typescript-pro/SKILL.md) |
| **JavaScript** (Modern ES2024+, Async, Node.js) | `javascript-pro` | [`skills/javascript-pro/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/javascript-pro/SKILL.md) |
| **Python** (Type Hints, Asyncio, Dataclasses, Pytest) | `python-pro` | [`skills/python-pro/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/python-pro/SKILL.md) |
| **Golang** (Goroutines, Channels, Generics, Microservices) | `golang-pro` | [`skills/golang-pro/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/golang-pro/SKILL.md) |
| **Rust** (Ownership, Lifetimes, Tokio, Systems) | `rust-engineer` | [`skills/rust-engineer/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/rust-engineer/SKILL.md) |
| **C# / .NET** (LINQ, Async, Dependency Injection) | `csharp-developer` | [`skills/csharp-developer/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/csharp-developer/SKILL.md) |
| **PHP** (Modern PHP 8.3+, Strict Types, PSR) | `php-pro` | [`skills/php-pro/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/php-pro/SKILL.md) |
| **Java** (Enterprise, Spring Ecosystem, Design Patterns) | `java-architect` | [`skills/java-architect/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/java-architect/SKILL.md) |
| **Modern C++** (C++20/23, RAII, Templates) | `cpp-pro` | [`skills/cpp-pro/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/cpp-pro/SKILL.md) |

### 8. DevOps, Cloud & SRE
| ต้องการทำ... | ใช้ Sub-Skill | พาธไฟล์ |
|---|---|---|
| **DevOps & CI/CD** (Docker, GitHub Actions, Deployments) | `devops-engineer` | [`skills/devops-engineer/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/devops-engineer/SKILL.md) |
| **Cloud Architecture** (AWS, Azure, GCP, Well-Architected) | `cloud-architect` | [`skills/cloud-architect/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/cloud-architect/SKILL.md) |
| **Kubernetes** (K8s Deployments, Helm, Ingress, Scaling) | `kubernetes-specialist` | [`skills/kubernetes-specialist/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/kubernetes-specialist/SKILL.md) |
| **Terraform** (Infrastructure as Code, Modules, State) | `terraform-engineer` | [`skills/terraform-engineer/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/terraform-engineer/SKILL.md) |
| **Site Reliability & SLOs** (Alerting, Incident Management) | `sre-engineer` | [`skills/sre-engineer/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/sre-engineer/SKILL.md) |
| **Monitoring & Telemetry** (Prometheus, Grafana, OpenTelemetry) | `monitoring-expert` | [`skills/monitoring-expert/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/monitoring-expert/SKILL.md) |
| **Chaos Engineering** (Fault Injection, Resilience) | `chaos-engineer` | [`skills/chaos-engineer/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/chaos-engineer/SKILL.md) |

### 9. Mobile & Cross-Platform
* **Flutter & Dart**: `flutter-expert` ([`skills/flutter-expert/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/flutter-expert/SKILL.md))
* **React Native**: `react-native-expert` ([`skills/react-native-expert/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/react-native-expert/SKILL.md))
* **iOS / Swift**: `swift-expert` ([`skills/swift-expert/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/swift-expert/SKILL.md))
* **Android / Kotlin**: `kotlin-specialist` ([`skills/kotlin-specialist/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/kotlin-specialist/SKILL.md))

### 10. Data, ML & AI Architecture
* **Pandas / Data Wrangling**: `pandas-pro` ([`skills/pandas-pro/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/pandas-pro/SKILL.md))
* **Apache Spark Big Data**: `spark-engineer` ([`skills/spark-engineer/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/spark-engineer/SKILL.md))
* **Machine Learning Pipelines**: `ml-pipeline` ([`skills/ml-pipeline/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/ml-pipeline/SKILL.md))
* **RAG System Architecture**: `rag-architect` ([`skills/rag-architect/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/rag-architect/SKILL.md))
* **Prompt Engineering**: `prompt-engineer` ([`skills/prompt-engineer/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/prompt-engineer/SKILL.md))
* **LLM Fine-Tuning**: `fine-tuning-expert` ([`skills/fine-tuning-expert/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/fine-tuning-expert/SKILL.md))

### 11. Workflows & Specializations
* **Spec Miner (Requirements via EARS)**: `spec-miner` ([`skills/spec-miner/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/spec-miner/SKILL.md))
* **Feature Forge (Specification to Code)**: `feature-forge` ([`skills/feature-forge/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/feature-forge/SKILL.md))
* **Legacy Modernization**: `legacy-modernizer` ([`skills/legacy-modernizer/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/legacy-modernizer/SKILL.md))
* **Atlassian MCP (Jira/Confluence)**: `atlassian-mcp` ([`skills/atlassian-mcp/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/atlassian-mcp/SKILL.md))
* **MCP Server Development**: `mcp-developer` ([`skills/mcp-developer/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/mcp-developer/SKILL.md))
* **CLI Tool Development**: `cli-developer` ([`skills/cli-developer/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/cli-developer/SKILL.md))
* **Full-Stack Guardian**: `fullstack-guardian` ([`skills/fullstack-guardian/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/fullstack-guardian/SKILL.md))
* **Documentation**: `code-documenter` ([`skills/code-documenter/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/code-documenter/SKILL.md))
* **Shopify / Liquid**: `shopify-expert` ([`skills/shopify-expert/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/shopify-expert/SKILL.md))
* **WordPress / PHP**: `wordpress-pro` ([`skills/wordpress-pro/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/wordpress-pro/SKILL.md))
* **Salesforce**: `salesforce-developer` ([`skills/salesforce-developer/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/salesforce-developer/SKILL.md))
* **Game Development**: `game-developer` ([`skills/game-developer/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/game-developer/SKILL.md))
* **Embedded Systems**: `embedded-systems` ([`skills/embedded-systems/SKILL.md`](file:///C:/Users/phuri/.gemini/config/skills/web-dev/skills/embedded-systems/SKILL.md))

---

## 💡 ตัวอย่างการสั่งงานคู่กับ /web-dev

* `/web-dev ช่วยออกแบบ API และ Database Schema สำหรับเว็บไซต์ข้อสอบออนไลน์`
  → Agent จะเปิด `architecture-designer`, `api-designer`, และ `postgres-pro`
* `/web-dev สร้างหน้าจอทำข้อสอบพร้อมจับเวลาแบบ Next.js 14 App Router`
  → Agent จะเปิด `nextjs-developer` และ `react-expert`
* `/web-dev เขียน Unit test ระบบตรวจข้อสอบอัตโนมัติครอบคลุมทุก Edge cases`
  → Agent จะเปิด `test-master`
* `/web-dev ตรวจสอบความปลอดภัย API ไม่ให้ผู้สอบ Inspect แอบดูเฉลยได้`
  → Agent จะเปิด `security-reviewer` และ `api-designer`
