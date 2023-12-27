#ifndef FLUTTER_PLUGIN_COLORY_PLUGIN_H_
#define FLUTTER_PLUGIN_COLORY_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace colory {

class ColoryPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  ColoryPlugin();

  virtual ~ColoryPlugin();

  // Disallow copy and assign.
  ColoryPlugin(const ColoryPlugin&) = delete;
  ColoryPlugin& operator=(const ColoryPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace colory

#endif  // FLUTTER_PLUGIN_COLORY_PLUGIN_H_
