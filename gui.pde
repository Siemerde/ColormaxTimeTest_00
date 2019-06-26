/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

public void listColormaxSelect_click1(GDropList source, GEvent event) { //_CODE_:listColormaxSelect:844591:
  println("listColormaxSelect - GDropList >> GEvent." + event + " @ " + millis());
} //_CODE_:listColormaxSelect:844591:

public void GREEN_SCHEME(GButton source, GEvent event) { //_CODE_:btnRefresh:428133:
  populateColormaxes();
  println("btnRefresh - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:btnRefresh:428133:

public void btnUpdateData_click1(GButton source, GEvent event) { //_CODE_:btnUpdateData:521190:
  updateColormaxInfo(colormaxes[listColormaxSelect.getSelectedIndex()]);
  println("btnUpdate - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:btnUpdateData:521190:

public void btnAlignOn_click1(GButton source, GEvent event) { //_CODE_:btnAlignOn:917837:
  println("btnAlignOn - GButton >> GEvent." + event + " @ " + millis());
  colormaxes[listColormaxSelect.getSelectedIndex()].writeAlignmentOn();
} //_CODE_:btnAlignOn:917837:

public void btnAlignOff_click1(GButton source, GEvent event) { //_CODE_:btnAlignOff:914443:
  println("btnAlignOff - GButton >> GEvent." + event + " @ " + millis());
  colormaxes[listColormaxSelect.getSelectedIndex()].writeAlignmentOff();
} //_CODE_:btnAlignOff:914443:

public void btnTempOn_click1(GButton source, GEvent event) { //_CODE_:btnTempOn:636267:
  println("btnTempOn - GButton >> GEvent." + event + " @ " + millis());
  colormaxes[listColormaxSelect.getSelectedIndex()].writeTempOn();
} //_CODE_:btnTempOn:636267:

public void btnTempOff_click1(GButton source, GEvent event) { //_CODE_:btnTempOff:933616:
  println("btnTempOff - GButton >> GEvent." + event + " @ " + millis());
  colormaxes[listColormaxSelect.getSelectedIndex()].writeTempOff();
} //_CODE_:btnTempOff:933616:

public void btnGetAlignTable_click1(GButton source, GEvent event) { //_CODE_:btnGetAlignTable:237531:
  println("btnGetColorTable - GButton >> GEvent." + event + " @ " + millis());
  getAlignTable(colormaxes[listColormaxSelect.getSelectedIndex()]);
} //_CODE_:btnGetAlignTable:237531:

public void btnGetTempTable_click1(GButton source, GEvent event) { //_CODE_:btnGetTempTable:816415:
  println("btnGetTempTable - GButton >> GEvent." + event + " @ " + millis());
  getTempTable(colormaxes[listColormaxSelect.getSelectedIndex()]);
} //_CODE_:btnGetTempTable:816415:

public void txtRedGreenBlue_change1(GTextField source, GEvent event) { //_CODE_:txtRedGreenBlue:961884:
  //println("txtRedGreenBlue - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:txtRedGreenBlue:961884:

public void btnStart_click1(GButton source, GEvent event) { //_CODE_:btnStart:983112:
  println("button1 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:btnStart:983112:

public void btnStop_click1(GButton source, GEvent event) { //_CODE_:btnStop:894027:
  println("btnStop - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:btnStop:894027:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.CYAN_SCHEME);
  G4P.setCursor(ARROW);
  surface.setTitle("Sketch Window");
  listColormaxSelect = new GDropList(this, 10, 30, 140, 220, 10);
  listColormaxSelect.setItems(loadStrings("list_844591"), 0);
  listColormaxSelect.addEventHandler(this, "listColormaxSelect_click1");
  btnRefresh = new GButton(this, 160, 30, 90, 20);
  btnRefresh.setText("Refresh");
  btnRefresh.setTextBold();
  btnRefresh.addEventHandler(this, "GREEN_SCHEME");
  lblRed = new GLabel(this, 10, 120, 80, 20);
  lblRed.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  lblRed.setText("Red");
  lblRed.setTextBold();
  lblRed.setOpaque(false);
  lblGreen = new GLabel(this, 90, 120, 80, 20);
  lblGreen.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  lblGreen.setText("Green");
  lblGreen.setTextBold();
  lblGreen.setOpaque(false);
  lblBlue = new GLabel(this, 170, 120, 80, 20);
  lblBlue.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  lblBlue.setText("Blue");
  lblBlue.setTextBold();
  lblBlue.setOpaque(false);
  lblRedPercentData = new GLabel(this, 10, 140, 80, 20);
  lblRedPercentData.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  lblRedPercentData.setText("N/A");
  lblRedPercentData.setOpaque(false);
  lblGreenPercentData = new GLabel(this, 90, 140, 80, 20);
  lblGreenPercentData.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  lblGreenPercentData.setText("N/A");
  lblGreenPercentData.setOpaque(false);
  lblBluePercentData = new GLabel(this, 170, 140, 80, 20);
  lblBluePercentData.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  lblBluePercentData.setText("N/A");
  lblBluePercentData.setOpaque(false);
  lblRedHexData = new GLabel(this, 10, 160, 80, 20);
  lblRedHexData.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  lblRedHexData.setText("N/A");
  lblRedHexData.setOpaque(false);
  lblGreenHexData = new GLabel(this, 90, 160, 80, 20);
  lblGreenHexData.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  lblGreenHexData.setText("N/A");
  lblGreenHexData.setOpaque(false);
  lblBlueHexData = new GLabel(this, 170, 160, 80, 20);
  lblBlueHexData.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  lblBlueHexData.setText("N/A");
  lblBlueHexData.setOpaque(false);
  lblTemperature = new GLabel(this, 10, 210, 110, 20);
  lblTemperature.setTextAlign(GAlign.RIGHT, GAlign.MIDDLE);
  lblTemperature.setText("Temperature (ºC):");
  lblTemperature.setTextBold();
  lblTemperature.setOpaque(false);
  lblTemperatureData = new GLabel(this, 120, 210, 80, 20);
  lblTemperatureData.setText("N/A");
  lblTemperatureData.setOpaque(false);
  lblLEDCurrent = new GLabel(this, 10, 230, 110, 20);
  lblLEDCurrent.setTextAlign(GAlign.RIGHT, GAlign.MIDDLE);
  lblLEDCurrent.setText("LED Current (mA):");
  lblLEDCurrent.setTextBold();
  lblLEDCurrent.setOpaque(false);
  lblLEDCurrentData = new GLabel(this, 120, 230, 80, 20);
  lblLEDCurrentData.setText("N/A");
  lblLEDCurrentData.setOpaque(false);
  lblDACSetting = new GLabel(this, 10, 250, 110, 20);
  lblDACSetting.setTextAlign(GAlign.RIGHT, GAlign.MIDDLE);
  lblDACSetting.setText("LED DAC Setting:");
  lblDACSetting.setTextBold();
  lblDACSetting.setOpaque(false);
  lblDACSettingData = new GLabel(this, 120, 250, 80, 20);
  lblDACSettingData.setText("N/A");
  lblDACSettingData.setOpaque(false);
  lblSerialNumber = new GLabel(this, 10, 390, 110, 20);
  lblSerialNumber.setTextAlign(GAlign.RIGHT, GAlign.MIDDLE);
  lblSerialNumber.setText("Serial Number:");
  lblSerialNumber.setTextBold();
  lblSerialNumber.setOpaque(false);
  lblSerialNumberData = new GLabel(this, 120, 390, 130, 20);
  lblSerialNumberData.setText("N/A");
  lblSerialNumberData.setOpaque(false);
  lblAveraging = new GLabel(this, 10, 300, 110, 20);
  lblAveraging.setTextAlign(GAlign.RIGHT, GAlign.MIDDLE);
  lblAveraging.setText("Averaging:");
  lblAveraging.setTextBold();
  lblAveraging.setOpaque(false);
  lblAveragingData = new GLabel(this, 120, 300, 80, 20);
  lblAveragingData.setText("N/A");
  lblAveragingData.setOpaque(false);
  lblTriggering = new GLabel(this, 10, 320, 110, 20);
  lblTriggering.setTextAlign(GAlign.RIGHT, GAlign.MIDDLE);
  lblTriggering.setText("Triggering:");
  lblTriggering.setTextBold();
  lblTriggering.setOpaque(false);
  lblTriggeringData = new GLabel(this, 120, 320, 80, 20);
  lblTriggeringData.setText("N/A");
  lblTriggeringData.setOpaque(false);
  lblOutputDelay = new GLabel(this, 10, 340, 110, 20);
  lblOutputDelay.setTextAlign(GAlign.RIGHT, GAlign.MIDDLE);
  lblOutputDelay.setText("Output Delay:");
  lblOutputDelay.setTextBold();
  lblOutputDelay.setOpaque(false);
  lblOutputDelayData = new GLabel(this, 120, 340, 80, 20);
  lblOutputDelayData.setText("N/A");
  lblOutputDelayData.setOpaque(false);
  lblIllumination = new GLabel(this, 10, 360, 110, 20);
  lblIllumination.setTextAlign(GAlign.RIGHT, GAlign.MIDDLE);
  lblIllumination.setText("Illumination %:");
  lblIllumination.setTextBold();
  lblIllumination.setOpaque(false);
  lblIlluminationData = new GLabel(this, 120, 360, 80, 20);
  lblIlluminationData.setText("N/A");
  lblIlluminationData.setOpaque(false);
  lblModel = new GLabel(this, 10, 410, 110, 20);
  lblModel.setTextAlign(GAlign.RIGHT, GAlign.MIDDLE);
  lblModel.setText("Model:");
  lblModel.setTextBold();
  lblModel.setOpaque(false);
  lblModelData = new GLabel(this, 120, 410, 80, 20);
  lblModelData.setText("N/A");
  lblModelData.setOpaque(false);
  lblFirmwareVersion = new GLabel(this, 10, 430, 110, 20);
  lblFirmwareVersion.setTextAlign(GAlign.RIGHT, GAlign.MIDDLE);
  lblFirmwareVersion.setText("Firmware Version:");
  lblFirmwareVersion.setTextBold();
  lblFirmwareVersion.setOpaque(false);
  lblFirmwareVersionData = new GLabel(this, 120, 430, 80, 20);
  lblFirmwareVersionData.setText("N/A");
  lblFirmwareVersionData.setOpaque(false);
  btnUpdateData = new GButton(this, 10, 90, 240, 20);
  btnUpdateData.setText("Update Values");
  btnUpdateData.setTextBold();
  btnUpdateData.addEventHandler(this, "btnUpdateData_click1");
  optnGroupColors = new GToggleGroup();
  togGroup2 = new GToggleGroup();
  btnAlignOn = new GButton(this, 280, 60, 100, 20);
  btnAlignOn.setText("Align On");
  btnAlignOn.setTextBold();
  btnAlignOn.addEventHandler(this, "btnAlignOn_click1");
  btnAlignOff = new GButton(this, 390, 60, 100, 20);
  btnAlignOff.setText("Align Off");
  btnAlignOff.setTextBold();
  btnAlignOff.addEventHandler(this, "btnAlignOff_click1");
  btnTempOn = new GButton(this, 280, 90, 100, 20);
  btnTempOn.setText("Temp On");
  btnTempOn.setTextBold();
  btnTempOn.addEventHandler(this, "btnTempOn_click1");
  btnTempOff = new GButton(this, 390, 90, 100, 20);
  btnTempOff.setText("Temp Off");
  btnTempOff.setTextBold();
  btnTempOff.addEventHandler(this, "btnTempOff_click1");
  lblLedStability = new GLabel(this, 10, 270, 110, 20);
  lblLedStability.setTextAlign(GAlign.RIGHT, GAlign.MIDDLE);
  lblLedStability.setText("LED Stability:");
  lblLedStability.setTextBold();
  lblLedStability.setOpaque(false);
  lblLedStabilityData = new GLabel(this, 120, 270, 80, 20);
  lblLedStabilityData.setText("N/A");
  lblLedStabilityData.setOpaque(false);
  btnGetAlignTable = new GButton(this, 390, 120, 100, 20);
  btnGetAlignTable.setText("Get Align Table");
  btnGetAlignTable.setTextBold();
  btnGetAlignTable.addEventHandler(this, "btnGetAlignTable_click1");
  btnGetTempTable = new GButton(this, 280, 120, 100, 20);
  btnGetTempTable.setText("Get Temp Table");
  btnGetTempTable.setTextBold();
  btnGetTempTable.addEventHandler(this, "btnGetTempTable_click1");
  txtRedGreenBlue = new GTextField(this, 110, 180, 140, 20, G4P.SCROLLBARS_NONE);
  txtRedGreenBlue.setOpaque(true);
  txtRedGreenBlue.addEventHandler(this, "txtRedGreenBlue_change1");
  lblCopyableRGB = new GLabel(this, 10, 180, 100, 20);
  lblCopyableRGB.setTextAlign(GAlign.RIGHT, GAlign.MIDDLE);
  lblCopyableRGB.setText("Copyable RGB:");
  lblCopyableRGB.setTextBold();
  lblCopyableRGB.setOpaque(false);
  lblColormaxTblControls = new GLabel(this, 280, 30, 210, 20);
  lblColormaxTblControls.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  lblColormaxTblControls.setText("Colormax Tables Controls");
  lblColormaxTblControls.setTextBold();
  lblColormaxTblControls.setOpaque(false);
  btnStart = new GButton(this, 10, 460, 480, 40);
  btnStart.setText("Start Time Test");
  btnStart.setTextBold();
  btnStart.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  btnStart.addEventHandler(this, "btnStart_click1");
  btnStop = new GButton(this, 10, 520, 480, 40);
  btnStop.setText("Stop Test");
  btnStop.setTextBold();
  btnStop.setLocalColorScheme(GCScheme.RED_SCHEME);
  btnStop.addEventHandler(this, "btnStop_click1");
}

// Variable declarations 
// autogenerated do not edit
GDropList listColormaxSelect; 
GButton btnRefresh; 
GLabel lblRed; 
GLabel lblGreen; 
GLabel lblBlue; 
GLabel lblRedPercentData; 
GLabel lblGreenPercentData; 
GLabel lblBluePercentData; 
GLabel lblRedHexData; 
GLabel lblGreenHexData; 
GLabel lblBlueHexData; 
GLabel lblTemperature; 
GLabel lblTemperatureData; 
GLabel lblLEDCurrent; 
GLabel lblLEDCurrentData; 
GLabel lblDACSetting; 
GLabel lblDACSettingData; 
GLabel lblSerialNumber; 
GLabel lblSerialNumberData; 
GLabel lblAveraging; 
GLabel lblAveragingData; 
GLabel lblTriggering; 
GLabel lblTriggeringData; 
GLabel lblOutputDelay; 
GLabel lblOutputDelayData; 
GLabel lblIllumination; 
GLabel lblIlluminationData; 
GLabel lblModel; 
GLabel lblModelData; 
GLabel lblFirmwareVersion; 
GLabel lblFirmwareVersionData; 
GButton btnUpdateData; 
GToggleGroup optnGroupColors; 
GToggleGroup togGroup2; 
GButton btnAlignOn; 
GButton btnAlignOff; 
GButton btnTempOn; 
GButton btnTempOff; 
GLabel lblLedStability; 
GLabel lblLedStabilityData; 
GButton btnGetAlignTable; 
GButton btnGetTempTable; 
GTextField txtRedGreenBlue; 
GLabel lblCopyableRGB; 
GLabel lblColormaxTblControls; 
GButton btnStart; 
GButton btnStop; 