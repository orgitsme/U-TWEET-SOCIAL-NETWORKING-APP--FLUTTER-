# 🐦 U-Tweets - A Flutter Socail Networking App

A modern social media app built with Flutter, offering real-time features similar to Twitter.

## 🚀 Getting Started

This project allows users to sign up, post tweets (text, images, or links), follow others, and interact through likes, replies, and retweets.

---

## ✨ Features

- 🔐 **Authentication**
  - Sign up with email and password
  - Sign in with email and password

- 📝 **Tweeting**
  - Post text tweets
  - Post image tweets
  - Post link tweets
  - Automatic hashtag detection and storage

- 🗂️ **Tweet Management**
  - Display all tweets
  - Like a tweet
  - Retweet a tweet
  - Comment and reply on tweets

- 👥 **User Interactions**
  - Follow and unfollow users
  - Search for users
  - View followers and following
  - View recent tweets from followed users

- 👤 **User Profile**
  - Edit user profile information
  - View tweets by specific hashtags

- 💎 **Twitter Blue Features**
  - Premium features for subscribed users

- 🔔 **Notifications**
  - Get notified when someone:
    - Likes your tweet
    - Retweets your tweet
    - Replies to your tweet
    - Follows you

---

## 📦 Tech Stack

- Flutter
- Firebase (Auth, Firestore, Storage)
- Provider / Riverpod (State Management)
- Appwrite (if applicable)
- REST APIs (if any)

---
## 🛠️ Installation

 
### 📦 Appwrite Setup

1. **Install Appwrite**  
   👉 [Installation Steps Here](https://appwrite.io/docs/installation)

2. **Create a new Appwrite project locally**

3. **Create Android & iOS apps in the Appwrite Dashboard**

4. **Setup your backend**
   - Create **Database**, **Storage**, and configure **Authentication**
   - Modify roles in Auth, Database, and Storage tabs
   - Create necessary **collections**:
     - `tweets`
     - `users`
     - `notifications`
   - Add relevant **attributes** (fields) to each collection

5. **Update Project Constants**
   - Copy all required IDs from Appwrite Console
   - Paste them into `lib/constants/appwrite_constants.dart`
   - Update your IP Address in the same file

### ▶️ Run the App

```bash
flutter pub get
open -a simulator        # For iOS
flutter run
🧰 Tech Stack
🖥️ Server
Appwrite Authentication

Appwrite Database

Appwrite Storage

Appwrite Realtime

📱 Client
Flutter

Riverpod (State Management)

![1_D0ovkfSAN6BQ5md-miqbBQ](https://github.com/user-attachments/assets/223f4718-2f50-4291-b22c-c8c53c27acb0)


 

---

## 📄 License
Copyright (c) 2025 U-Tweets
All rights reserved.
 
