# 🎬 OpenMontage - AI Video Production System

**OpenMontage হল একটি ওপেন-সোর্স, AI-চালিত ভিডিও প্রোডাকশন সিস্টেম যা আপনার AI কোডিং অ্যাসিস্ট্যান্টকে একটি সম্পূর্ণ ভিডিও প্রোডাকশন স্টুডিওতে পরিণত করে।**

## ✨ বৈশিষ্ট্য

- 🚀 **এক প্রম্পট = সম্পূর্ণ ভিডিও** - একটি আইডিয়া বর্ণনা করুন, বাকিটা AI সামলায়
- 🎞️ **12+ প্রোডাকশন পাইপলাইন** - Explainers, Animations, Trailers, Ads ইত্যাদি
- 💰 **সম্পূর্ণ বিনামূল্যে অফলাইন মোড** - API কী ছাড়াই কাজ করে
- 🤖 **AI-চালিত সিদ্ধান্ত** - প্রতিটি ধাপে স্বচ্ছতা এবং নিয়ন্ত্রণ
- 🌐 **ক্লাউড-রেডি** - স্থানীয় বা ক্লাউডে চলতে পারে
- 📝 **রেফারেন্স-চালিত** - YouTube, TikTok, Reels থেকে স্টাইল শিখুন

## 🚀 দ্রুত শুরু করুন

### পূর্বশর্ত
- Python 3.8+
- Git
- FFmpeg (ভিডিও প্রসেসিং এর জন্য)

### ইনস্টলেশন (3 ধাপ)

```bash
# 1. রিপোজিটরি ক্লোন করুন
git clone https://github.com/nokshidesignhouse-cell/openmontage-setup.git
cd openmontage-setup

# 2. ডিপেন্ডেন্সি ইনস্টল করুন
make setup

# 3. প্রথম ভিডিও তৈরি করুন
python3 main.py create --prompt "আপনার ভিডিও আইডিয়া"
```

## 📖 ব্যবহার

### স্ট্যাটাস চেক করুন
```bash
python3 main.py status
```

### কনফিগারেশন দেখুন
```bash
python3 main.py config
```

### ভিডিও তৈরি করুন
```bash
python3 main.py create --prompt "আপনার আইডিয়া" --quality 1080p
```

## ⚙️ কনফিগারেশন

### বিনামূল্যে অফলাইন মোড (ডিফল্ট)
কোনো সেটআপের প্রয়োজন নেই! বিল্ট-ইন TTS এবং স্টক ফুটেজ ব্যবহার করে।

### প্রিমিয়াম AI মডেল (ঐচ্ছিক)

`.env` ফাইলে API কী যোগ করুন:

```bash
# Google Veo
GOOGLE_VEO_API_KEY=your_key_here

# Runway
RUNWAY_API_KEY=your_key_here

# OpenAI
OPENAI_API_KEY=your_key_here
```

## 📂 ফাইল স্ট্রাকচার

```
openmontage-setup/
├── main.py                  # মূল অ্যাপ্লিকেশন
├── requirements.txt         # Python ডিপেন্ডেন্সি
├── Makefile                # কমান্ড শর্টকাট
├── .env.example            # এনভায়রনমেন্ট টেম্পলেট
├── README.md              # এই ফাইল
├── SETUP_GUIDE.md         # বিস্তারিত সেটআপ গাইড
└── output/                # ভিডিও আউটপুট ফোল্ডার
```

## 🔧 কমান্ড রেফারেন্স

| কমান্ড | বর্ণনা |
|--------|--------|
| `make setup` | সেটআপ এবং ডিপেন্ডেন্সি ইনস্টল করুন |
| `make install` | শুধুমাত্র Python ডিপেন্ডেন্সি ইনস্টল করুন |
| `make run` | OpenMontage শুরু করুন |
| `make clean` | টেম্পরারি ফাইল পরিষ্কার করুন |
| `make help` | সাহায্য প্রদর্শন করুন |

## 📚 আরও তথ্য

- 📖 [বিস্তারিত সেটআপ গাইড](SETUP_GUIDE.md)
- 🌐 [OpenMontage ওয়েবসাইট](https://openmontage.video/)
- 📺 [YouTube চ্যানেল](https://www.youtube.com/@OpenMontage)
- 💻 [মূল GitHub রেপো](https://github.com/calesthio/OpenMontage)

## 🐛 সমস্যা সমাধান

### `command not found: python3`
```bash
brew install python3  # macOS
sudo apt-get install python3  # Ubuntu/Debian
```

### `ModuleNotFoundError`
```bash
pip install -r requirements.txt
```

### `ffmpeg: command not found`
```bash
brew install ffmpeg  # macOS
sudo apt-get install ffmpeg  # Ubuntu/Debian
```

## 📝 লাইসেন্স

OpenMontage হল AGPL লাইসেন্সের অধীনে উপলব্ধ।

## 🤝 অবদান

ফিচার রিকোয়েস্ট এবং বাগ রিপোর্টের জন্য GitHub Issues ব্যবহার করুন।

---

**আনন্দদায়ক ভিডিও তৈরি করুন! 🎬✨**
