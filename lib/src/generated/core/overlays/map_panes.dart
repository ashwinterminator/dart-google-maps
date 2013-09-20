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

class MapPanes extends jsw.TypedJsObject {
  static MapPanes cast(js.JsObject jsObject) => jsObject == null ? null : new MapPanes.fromJsObject(jsObject);
  MapPanes.fromJsObject(js.JsObject jsObject) : super.fromJsObject(jsObject);
  html.Node get floatPane => convertElementToDart($unsafe['floatPane']);
  html.Node get floatShadow => convertElementToDart($unsafe['floatShadow']);
  html.Node get mapPane => convertElementToDart($unsafe['mapPane']);
  html.Node get overlayImage => convertElementToDart($unsafe['overlayImage']);
  html.Node get overlayLayer => convertElementToDart($unsafe['overlayLayer']);
  html.Node get overlayMouseTarget => convertElementToDart($unsafe['overlayMouseTarget']);
  html.Node get overlayShadow => convertElementToDart($unsafe['overlayShadow']);
  set floatPane(html.Node floatPane) => $unsafe['floatPane'] = convertElementToJs(floatPane);
  set floatShadow(html.Node floatShadow) => $unsafe['floatShadow'] = convertElementToJs(floatShadow);
  set mapPane(html.Node mapPane) => $unsafe['mapPane'] = convertElementToJs(mapPane);
  set overlayImage(html.Node overlayImage) => $unsafe['overlayImage'] = convertElementToJs(overlayImage);
  set overlayLayer(html.Node overlayLayer) => $unsafe['overlayLayer'] = convertElementToJs(overlayLayer);
  set overlayMouseTarget(html.Node overlayMouseTarget) => $unsafe['overlayMouseTarget'] = convertElementToJs(overlayMouseTarget);
  set overlayShadow(html.Node overlayShadow) => $unsafe['overlayShadow'] = convertElementToJs(overlayShadow);
}