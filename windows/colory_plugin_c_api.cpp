#include "include/colory/colory_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "colory_plugin.h"

void ColoryPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  colory::ColoryPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
