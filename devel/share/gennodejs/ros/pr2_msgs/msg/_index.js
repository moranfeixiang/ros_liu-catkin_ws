
"use strict";

let DashboardState = require('./DashboardState.js');
let PressureState = require('./PressureState.js');
let BatteryState2 = require('./BatteryState2.js');
let PowerState = require('./PowerState.js');
let GPUStatus = require('./GPUStatus.js');
let PowerBoardState = require('./PowerBoardState.js');
let LaserScannerSignal = require('./LaserScannerSignal.js');
let LaserTrajCmd = require('./LaserTrajCmd.js');
let AccessPoint = require('./AccessPoint.js');
let AccelerometerState = require('./AccelerometerState.js');
let BatteryServer = require('./BatteryServer.js');
let BatteryServer2 = require('./BatteryServer2.js');
let BatteryState = require('./BatteryState.js');
let PeriodicCmd = require('./PeriodicCmd.js');

module.exports = {
  DashboardState: DashboardState,
  PressureState: PressureState,
  BatteryState2: BatteryState2,
  PowerState: PowerState,
  GPUStatus: GPUStatus,
  PowerBoardState: PowerBoardState,
  LaserScannerSignal: LaserScannerSignal,
  LaserTrajCmd: LaserTrajCmd,
  AccessPoint: AccessPoint,
  AccelerometerState: AccelerometerState,
  BatteryServer: BatteryServer,
  BatteryServer2: BatteryServer2,
  BatteryState: BatteryState,
  PeriodicCmd: PeriodicCmd,
};
