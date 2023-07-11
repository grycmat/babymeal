package com.gigapingu.babymealbeacon.babymeal

import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.Service
import android.content.Intent
import android.os.IBinder

class TimerService: Service() {
    override fun onBind(intent: Intent?): IBinder? {
        return null
    }
}