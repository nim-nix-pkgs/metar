# See: test_tiffTags.nim(0):

## You use this module to map tiff tag numbers to strings.

import tables
import strutils
# import tpub

const tagToString = {
  1'u16: "InteropIndex",
  2'u16: "InteropVersion",
  11'u16: "ProcessingSoftware",
  254'u16: "NewSubfileType",
  255'u16: "SubfileType",
  256'u16: "ImageWidth",
  257'u16: "ImageHeight",
  258'u16: "BitsPerSample",
  259'u16: "Compression",
  262'u16: "PhotometricInterpretation",
  263'u16: "Thresholding",
  264'u16: "CellWidth",
  265'u16: "CellLength",
  266'u16: "FillOrder",
  269'u16: "DocumentName",
  270'u16: "ImageDescription",
  271'u16: "Make",
  272'u16: "Model",
  273'u16: "StripOffsets",
  274'u16: "Orientation",
  277'u16: "SamplesPerPixel",
  278'u16: "RowsPerStrip",
  279'u16: "StripByteCounts",
  280'u16: "MinSampleValue",
  281'u16: "MaxSampleValue",
  282'u16: "XResolution",
  283'u16: "YResolution",
  284'u16: "PlanarConfiguration",
  285'u16: "PageName",
  286'u16: "XPosition",
  287'u16: "YPosition",
  288'u16: "FreeOffsets",
  289'u16: "FreeByteCounts",
  290'u16: "GrayResponseUnit",
  291'u16: "GrayResponseCurve",
  292'u16: "T4Options",
  293'u16: "T6Options",
  296'u16: "ResolutionUnit",
  297'u16: "PageNumber",
  300'u16: "ColorResponseUnit",
  301'u16: "TransferFunction",
  305'u16: "Software",
  306'u16: "ModifyDate",
  315'u16: "Artist",
  316'u16: "HostComputer",
  317'u16: "Predictor",
  318'u16: "WhitePoint",
  319'u16: "PrimaryChromaticities",
  320'u16: "ColorMap",
  321'u16: "HalftoneHints",
  322'u16: "TileWidth",
  323'u16: "TileLength",
  324'u16: "TileOffsets",
  325'u16: "TileByteCounts",
  326'u16: "BadFaxLines",
  327'u16: "CleanFaxData",
  328'u16: "ConsecutiveBadFaxLines",
  330'u16: "SubIFDs",
  332'u16: "InkSet",
  333'u16: "InkNames",
  334'u16: "NumberOfInks",
  336'u16: "DotRange",
  337'u16: "TargetPrinter",
  338'u16: "ExtraSamples",
  339'u16: "SampleFormat",
  340'u16: "SMinSampleValue",
  341'u16: "SMaxSampleValue",
  342'u16: "TransferRange",
  343'u16: "ClipPath",
  344'u16: "XClipPathUnits",
  345'u16: "YClipPathUnits",
  346'u16: "Indexed",
  347'u16: "JPEGTables",
  351'u16: "OPIProxy",
  400'u16: "GlobalParametersIFD",
  401'u16: "ProfileType",
  402'u16: "FaxProfile",
  403'u16: "CodingMethods",
  404'u16: "VersionYear",
  405'u16: "ModeNumber",
  433'u16: "Decode",
  434'u16: "DefaultImageColor",
  435'u16: "T82Options",
  437'u16: "JPEGTables2",
  512'u16: "JPEGProc",
  513'u16: "ThumbnailOffset",
  514'u16: "ThumbnailLength",
  515'u16: "JPEGRestartInterval",
  517'u16: "JPEGLosslessPredictors",
  518'u16: "JPEGPointTransforms",
  519'u16: "JPEGQTables",
  520'u16: "JPEGDCTables",
  521'u16: "JPEGACTables",
  529'u16: "YCbCrCoefficients",
  530'u16: "YCbCrSubSampling",
  531'u16: "YCbCrPositioning",
  532'u16: "ReferenceBlackWhite",
  559'u16: "StripRowCounts",
  700'u16: "XMP",
  999'u16: "USPTOMiscellaneous",
  4096'u16: "RelatedImageFileFormat",
  4097'u16: "RelatedImageWidth",
  4098'u16: "RelatedImageHeight",
  18246'u16: "Rating",
  18247'u16: "XP",
  18248'u16: "StitchInfo",
  18249'u16: "RatingPercent",
  28672'u16: "SonyRawFileType",
  28722'u16: "VignettingCorrParams",
  28725'u16: "ChromaticAberrationCorrParams",
  28727'u16: "DistortionCorrParams",
  32781'u16: "ImageID",
  32931'u16: "WangTag1",
  32932'u16: "WangAnnotation",
  32933'u16: "WangTag3",
  32934'u16: "WangTag4",
  32953'u16: "ImageReferencePoints",
  32954'u16: "RegionXformTackPoint",
  32955'u16: "WarpQuadrilateral",
  32956'u16: "AffineTransformMat",
  32995'u16: "Matteing",
  32996'u16: "DataType",
  32997'u16: "ImageDepth",
  32998'u16: "TileDepth",
  33300'u16: "ImageFullWidth",
  33301'u16: "ImageFullHeight",
  33302'u16: "TextureFormat",
  33303'u16: "WrapModes",
  33304'u16: "FovCot",
  33305'u16: "MatrixWorldToScreen",
  33306'u16: "MatrixWorldToCamera",
  33405'u16: "Model2",
  33421'u16: "CFARepeatPatternDim",
  33422'u16: "CFAPattern2",
  33423'u16: "BatteryLevel",
  33424'u16: "KodakIFD",
  33432'u16: "Copyright",
  33434'u16: "ExposureTime",
  33437'u16: "FNumber",
  33445'u16: "MDFileTag",
  33446'u16: "MDScalePixel",
  33447'u16: "MDColorTable",
  33448'u16: "MDLabName",
  33449'u16: "MDSampleInfo",
  33450'u16: "MDPrepDate",
  33451'u16: "MDPrepTime",
  33452'u16: "MDFileUnits",
  33550'u16: "PixelScale",
  33589'u16: "AdventScale",
  33590'u16: "AdventRevision",
  33628'u16: "UIC1Tag",
  33629'u16: "UIC2Tag",
  33630'u16: "UIC3Tag",
  33631'u16: "UIC4Tag",
  33723'u16: "IPTC",
  33918'u16: "IntergraphPacketData",
  33919'u16: "IntergraphFlagRegisters",
  33920'u16: "IntergraphMatrix",
  33921'u16: "INGRReserved",
  33922'u16: "ModelTiePoint",
  34016'u16: "Site",
  34017'u16: "ColorSequence",
  34018'u16: "IT8Header",
  34019'u16: "RasterPadding",
  34020'u16: "BitsPerRunLength",
  34021'u16: "BitsPerExtendedRunLength",
  34022'u16: "ColorTable",
  34023'u16: "ImageColorIndicator",
  34024'u16: "BackgroundColorIndicator",
  34025'u16: "ImageColorValue",
  34026'u16: "BackgroundColorValue",
  34027'u16: "PixelIntensityRange",
  34028'u16: "TransparencyIndicator",
  34029'u16: "ColorCharacterization",
  34030'u16: "HCUsage",
  34031'u16: "TrapIndicator",
  34032'u16: "CMYKEquivalent",
  34118'u16: "SEMInfo",
  34152'u16: "AFCP",
  34232'u16: "PixelMagicJBIGOptions",
  34263'u16: "JPLCartoIFD",
  34264'u16: "ModelTransform",
  34306'u16: "WBGRGBLevels",
  34310'u16: "LeafData",
  34377'u16: "PhotoshopSettings",
  34665'u16: "ExifOffset",
  34675'u16: "ICCProfile",
  34687'u16: "TIFFFXExtensions",
  34688'u16: "MultiProfiles",
  34689'u16: "SharedData",
  34690'u16: "T88Options",
  34732'u16: "ImageLayer",
  34735'u16: "GeoTiffDirectory",
  34736'u16: "GeoTiffDoubleParams",
  34737'u16: "GeoTiffAsciiParams",
  34750'u16: "JBIGOptions",
  34850'u16: "ExposureProgram",
  34852'u16: "SpectralSensitivity",
  34853'u16: "GPSInfo",
  34855'u16: "ISO",
  34856'u16: "OptoElectricConvFactor",
  34857'u16: "Interlace",
  34858'u16: "TimeZoneOffset",
  34859'u16: "SelfTimerMode",
  34864'u16: "SensitivityType",
  34865'u16: "StandardOutputSensitivity",
  34866'u16: "RecommendedExposureIndex",
  34867'u16: "ISOSpeed",
  34868'u16: "ISOSpeedLatitudeyyy",
  34869'u16: "ISOSpeedLatitudezzz",
  34908'u16: "FaxRecvParams",
  34909'u16: "FaxSubAddress",
  34910'u16: "FaxRecvTime",
  34929'u16: "FedexEDR",
  34954'u16: "LeafSubIFD",
  36864'u16: "ExifVersion",
  36867'u16: "DateTimeOriginal",
  36868'u16: "CreateDate",
  36873'u16: "GooglePlusUploadCode",
  36880'u16: "OffsetTime",
  36881'u16: "OffsetTimeOriginal",
  36882'u16: "OffsetTimeDigitized",
  37121'u16: "ComponentsConfiguration",
  37122'u16: "CompressedBitsPerPixel",
  37377'u16: "ShutterSpeedValue",
  37378'u16: "ApertureValue",
  37379'u16: "BrightnessValue",
  37380'u16: "ExposureCompensation",
  37381'u16: "MaxApertureValue",
  37382'u16: "SubjectDistance",
  37383'u16: "MeteringMode",
  37384'u16: "LightSource",
  37385'u16: "Flash",
  37386'u16: "FocalLength",
  37387'u16: "FlashEnergy",
  37388'u16: "SpatialFrequencyResponse",
  37389'u16: "Noise",
  37390'u16: "FocalPlaneXResolution",
  37391'u16: "FocalPlaneYResolution",
  37392'u16: "FocalPlaneResolutionUnit",
  37393'u16: "ImageNumber",
  37394'u16: "SecurityClassification",
  37395'u16: "ImageHistory",
  37396'u16: "SubjectArea",
  37397'u16: "ExposureIndex",
  37398'u16: "TIFFEPStandardID",
  37399'u16: "SensingMethod",
  37434'u16: "CIP3DataFile",
  37435'u16: "CIP3Sheet",
  37436'u16: "CIP3Side",
  37439'u16: "StoNits",
  37500'u16: "MakerNote",
  37510'u16: "UserComment",
  37520'u16: "SubSecTime",
  37521'u16: "SubSecTimeOriginal",
  37522'u16: "SubSecTimeDigitized",
  37679'u16: "MSDocumentText",
  37680'u16: "MSPropertySetStorage",
  37681'u16: "MSDocumentTextPosition",
  37724'u16: "ImageSourceData",
  37888'u16: "AmbientTemperature",
  37889'u16: "Humidity",
  37890'u16: "Pressure",
  37891'u16: "WaterDepth",
  37892'u16: "Acceleration",
  37893'u16: "CameraElevationAngle",
  40091'u16: "XPTitle",
  40092'u16: "XPComment",
  40093'u16: "XPAuthor",
  40094'u16: "XPKeywords",
  40095'u16: "XPSubject",
  40960'u16: "FlashpixVersion",
  40961'u16: "ColorSpace",
  40962'u16: "ExifImageWidth",
  40963'u16: "ExifImageHeight",
  40964'u16: "RelatedSoundFile",
  40965'u16: "InteropOffset",
  40976'u16: "SamsungRawPointersOffset",
  40977'u16: "SamsungRawPointersLength",
  41217'u16: "SamsungRawByteOrder",
  41218'u16: "SamsungRawUnknown",
  41483'u16: "FlashEnergy2",
  41484'u16: "SpatialFrequencyResponse2",
  41485'u16: "Noise2",
  41486'u16: "FocalPlaneXResolution2",
  41487'u16: "FocalPlaneYResolution2",
  41488'u16: "FocalPlaneResolutionUnit2",
  41489'u16: "ImageNumber2",
  41490'u16: "SecurityClassification2",
  41491'u16: "ImageHistory2",
  41492'u16: "SubjectLocation",
  41493'u16: "ExposureIndex2",
  41494'u16: "TIFF",
  41495'u16: "SensingMethod2",
  41728'u16: "FileSource",
  41729'u16: "SceneType",
  41730'u16: "CFAPattern",
  41985'u16: "CustomRendered",
  41986'u16: "ExposureMode",
  41987'u16: "WhiteBalance",
  41988'u16: "DigitalZoomRatio",
  41989'u16: "FocalLengthIn35mmFormat",
  41990'u16: "SceneCaptureType",
  41991'u16: "GainControl",
  41992'u16: "Contrast",
  41993'u16: "Saturation",
  41994'u16: "Sharpness",
  41995'u16: "DeviceSettingDescription",
  41996'u16: "SubjectDistanceRange",
  42016'u16: "ImageUniqueID",
  42032'u16: "OwnerName",
  42033'u16: "SerialNumber",
  42034'u16: "LensInfo",
  42035'u16: "LensMake",
  42036'u16: "LensModel",
  42037'u16: "LensSerialNumber",
  42112'u16: "GDALMetadata",
  42113'u16: "GDALNoData",
  42240'u16: "Gamma",
  44992'u16: "ExpandSoftware",
  44993'u16: "ExpandLens",
  44994'u16: "ExpandFilm",
  44995'u16: "ExpandFilterLens",
  44996'u16: "ExpandScanner",
  44997'u16: "ExpandFlashLamp",
  48129'u16: "PixelFormat",
  48130'u16: "Transformation",
  48131'u16: "Uncompressed",
  48132'u16: "ImageType",
  48256'u16: "ImageWidth2",
  48257'u16: "ImageHeight2",
  48258'u16: "WidthResolution",
  48259'u16: "HeightResolution",
  48320'u16: "ImageOffset",
  48321'u16: "ImageByteCount",
  48322'u16: "AlphaOffset",
  48323'u16: "AlphaByteCount",
  48324'u16: "ImageDataDiscard",
  48325'u16: "AlphaDataDiscard",
  50215'u16: "OceScanjobDesc",
  50216'u16: "OceApplicationSelector",
  50217'u16: "OceIDNumber",
  50218'u16: "OceImageLogic",
  50255'u16: "Annotations",
  50341'u16: "PrintIM",
  50547'u16: "OriginalFileName",
  50560'u16: "USPTOOriginalContentType",
  50656'u16: "CR2CFAPattern",
  50706'u16: "DNGVersion",
  50707'u16: "DNGBackwardVersion",
  50708'u16: "UniqueCameraModel",
  50709'u16: "LocalizedCameraModel",
  50710'u16: "CFAPlaneColor",
  50711'u16: "CFALayout",
  50712'u16: "LinearizationTable",
  50713'u16: "BlackLevelRepeatDim",
  50714'u16: "BlackLevel",
  50715'u16: "BlackLevelDeltaH",
  50716'u16: "BlackLevelDeltaV",
  50717'u16: "WhiteLevel",
  50718'u16: "DefaultScale",
  50719'u16: "DefaultCropOrigin",
  50720'u16: "DefaultCropSize",
  50721'u16: "ColorMatrix1",
  50722'u16: "ColorMatrix2",
  50723'u16: "CameraCalibration1",
  50724'u16: "CameraCalibration2",
  50725'u16: "ReductionMatrix1",
  50726'u16: "ReductionMatrix2",
  50727'u16: "AnalogBalance",
  50728'u16: "AsShotNeutral",
  50729'u16: "AsShotWhiteXY",
  50730'u16: "BaselineExposure",
  50731'u16: "BaselineNoise",
  50732'u16: "BaselineSharpness",
  50733'u16: "BayerGreenSplit",
  50734'u16: "LinearResponseLimit",
  50735'u16: "CameraSerialNumber",
  50736'u16: "DNGLensInfo",
  50737'u16: "ChromaBlurRadius",
  50738'u16: "AntiAliasStrength",
  50739'u16: "ShadowScale",
  50740'u16: "PrivateData",
  50741'u16: "MakerNoteSafety",
  50752'u16: "RawImageSegmentation",
  50778'u16: "CalibrationIlluminant1",
  50779'u16: "CalibrationIlluminant2",
  50780'u16: "BestQualityScale",
  50781'u16: "RawDataUniqueID",
  50784'u16: "AliasLayerMetadata",
  50827'u16: "OriginalRawFileName",
  50828'u16: "OriginalRawFileData",
  50829'u16: "ActiveArea",
  50830'u16: "MaskedAreas",
  50831'u16: "AsShotICCProfile",
  50832'u16: "AsShotPreProfileMatrix",
  50833'u16: "CurrentICCProfile",
  50834'u16: "CurrentPreProfileMatrix",
  50879'u16: "ColorimetricReference",
  50885'u16: "SRawType",
  50898'u16: "PanasonicTitle",
  50899'u16: "PanasonicTitle2",
  50931'u16: "CameraCalibrationSig",
  50932'u16: "ProfileCalibrationSig",
  50933'u16: "ProfileIFD",
  50934'u16: "AsShotProfileName",
  50935'u16: "NoiseReductionApplied",
  50936'u16: "ProfileName",
  50937'u16: "ProfileHueSatMapDims",
  50938'u16: "ProfileHueSatMapData1",
  50939'u16: "ProfileHueSatMapData2",
  50940'u16: "ProfileToneCurve",
  50941'u16: "ProfileEmbedPolicy",
  50942'u16: "ProfileCopyright",
  50964'u16: "ForwardMatrix1",
  50965'u16: "ForwardMatrix2",
  50966'u16: "PreviewApplicationName",
  50967'u16: "PreviewApplicationVersion",
  50968'u16: "PreviewSettingsName",
  50969'u16: "PreviewSettingsDigest",
  50970'u16: "PreviewColorSpace",
  50971'u16: "PreviewDateTime",
  50972'u16: "RawImageDigest",
  50973'u16: "OriginalRawFileDigest",
  50974'u16: "SubTileBlockSize",
  50975'u16: "RowInterleaveFactor",
  50981'u16: "ProfileLookTableDims",
  50982'u16: "ProfileLookTableData",
  51008'u16: "OpcodeList1",
  51009'u16: "OpcodeList2",
  51022'u16: "OpcodeList3",
  51041'u16: "NoiseProfile",
  51043'u16: "TimeCodes",
  51044'u16: "FrameRate",
  51058'u16: "TStop",
  51081'u16: "ReelName",
  51089'u16: "OriginalDefaultFinalSize",
  51090'u16: "OriginalBestQualitySize",
  51091'u16: "OriginalDefaultCropSize",
  51105'u16: "CameraLabel",
  51107'u16: "ProfileHueSatMapEncoding",
  51108'u16: "ProfileLookTableEncoding",
  51109'u16: "BaselineExposureOffset",
  51110'u16: "DefaultBlackRender",
  51111'u16: "NewRawImageDigest",
  51112'u16: "RawToPreviewGain",
  51125'u16: "DefaultUserCrop",
  59932'u16: "Padding",
  59933'u16: "OffsetSchema",
  65000'u16: "OwnerName2",
  65001'u16: "SerialNumber2",
  65002'u16: "Lens",
  65024'u16: "KDCIFD",
  65100'u16: "RawFile",
  65101'u16: "Converter",
  65102'u16: "WhiteBalance2",
  65105'u16: "Exposure",
  65106'u16: "Shadows",
  65107'u16: "Brightness",
  65108'u16: "Contrast2",
  65109'u16: "Saturation2",
  65110'u16: "Sharpness2",
  65111'u16: "Smoothness",
  65112'u16: "MoireFilter",
}.toOrderedTable


iterator tags*(): tuple[key: uint16, value: string] =
  ## Iterates over all tiff tags.
  for k, v in tagToString.pairs():
    yield((k,v))


proc tagName*(tag: uint16): string =
  ## Return the human readable name of the given tag. If the tag isn't
  ## found, the tag is converted to a string and returned.

  let name = tagToString.getOrDefault(tag)
  if name != "":
    result = "$1($2)" % [name, $tag]
  else:
    result = $tag


proc tagName*(tagString: string): string =
  ## Return the human readable name of the given tag. If the tag isn't
  ## found, the tagString is returned.

  var tag: uint16
  try:
    tag = (uint16)parseUint(tagString)
  except:
    return tagString
  result = tagName(tag)


proc keyNameTiff*(section: string, key: string): string =
  ## Return the name of the key for the given section of metadata or
  ## "" when not known.
  let name = tagName(key)
  if name == key:
    result = ""
  else:
    result = name