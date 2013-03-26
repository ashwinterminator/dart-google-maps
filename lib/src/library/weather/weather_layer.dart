// Copyright (c) 2012, Alexandre Ardhuin
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

part of google_maps_weather;

class WeatherLayer extends MVCObject {
  static WeatherLayer cast(js.Proxy proxy) => proxy == null ? null : new WeatherLayer.fromProxy(proxy);

  WeatherLayer([WeatherLayerOptions opts]) : super(maps.weather.WeatherLayer, [opts]);
  WeatherLayer.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  GMap get map => GMap.cast($unsafe.getMap());
  set map(GMap map) => $unsafe.setMap(map);
  set options(WeatherLayerOptions options) => $unsafe.setOptions(options);

  WeatherLayerEvents get on => new WeatherLayerEvents._(this);
}

class WeatherLayerEvents {
  static final CLICK = "click";

  final WeatherLayer _weatherLayer;

  WeatherLayerEvents._(this._weatherLayer);

  WeatherMouseEventListenerAdder get click => new WeatherMouseEventListenerAdder(_weatherLayer, CLICK);
}