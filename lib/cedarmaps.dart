// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

library cedarmaps;

import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mapbox_gl_platform_interface/mapbox_gl_platform_interface.dart';

import 'src/internal/authentication.dart';
import 'src/internal/constants.dart' as Constants;

export 'package:mapbox_gl_platform_interface/mapbox_gl_platform_interface.dart'
    show
        LatLng,
        LatLngBounds,
        LatLngQuad,
        CameraPosition,
        CameraUpdate,
        ArgumentCallbacks,
        Symbol,
        SymbolOptions,
        CameraTargetBounds,
        MinMaxZoomPreference,
        MapboxStyles,
        MyLocationTrackingMode,
        MyLocationRenderMode,
        CompassViewPosition,
        Circle,
        CircleOptions,
        Line,
        LineOptions,
        Fill,
        FillOptions;

part 'src/global.dart';
part 'src/controller.dart';
part 'src/cedarmaps_style.dart';
part 'src/cedarmaps_map.dart';
