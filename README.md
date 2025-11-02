# 🚉 **KMRL IntelliDocs**
### *Smart Document Intelligence for Urban Infrastructure Projects*

---

## 💡 **Introduction**

### **Problem Statement**
Public infrastructure projects like those managed by Kochi Metro Rail Limited (KMRL) involve **thousands of technical documents** — project plans, inspection reports, tenders, and contractor submissions.  
Currently, most of these are **scattered across folders**, manually verified, and **lack intelligent search or version control**, leading to delays, duplication, and loss of critical insights.

### **Solution**
**KMRL IntelliDocs** is an **AI-powered Intelligent Document Management System (IDMS)** built to automate the way metro and infrastructure organizations **store, analyze, and manage project documents**.  
By integrating **OCR, NLP, and cloud storage**, IntelliDocs allows engineers, officials, and auditors to upload **PDFs, images, or reports** and instantly retrieve structured insights.  

Through a centralized, searchable dashboard, users can:
- Upload and categorize technical documents  
- Extract key information (dates, costs, contractor details)  
- Detect document duplicates or anomalies using AI  
- Enable role-based secure sharing with teams and departments  

IntelliDocs streamlines documentation, enabling **faster approvals, improved compliance, and transparent audit trails**.

---

## 📽️ **Introduction to KMRL IntelliDocs**

