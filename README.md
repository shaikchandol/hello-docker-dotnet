Here’s a **clear, step-by-step guide** to create a **Hello World .NET console app**, containerize it with Docker, and push it to **GitHub using VS Code**.

---

# 🧩 Step 1: Prerequisites

Make sure you have:

* Visual Studio Code
* Docker Desktop
* .NET SDK
* Git
* GitHub account

---

# 🧱 Step 2: Create .NET Console App

Open terminal in VS Code:

```bash
dotnet new console -n HelloDockerApp
cd HelloDockerApp
```

Run it:

```bash
dotnet run
```

👉 Output:

```
Hello, World!
```

---

# 🐳 Step 3: Create Dockerfile

Inside the project folder, create a file named **Dockerfile**:

```dockerfile
# Use official .NET runtime image
FROM mcr.microsoft.com/dotnet/runtime:8.0

WORKDIR /app

# Copy published output
COPY bin/Release/net8.0/publish/ .

ENTRYPOINT ["dotnet", "HelloDockerApp.dll"]
```

---

# ⚙️ Step 4: Publish the App

```bash
dotnet publish -c Release
```

👉 This generates files inside:

```
bin/Release/net8.0/publish/
```

---

# 🏗️ Step 5: Build Docker Image

```bash
docker build -t hellodockerapp .
```

---

# ▶️ Step 6: Run Docker Container

```bash
docker run --rm hellodockerapp
```

👉 Output:

```
Hello, World!
```

---

# 📁 Step 7: Initialize Git in VS Code

```bash
git init
git add .
git commit -m "Initial commit - Hello Docker .NET app"
```

---

# 🌐 Step 8: Create GitHub Repository

Go to GitHub
Create a new repo → `hello-docker-dotnet`

---

# 🔗 Step 9: Connect Local Repo to GitHub

```bash
git remote add origin https://github.com/<your-username>/hello-docker-dotnet.git
git branch -M main
git push -u origin main
```

---

# 📦 Step 10: (Optional but Recommended) Add `.dockerignore`

Create `.dockerignore`:

```
bin/
obj/
.git/
```

---

# 🧪 Step 11: Verify on GitHub

Open your repo → You should see:

* Program.cs
* Dockerfile
* .csproj

---

# 🚀 Bonus: VS Code Extensions (Optional)

Install:

* Docker extension
* GitHub Pull Requests

---

# 🎯 Final Architecture

```
.NET Console App
   ↓
Docker Image
   ↓
Run Container
   ↓
Push Code → GitHub
```

---

# 🧠 Interview Tip (1-liner)

> I created a .NET console app, containerized it using Docker by publishing the app and building an image, and then version-controlled and pushed the project to GitHub using Git in VS Code.

---


