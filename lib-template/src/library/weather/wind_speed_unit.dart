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

class WindSpeedUnit extends IsEnum<String> {
  static final KILOMETERS_PER_HOUR = new WindSpeedUnit._(maps['weather']['WindSpeedUnit']['KILOMETERS_PER_HOUR']);
  static final METERS_PER_SECOND = new WindSpeedUnit._(maps['weather']['WindSpeedUnit']['METERS_PER_SECOND']);
  static final MILES_PER_HOUR = new WindSpeedUnit._(maps['weather']['WindSpeedUnit']['MILES_PER_HOUR']);

  static final _FINDER = new EnumFinder<String, WindSpeedUnit>([KILOMETERS_PER_HOUR, METERS_PER_SECOND, MILES_PER_HOUR]);

  static WindSpeedUnit find(o) => _FINDER.find(o);

  WindSpeedUnit._(String value) : super(value);
}
