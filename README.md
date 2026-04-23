# 🛡️ Stark Hero Hub: Platform Engineering
Welcome to the standardized internal platform for deploying **Suit Analysis** applications.

## 🚀 สำหรับวิศวกร (Developer Onboarding)
หากคุณได้รับมอบหมายให้พัฒนาแอปวิเคราะห์ชุดเกราะใหม่ (Suit Analysis) ให้ปฏิบัติตาม **Golden Path** ดังนี้:

### 1. เริ่มต้นโครงการ
- กดปุ่ม **"Use this template"** ที่หน้า GitHub นี้เพื่อสร้าง Repository ใหม่ของคุณเอง

### 2. ตั้งค่าความปลอดภัย (GitHub Secrets)
ไปที่ `Settings > Secrets and variables > Actions` และเพิ่ม Secrets ต่อไปนี้ (ขอรับกุญแจได้ที่ทีม Platform):
- `AZURE_CREDENTIALS`: สิทธิ์เข้าถึง Azure Cloud
- `SSH_PRIVATE_KEY`: กุญแจส่วนตัวสำหรับจัดการ Server

### 3. พัฒนาแอปของคุณ
- เขียนโค้ดแอปของคุณในโฟลเดอร์ `/app/backend` และ `/app/frontend`
- หากมีการใช้ Library เพิ่มเติม ให้ระบุใน `requirements.txt`
- **ข้อกำหนด:** แอปต้องมี Endpoint `/health` สำหรับตรวจสอบสถานะ (Health Check)

### 4. การ Deployment
- เพียงแค่คุณ **`git push origin main`**
- ระบบ GitHub Actions จะทำการ **Build, Provision และ Deploy** ให้คุณโดยอัตโนมัติ 100%
- หากแอปเวอร์ชันใหม่มีปัญหา ระบบจะทำการ **Rollback** กลับไปยังเวอร์ชันก่อนหน้าทันที

---

## 🏗️ โครงสร้างแพลตฟอร์ม (Platform Overview)
- `terraform/`: จัดการ Infrastructure คลุมด้วยระบบ VNET/Subnet และ NSG
- `ansible/`: จัดการ Configuration ติดตั้ง Docker & Security Baseline
- `app/`: โครงสร้างแอปมาตรฐานแบบ 3-Tier (Frontend, Backend, Redis)
- `.github/workflows/`: ระบบ CI/CD และระบบ Auto-Rollback

## 🛡️ มาตรฐานความปลอดภัย
- **No Manual Change:** ห้ามแก้ไขหน้า Console หรือ SSH เข้าไปแก้ด้วยมือเด็ดขาด
- **Infrastructure as Code:** ทุกอย่างต้องถูกบันทึกและตรวจสอบได้ผ่าน Git เท่านั้น

---
*Created by the Stark Industry Platform Engineering Team.*