[![Intro to IntelliDocs](https://i.postimg.cc/XNpgHmxg/KMRL-intelli-Docs-Thumbnail.jpg)](https://youtu.be/aZ3mYoLTY1M)  
*🎥 Click the image above to watch our demo video.*

---

## 🎯 **UN Sustainable Development Goals Supported**

<p align="center">
  <img src="https://i.postimg.cc/tJzjKJNW/SDG-9.png" width="180"/>
  <img src="https://i.postimg.cc/zvkrsvFh/SDG-11.png" width="180"/>
  <img src="https://i.postimg.cc/jqGbSbJB/SDG-13.png" width="180"/>
  <img src="https://i.postimg.cc/RVNrn0cM/SDG-17.png" width="180"/>
</p>

- **SDG 9 – Industry, Innovation and Infrastructure:** Promoting digital innovation in public infrastructure.  
- **SDG 11 – Sustainable Cities and Communities:** Supporting efficient and transparent urban project execution.  
- **SDG 13 – Climate Action:** Reducing paper waste through digitization and automation.  
- **SDG 17 – Partnerships for the Goals:** Enhancing coordination between departments, contractors, and consultants.

---

## ⚙️ **Setup**

To run IntelliDocs locally:

git clone https://github.com/your-username/kmrl-intellidocs
cd kmrl-intellidocs
flutter pub get
flutter run

## 📱 **User Guide**

### **Walkthrough**

<table style="width: 100%;">
  <tr>
    <td align="center" width="25%">
      <img src="https://i.postimg.cc/LXN3Z7ZN/KMRL-Login.jpg" width="120"/><br>
      <b>Login Screen</b><br>
      Secure sign-in using Firebase authentication for different user roles.
    </td>
    <td align="center" width="25%">
      <img src="https://i.postimg.cc/SsDfz5zP/KMRL-Upload.jpg" width="120"/><br>
      <b>Upload Screen</b><br>
      Upload PDFs or images directly from gallery or file manager for document parsing.
    </td>
    <td align="center" width="25%">
      <img src="https://i.postimg.cc/FRDVJqJP/KMRL-Doc.jpg" width="120"/><br>
      <b>AI Extraction Dashboard</b><br>
      Extract and visualize data points using built-in AI document parsers.
    </td>
    <td align="center" width="25%">
      <img src="https://i.postimg.cc/W3XwJKJH/KMRL-Search.jpg" width="120"/><br>
      <b>Search & Insights</b><br>
      Intelligent keyword-based document search and smart recommendations.
    </td>
  </tr>
</table>

---

## ✨ **Highlights**

- 🧠 **AI-based OCR and NLP** for automatic text extraction from scanned PDFs and images.  
- ☁️ **Firebase Cloud Storage + Firestore** for secure and scalable document management.  
- 🔒 **Role-based access** ensuring controlled visibility for engineers, admins, and auditors.  
- ⚙️ **Smart versioning** that tracks document edits and previous submissions.  
- 📈 **Metadata tagging and analytics** for efficient categorization and reporting.  
- 🤖 **Gemini API integration** for context-aware summarization and anomaly detection.  

---

## 🧠 **Tech Stack**

### **Technologies Used**

- **Framework:** Flutter (frontend, cross-platform)  
- **Backend:** Node.js + Firebase Functions  
- **AI/ML:** Google Cloud Vision API, Gemini API, LangChain (for document Q&A)  
- **Database:** Firebase Firestore  
- **Storage:** Firebase Cloud Storage  
- **Cloud Hosting:** Google Cloud Platform (GCP)  

<p align="center">
  <img src="https://i.postimg.cc/0Q2FznYq/KMRL-Tech-Stack.png" width="750"/>
  <br>
  <em>Architecture & Technology Stack of KMRL IntelliDocs</em>
</p>

---

## 🧩 **System Overview**

1. **Document Upload & Parsing**  
   Users upload PDFs or images through the Flutter UI, stored in Firebase Cloud Storage.  

2. **AI Processing Layer**  
   Google Vision and Gemini APIs extract, summarize, and structure document data.  

3. **Firestore Integration**  
   Metadata and extracted insights are saved for quick search and retrieval.  

4. **Role-based Access Control**  
   Engineers, auditors, and admins have separate access levels for uploads and verification.  

5. **Search & Recommendation Engine**  
   Enables keyword-based search with contextual AI suggestions for faster discovery.  

6. **Dashboard Analytics**  
   Tracks uploads, categories, verification status, and insights in real-time.  

---

## 🌱 **Impact and Benefits**

- **Efficiency:** Reduces document verification and retrieval time by over 60%.  
- **Transparency:** Every document and revision is logged and traceable.  
- **Scalability:** Cloud-native setup scales across metro projects and departments.  
- **Sustainability:** Minimizes paper usage and promotes digital workflows.  
- **Data-driven Governance:** Helps decision-makers access the right insights instantly.  

---

## 📊 **Feasibility and Viability**

- **Feasibility:** Uses proven Google Cloud and Firebase ecosystem components.  
- **Challenges:** Handling large file uploads, ensuring data privacy.  
- **Mitigation:** Chunked uploads, Firebase Storage Rules, and encrypted metadata.  
- **Value Proposition:** Provides a **centralized, intelligent documentation system** tailored for public sector infrastructure management.  

---

## 🔮 **Future Scope**

- Integration with **KMRL ERP systems** and **project workflow dashboards**.  
- Support for **offline-first uploads** for field engineers.  
- Advanced AI capabilities for **entity recognition** and **document classification**.  
- Expansion to **multi-agency collaboration** — Kochi Water Metro, Smart City Mission, etc.  
- Potential deployment as a **national infrastructure documentation platform**.  

---

## 🧾 **Resources**

- [Flutter Docs](https://docs.flutter.dev/)  
- [Firebase Docs](https://firebase.google.com/docs)  
- [Google Cloud Vision API](https://cloud.google.com/vision/docs)  
- [Gemini API Docs](https://ai.google.dev/docs)  

---

## 💚 **Acknowledgement**

**KMRL IntelliDocs** is a **Smart India Hackathon 2025** project developed under the theme of **Urban Infrastructure & Smart Governance**, designed to enhance **document intelligence and operational transparency** for KMRL and similar public bodies.

---

## ⚖️ **Intellectual Property & Copyright Notice**

© 2025 **Team Codevengers** — All rights reserved.  

This project, **KMRL IntelliDocs**, including its concept, design, architecture, and codebase, is the **intellectual property of Team Codevengers**, created exclusively for **Smart India Hackathon 2025**.  

Unauthorized copying, distribution, or reproduction in any form — including design elements, UI, or source code — without express written permission is strictly prohibited.  

**Note:** IntelliDocs is an original innovation by Team Codevengers, not to be replicated, rebranded, or resubmitted under any other competition or entity without prior approval.

