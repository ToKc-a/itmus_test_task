package com.example.itmus_test_task

import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugins.GeneratedPluginRegistrant
import com.yandex.mapkit.MapKitFactory

class MainActivity: FlutterActivity() {
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        MapKitFactory.setApiKey("3cde38f3-db18-4630-9a2a-f2efd5dbcd9a") // Your generated API key
        super.configureFlutterEngine(flutterEngine)
    }
}
