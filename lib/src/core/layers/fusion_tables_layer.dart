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

part of google_maps;

class FusionTablesLayer extends MVCObject {
  static FusionTablesLayer cast(js.Proxy proxy) => proxy == null ? null : new FusionTablesLayer.fromProxy(proxy);

  FusionTablesLayer(FusionTablesLayerOptions options) : super(maps.FusionTablesLayer, [options]);
  FusionTablesLayer.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  GMap get map => GMap.cast($unsafe.getMap());
  set map(GMap map) => $unsafe.setMap(map);
  set options(FusionTablesLayerOptions options) => $unsafe.setOptions(options);

  FusionTablesLayerEvents get on => new FusionTablesLayerEvents._(this);
}

class FusionTablesLayerEvents {
  static final CLICK = "click";

  final FusionTablesLayer _fusionTablesLayer;

  FusionTablesLayerEvents._(this._fusionTablesLayer);

  FusionTablesMouseEventListenerAdder get click => new FusionTablesMouseEventListenerAdder(_fusionTablesLayer, CLICK);
}