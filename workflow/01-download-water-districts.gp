# Download Division 1 Water Districts file.
# - output are layers with water districts for each division, and layers with only the water district
# - use the zipped shapefile on the CDSS website and split out Division 1
# - this should only need to be done if setting up a new workspace
CreateFolder(Folder="downloads",CreateParentFolders="True",IfFolderExists="Ignore")
WebGet(URL="https://dnrftp.state.co.us/CDSS/GIS/Water_Districts.zip",OutputFile="downloads/Water_Districts.zip")
# Unzip the zip file
UnzipFile(File="downloads/Water_Districts.zip",OutputFolder="downloads/Water_Districts",IfFolderDoesNotExist="Create")
ReadGeoLayerFromShapefile(InputFile="downloads/Water_Districts/Water_Districts.shp",GeoLayerID="WaterDistrictsLayer",Name="DWR Water Districts",Description="DWR Water Districts for Division 1")
#
# Write out a layer with all districts.
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer",OutputFile="../data/co-dwr-districts.geojson")
#
# Split the water districts by division:
# - default for new layer is GeoPackage format
SplitGeoLayerByAttribute(InputGeoLayerID="WaterDistrictsLayer",AttributeName="DIVISION",TemporaryFolder="downloads/Water_Districts-split")
# Use the following to troubleshoot the split command if necessary.
# ReadGeoLayersFromGeoPackage(InputFile="downloads/Water_Districts-split/DIVISION_1.gpkg",ReadOneLayer="True",LayerName="DIVISION_1",GeoLayerID="WaterDistrictsLayer")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DIVISION_1",OutputFile="../data/co-dwr-districts-division1.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DIVISION_2",OutputFile="../data/co-dwr-districts-division2.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DIVISION_3",OutputFile="../data/co-dwr-districts-division3.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DIVISION_4",OutputFile="../data/co-dwr-districts-division4.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DIVISION_5",OutputFile="../data/co-dwr-districts-division5.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DIVISION_6",OutputFile="../data/co-dwr-districts-division6.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DIVISION_7",OutputFile="../data/co-dwr-districts-division7.geojson")
#
# Create layers containing only districts:
# - TODO smalers 2022-07-28 could do this in a loop
SplitGeoLayerByAttribute(InputGeoLayerID="WaterDistrictsLayer",AttributeName="DISTRICT",TemporaryFolder="downloads/Water_Districts-districts-split")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_1",OutputFile="../data/co-dwr-district-1.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_2",OutputFile="../data/co-dwr-district-2.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_3",OutputFile="../data/co-dwr-district-3.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_4",OutputFile="../data/co-dwr-district-4.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_5",OutputFile="../data/co-dwr-district-5.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_6",OutputFile="../data/co-dwr-district-6.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_7",OutputFile="../data/co-dwr-district-7.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_8",OutputFile="../data/co-dwr-district-8.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_9",OutputFile="../data/co-dwr-district-9.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_10",OutputFile="../data/co-dwr-district-10.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_11",OutputFile="../data/co-dwr-district-11.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_12",OutputFile="../data/co-dwr-district-12.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_13",OutputFile="../data/co-dwr-district-13.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_14",OutputFile="../data/co-dwr-district-14.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_15",OutputFile="../data/co-dwr-district-15.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_16",OutputFile="../data/co-dwr-district-16.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_17",OutputFile="../data/co-dwr-district-17.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_18",OutputFile="../data/co-dwr-district-18.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_19",OutputFile="../data/co-dwr-district-19.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_20",OutputFile="../data/co-dwr-district-20.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_21",OutputFile="../data/co-dwr-district-21.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_22",OutputFile="../data/co-dwr-district-22.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_23",OutputFile="../data/co-dwr-district-23.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_24",OutputFile="../data/co-dwr-district-24.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_25",OutputFile="../data/co-dwr-district-25.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_26",OutputFile="../data/co-dwr-district-26.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_27",OutputFile="../data/co-dwr-district-27.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_28",OutputFile="../data/co-dwr-district-28.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_29",OutputFile="../data/co-dwr-district-29.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_30",OutputFile="../data/co-dwr-district-30.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_31",OutputFile="../data/co-dwr-district-31.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_32",OutputFile="../data/co-dwr-district-32.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_33",OutputFile="../data/co-dwr-district-33.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_34",OutputFile="../data/co-dwr-district-34.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_35",OutputFile="../data/co-dwr-district-35.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_36",OutputFile="../data/co-dwr-district-36.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_37",OutputFile="../data/co-dwr-district-37.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_38",OutputFile="../data/co-dwr-district-38.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_39",OutputFile="../data/co-dwr-district-39.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_40",OutputFile="../data/co-dwr-district-40.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_41",OutputFile="../data/co-dwr-district-41.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_42",OutputFile="../data/co-dwr-district-42.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_43",OutputFile="../data/co-dwr-district-43.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_44",OutputFile="../data/co-dwr-district-44.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_45",OutputFile="../data/co-dwr-district-45.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_46",OutputFile="../data/co-dwr-district-46.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_47",OutputFile="../data/co-dwr-district-47.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_48",OutputFile="../data/co-dwr-district-48.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_49",OutputFile="../data/co-dwr-district-49.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_50",OutputFile="../data/co-dwr-district-50.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_51",OutputFile="../data/co-dwr-district-51.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_52",OutputFile="../data/co-dwr-district-52.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_53",OutputFile="../data/co-dwr-district-53.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_54",OutputFile="../data/co-dwr-district-54.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_55",OutputFile="../data/co-dwr-district-55.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_56",OutputFile="../data/co-dwr-district-56.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_57",OutputFile="../data/co-dwr-district-57.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_58",OutputFile="../data/co-dwr-district-58.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_59",OutputFile="../data/co-dwr-district-59.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_60",OutputFile="../data/co-dwr-district-60.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_61",OutputFile="../data/co-dwr-district-61.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_62",OutputFile="../data/co-dwr-district-62.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_63",OutputFile="../data/co-dwr-district-63.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_64",OutputFile="../data/co-dwr-district-64.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_65",OutputFile="../data/co-dwr-district-65.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_66",OutputFile="../data/co-dwr-district-66.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_67",OutputFile="../data/co-dwr-district-67.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_68",OutputFile="../data/co-dwr-district-68.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_69",OutputFile="../data/co-dwr-district-69.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_70",OutputFile="../data/co-dwr-district-70.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_71",OutputFile="../data/co-dwr-district-71.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_72",OutputFile="../data/co-dwr-district-72.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_73",OutputFile="../data/co-dwr-district-73.geojson")
# No districts 74 or 75
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_76",OutputFile="../data/co-dwr-district-76.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_77",OutputFile="../data/co-dwr-district-77.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_78",OutputFile="../data/co-dwr-district-78.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_79",OutputFile="../data/co-dwr-district-79.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="WaterDistrictsLayer_DISTRICT_80",OutputFile="../data/co-dwr-district-80.geojson")