<p align="center">
  <img src="https://img.shields.io/badge/Flutter-1E88E5?style=for-the-badge&logo=flutter&logoColor=white" height="35"/>
  <img src="https://img.shields.io/badge/Dart-00B4AB?style=for-the-badge&logo=dart&logoColor=white" height="35"/>
</p>

# U-Tweet - A Flutter Social Networking App

A modern social media app built with Flutter, offering real-time features similar to Twitter.

---

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

### 🖥️ Backend
- **Appwrite** (Self-hosted via Docker)
  - Authentication
  - Database
  - Storage
  - Realtime Subscriptions

### 📱 Frontend
- **Flutter** — Cross-platform mobile app framework
- **Riverpod** — State management

---

## 🛠️ Installation

### 📦 Appwrite Setup

1. **Install Appwrite**  
   👉 [Installation Guide](https://appwrite.io/docs/installation)

2. **Create a new Appwrite project locally**

3. **Create Android & iOS apps in the Appwrite Dashboard**

4. **Configure Backend**
   - Set up **Database**, **Storage**, and **Authentication**
   - Modify **roles** for Auth, Database, and Storage
   - Create the following **collections**:
     - `tweets`
     - `users`
     - `notifications`
   - Add required **attributes** to each collection

5. **Update Project Constants**
   - Copy necessary IDs from Appwrite Console
   - Update values in `lib/constants/appwrite_constants.dart`
   - Change your **IP address** in the same file

### ▶️ Run the App

```bash
flutter pub get
open -a simulator        # Launch iOS simulator
flutter run
