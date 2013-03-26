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

class GMap extends MVCObject {
  static GMap cast(js.Proxy proxy) => proxy == null ? null : new GMap.fromProxy(proxy);
  static bool isInstance(js.Proxy proxy) => js.instanceof(proxy, maps.Map);

  GMap(html.Node mapDiv, [MapOptions opts]) : super(maps.Map, [mapDiv, opts]);
  GMap.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  void fitBounds(LatLngBounds bounds) { $unsafe.fitBounds(bounds); }
  LatLngBounds get bounds => LatLngBounds.cast($unsafe.getBounds());
  LatLng get center => LatLng.cast($unsafe.getCenter());
  html.Node get div => $unsafe.getDiv();
  num get heading => $unsafe.getHeading();
  Object get mapTypeId {
    final result = $unsafe.getMapTypeId();
    return firstNotNull([MapTypeId.find(result), result]);
  }
  Projection get projection => Projection.cast($unsafe.getProjection());
  StreetViewPanorama get streetView => StreetViewPanorama.cast($unsafe.getStreetView());
  num get tilt => $unsafe.getTilt();
  num get zoom => $unsafe.getZoom();
  void panBy(num x, num y) { $unsafe.panBy(x, y); }
  void panTo(LatLng latLng) { $unsafe.panTo(latLng); }
  void panToBounds(LatLngBounds latLngBounds) { $unsafe.panToBounds(latLngBounds); }
  set center(LatLng latLng) => $unsafe.setCenter(latLng);
  set heading(num heading) => $unsafe.setHeading(heading);
  set mapTypeId(Object mapTypeId) => $unsafe.setMapTypeId(mapTypeId);
  set options(MapOptions options) => $unsafe.setOptions(options);
  set streetView(StreetViewPanorama panorama) => $unsafe.setStreetView(panorama);
  set tilt(num tilt) => $unsafe.setTilt(tilt);
  set zoom(num zoom) => $unsafe.setZoom(zoom);

  Controls get controls => Controls.cast($unsafe.controls);
  MapTypeRegistry get mapTypes => MapTypeRegistry.cast($unsafe.mapTypes);
  MVCArray<MapType> get overlayMapTypes => MVCArray.castListOfSerializables($unsafe.overlayMapTypes, MapType.cast);
  set controls(Controls controls) => $unsafe.controls = controls;
  set mapTypes(MapTypeRegistry mapTypes) => $unsafe.mapTypes = mapTypes;
  set overlayMapTypes(MVCArray<MapType> overlayMapTypes) => $unsafe.overlayMapTypes = overlayMapTypes;

  GMapEvents get on => new GMapEvents._(this);
}

class GMapEvents {
  static final BOUNDS_CHANGED = "bounds_changed";
  static final CENTER_CHANGED = "center_changed";
  static final CLICK = "click";
  static final DBLCLICK = "dblclick";
  static final DRAG = "drag";
  static final DRAGEND = "dragend";
  static final DRAGSTART = "dragstart";
  static final HEADING_CHANGED = "heading_changed";
  static final IDLE = "idle";
  static final MAPTYPEID_CHANGED = "maptypeid_changed";
  static final MOUSEMOVE = "mousemove";
  static final MOUSEOUT = "mouseout";
  static final MOUSEOVER = "mouseover";
  static final PROJECTION_CHANGED = "projection_changed";
  static final RESIZE = "resize";
  static final RIGHTCLICK = "rightclick";
  static final TILESLOADED = "tilesloaded";
  static final TILT_CHANGED = "tilt_changed";
  static final ZOOM_CHANGED = "zoom_changed";

  final GMap _gmap;

  GMapEvents._(this._gmap);

  NoArgsEventListenerAdder get boundsChanged => new NoArgsEventListenerAdder(_gmap, BOUNDS_CHANGED);
  NoArgsEventListenerAdder get centerChanged => new NoArgsEventListenerAdder(_gmap, CENTER_CHANGED);
  MouseEventListenerAdder get click => new MouseEventListenerAdder(_gmap, CLICK);
  MouseEventListenerAdder get dblclick => new MouseEventListenerAdder(_gmap, DBLCLICK);
  NoArgsEventListenerAdder get drag => new NoArgsEventListenerAdder(_gmap, DRAG);
  NoArgsEventListenerAdder get dragend => new NoArgsEventListenerAdder(_gmap, DRAGEND);
  NoArgsEventListenerAdder get dragstart => new NoArgsEventListenerAdder(_gmap, DRAGSTART);
  NoArgsEventListenerAdder get headingChanged => new NoArgsEventListenerAdder(_gmap, HEADING_CHANGED);
  NoArgsEventListenerAdder get idle => new NoArgsEventListenerAdder(_gmap, IDLE);
  NoArgsEventListenerAdder get maptypeidChanged => new NoArgsEventListenerAdder(_gmap, MAPTYPEID_CHANGED);
  MouseEventListenerAdder get mousemove => new MouseEventListenerAdder(_gmap, MOUSEMOVE);
  MouseEventListenerAdder get mouseout => new MouseEventListenerAdder(_gmap, MOUSEOUT);
  MouseEventListenerAdder get mouseover => new MouseEventListenerAdder(_gmap, MOUSEOVER);
  NoArgsEventListenerAdder get projectionChanged => new NoArgsEventListenerAdder(_gmap, PROJECTION_CHANGED);
  NoArgsEventListenerAdder get resize => new NoArgsEventListenerAdder(_gmap, RESIZE);
  MouseEventListenerAdder get rightclick => new MouseEventListenerAdder(_gmap, RIGHTCLICK);
  NoArgsEventListenerAdder get tilesloaded => new NoArgsEventListenerAdder(_gmap, TILESLOADED);
  NoArgsEventListenerAdder get tiltChanged => new NoArgsEventListenerAdder(_gmap, TILT_CHANGED);
  NoArgsEventListenerAdder get zoomChanged => new NoArgsEventListenerAdder(_gmap, ZOOM_CHANGED);
}

class Controls extends jsw.TypedProxy {
  static Controls cast(js.Proxy proxy) => proxy == null ? null : new Controls.fromProxy(proxy);

  Controls() : super.fromProxy(js.array([]));
  Controls.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  MVCArray<html.Node> getNodes(ControlPosition controlPosition) => MVCArray.cast($unsafe[controlPosition]);
  void setNodes(ControlPosition controlPosition, MVCArray<html.Node> nodes) { $unsafe[controlPosition.toString()] = nodes; }
}