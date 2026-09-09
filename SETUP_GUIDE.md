# 🎬 OpenMontage Setup Guide

আপনার OpenMontage ভিডিও প্রোডাকশন সিস্টেম সেটআপ করার জন্য এই গাইডটি অনুসরণ করুন।

## ✅ প্রয়োজনীয় সফটওয়্যার

### ১. Python 3.8+
```bash
# macOS
brew install python3

# Ubuntu/Debian
sudo apt-get install python3 python3-pip

# Windows
# ডাউনলোড করুন: https://www.python.org/downloads/
```

### ২. Git
```bash
# macOS
brew install git

# Ubuntu/Debian
sudo apt-get install git

# Windows
# ডাউনলোড করুন: https://git-scm.com/
```

### ৩. FFmpeg (ভিডিও প্রসেসিং এর জন্য)
```bash
# macOS
brew install ffmpeg

# Ubuntu/Debian
sudo apt-get install ffmpeg

# Windows (Chocolatey)
choco install ffmpeg
```

---

## 🚀 ইনস্টলেশন ধাপ

### ধাপ ১: রিপোজিটরি ক্লোন করুন
```bash
git clone https://github.com/nokshidesignhouse-cell/openmontage-setup.git
cd openmontage-setup
```

### ধাপ ২: ভার্চুয়াল এনভায়রনমেন্ট তৈরি করুন (সুপারিশকৃত)
```bash
# Python ভার্চুয়াল এনভায়রনমেন্ট তৈরি করুন
python3 -m venv venv

# অ্যাক্টিভেট করুন
# macOS/Linux:
source venv/bin/activate

# Windows:
venv\Scripts\activate
```

### ধাপ ৩: ডিপেন্ডেন্সি ইনস্টল করুন
```bash
make setup
```

অথবা ম্যানুয়ালি:
```bash
pip install --upgrade pip
pip install -r requirements.txt
```

### ধাপ ৪: এনভায়রনমেন্ট কনফিগার করুন
```bash
# .env.example কপি করুন
cp .env.example .env

# আপনার পছন্দ অনুযায়ী .env ফাইল সম্পাদনা করুন
nano .env  # বা আপনার প্রিয় এডিটর ব্যবহার করুন
```

---

## 🔑 API কী সেটআপ (ঐচ্ছিক)

### বিনামূল্যে অফলাইন মোড (API কী ছাড়াই)
```bash
# .env ফাইলে কিছু করার দরকার নেই
# বিল্ট-ইন TTS (Piper) এবং স্টক ফুটেজ ব্যবহার করবে
```

### Google Veo (উন্নত ভিডিও জেনারেশন)
```bash
# 1. https://console.cloud.google.com এ যান
# 2. নতুন প্রজেক্ট তৈরি করুন
# 3. Veo API সক্রিয় করুন
# 4. API কী জেনারেট করুন
# 5. .env এ যোগ করুন:
GOOGLE_VEO_API_KEY=your_api_key_here
```

### Runway (ভিডিও এডিটিং)
```bash
# 1. https://runwayml.com এ যান
# 2. অ্যাকাউন্ট তৈরি করুন
# 3. API কী তৈরি করুন
# 4. .env এ যোগ করুন:
RUNWAY_API_KEY=your_api_key_here
```

### Pexels/Pixabay (স্টক ফুটেজ)
```bash
# 1. https://www.pexels.com/api/ এ যান
# 2. ফ্রি API কী পান
# 3. .env এ যোগ করুন:
PEXELS_API_KEY=your_api_key_here
```

---

## 🎬 প্রথম ভিডিও তৈরি করুন

### স্ট্যাটাস চেক করুন
```bash
python3 main.py status
```

### কনফিগারেশন দেখুন
```bash
python3 main.py config
```

### একটি ভিডিও তৈরি করুন
```bash
python3 main.py create --prompt "সাদা আকাশ কেন নীল রঙের"
```

---

## 📁 ফোল্ডার স্ট্রাকচার

```
openmontage-setup/
├── main.py                 # মূল অ্যাপ্লিকেশন
├── requirements.txt        # Python ডিপেন্ডেন্সি
├── Makefile               # কমান্ড শর্টকাট
├── .env.example           # এনভায়রনমেন্ট টেম্পলেট
├── .env                   # আপনার কনফিগারেশন (গিট এ নেই)
├── output/                # ভিডিও আউটপুট ফোল্ডার
├── SETUP_GUIDE.md         # এই ফাইল
└── README.md              # প্রজেক্ট রিডমি
```

---

## 🐛 সমস্যা সমাধান

### সমস্যা: `command not found: python3`
```bash
# Python পথ খুঁজুন
which python3

# বা ইনস্টল করুন:
# macOS: brew install python3
# Ubuntu: sudo apt-get install python3
```

### সমস্যা: `ModuleNotFoundError: No module named 'dotenv'`
```bash
# ডিপেন্ডেন্সি ইনস্টল করুন
pip install -r requirements.txt
```

### সমস্যা: `ffmpeg: command not found`
```bash
# FFmpeg ইনস্টল করুন
# macOS: brew install ffmpeg
# Ubuntu: sudo apt-get install ffmpeg
```

### সমস্যা: পারমিশন ডিনাইড
```bash
# ফাইলে এক্সিকিউট পারমিশন দিন
chmod +x main.py
```

---

## 📚 আরও রিসোর্স

- [OpenMontage GitHub](https://github.com/calesthio/OpenMontage)
- [OpenMontage ওয়েবসাইট](https://openmontage.video/)
- [OpenMontage YouTube](https://www.youtube.com/@OpenMontage)

---

## 💬 সাহায্য প্রয়োজন?

কোনো প্রশ্ন থাকলে, এই ফাইলটি দ্বিতীয়বার পড়ুন বা GitHub Issues এ প্রশ্ন করুন।

**Happy Video Creating! 🎬✨**
