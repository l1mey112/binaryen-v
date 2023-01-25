[translated]
module main

type BinaryenIndex = u32
type BinaryenType = &u32
[c:'BinaryenTypeNone']
fn binaryentypenone() BinaryenType

[c:'BinaryenTypeInt32']
fn binaryentypeint32() BinaryenType

[c:'BinaryenTypeInt64']
fn binaryentypeint64() BinaryenType

[c:'BinaryenTypeFloat32']
fn binaryentypefloat32() BinaryenType

[c:'BinaryenTypeFloat64']
fn binaryentypefloat64() BinaryenType

[c:'BinaryenTypeVec128']
fn binaryentypevec128() BinaryenType

[c:'BinaryenTypeFuncref']
fn binaryentypefuncref() BinaryenType

[c:'BinaryenTypeExternref']
fn binaryentypeexternref() BinaryenType

[c:'BinaryenTypeAnyref']
fn binaryentypeanyref() BinaryenType

[c:'BinaryenTypeEqref']
fn binaryentypeeqref() BinaryenType

[c:'BinaryenTypeI31ref']
fn binaryentypei31ref() BinaryenType

[c:'BinaryenTypeDataref']
fn binaryentypedataref() BinaryenType

[c:'BinaryenTypeArrayref']
fn binaryentypearrayref() BinaryenType

[c:'BinaryenTypeStringref']
fn binaryentypestringref() BinaryenType

[c:'BinaryenTypeStringviewWTF8']
fn binaryentypestringviewwtf8() BinaryenType

[c:'BinaryenTypeStringviewWTF16']
fn binaryentypestringviewwtf16() BinaryenType

[c:'BinaryenTypeStringviewIter']
fn binaryentypestringviewiter() BinaryenType

[c:'BinaryenTypeNullref']
fn binaryentypenullref() BinaryenType

[c:'BinaryenTypeNullExternref']
fn binaryentypenullexternref() BinaryenType

[c:'BinaryenTypeNullFuncref']
fn binaryentypenullfuncref() BinaryenType

[c:'BinaryenTypeUnreachable']
fn binaryentypeunreachable() BinaryenType

[c:'BinaryenTypeAuto']
fn binaryentypeauto() BinaryenType

[c:'BinaryenTypeCreate']
fn binaryentypecreate(valuetypes &BinaryenType, numtypes BinaryenIndex) BinaryenType

[c:'BinaryenTypeArity']
fn binaryentypearity(t BinaryenType) u32

[c:'BinaryenTypeExpand']
fn binaryentypeexpand(t BinaryenType, buf &BinaryenType) 

[c:'BinaryenNone']
fn binaryennone() BinaryenType

[c:'BinaryenInt32']
fn binaryenint32() BinaryenType

[c:'BinaryenInt64']
fn binaryenint64() BinaryenType

[c:'BinaryenFloat32']
fn binaryenfloat32() BinaryenType

[c:'BinaryenFloat64']
fn binaryenfloat64() BinaryenType

[c:'BinaryenUndefined']
fn binaryenundefined() BinaryenType

type BinaryenPackedType = u32
[c:'BinaryenPackedTypeNotPacked']
fn binaryenpackedtypenotpacked() BinaryenPackedType

[c:'BinaryenPackedTypeInt8']
fn binaryenpackedtypeint8() BinaryenPackedType

[c:'BinaryenPackedTypeInt16']
fn binaryenpackedtypeint16() BinaryenPackedType

type BinaryenHeapType = &u32
[c:'BinaryenHeapTypeExt']
fn binaryenheaptypeext() BinaryenHeapType

[c:'BinaryenHeapTypeFunc']
fn binaryenheaptypefunc() BinaryenHeapType

[c:'BinaryenHeapTypeAny']
fn binaryenheaptypeany() BinaryenHeapType

[c:'BinaryenHeapTypeEq']
fn binaryenheaptypeeq() BinaryenHeapType

[c:'BinaryenHeapTypeI31']
fn binaryenheaptypei31() BinaryenHeapType

[c:'BinaryenHeapTypeData']
fn binaryenheaptypedata() BinaryenHeapType

[c:'BinaryenHeapTypeArray']
fn binaryenheaptypearray() BinaryenHeapType

[c:'BinaryenHeapTypeString']
fn binaryenheaptypestring() BinaryenHeapType

[c:'BinaryenHeapTypeStringviewWTF8']
fn binaryenheaptypestringviewwtf8() BinaryenHeapType

[c:'BinaryenHeapTypeStringviewWTF16']
fn binaryenheaptypestringviewwtf16() BinaryenHeapType

[c:'BinaryenHeapTypeStringviewIter']
fn binaryenheaptypestringviewiter() BinaryenHeapType

[c:'BinaryenHeapTypeNone']
fn binaryenheaptypenone() BinaryenHeapType

[c:'BinaryenHeapTypeNoext']
fn binaryenheaptypenoext() BinaryenHeapType

[c:'BinaryenHeapTypeNofunc']
fn binaryenheaptypenofunc() BinaryenHeapType

[c:'BinaryenHeapTypeIsBasic']
fn binaryenheaptypeisbasic(heaptype BinaryenHeapType) bool

[c:'BinaryenHeapTypeIsSignature']
fn binaryenheaptypeissignature(heaptype BinaryenHeapType) bool

[c:'BinaryenHeapTypeIsStruct']
fn binaryenheaptypeisstruct(heaptype BinaryenHeapType) bool

[c:'BinaryenHeapTypeIsArray']
fn binaryenheaptypeisarray(heaptype BinaryenHeapType) bool

[c:'BinaryenHeapTypeIsBottom']
fn binaryenheaptypeisbottom(heaptype BinaryenHeapType) bool

[c:'BinaryenHeapTypeGetBottom']
fn binaryenheaptypegetbottom(heaptype BinaryenHeapType) BinaryenHeapType

[c:'BinaryenHeapTypeIsSubType']
fn binaryenheaptypeissubtype(left BinaryenHeapType, right BinaryenHeapType) bool

[c:'BinaryenStructTypeGetNumFields']
fn binaryenstructtypegetnumfields(heaptype BinaryenHeapType) BinaryenIndex

[c:'BinaryenStructTypeGetFieldType']
fn binaryenstructtypegetfieldtype(heaptype BinaryenHeapType, index BinaryenIndex) BinaryenType

[c:'BinaryenStructTypeGetFieldPackedType']
fn binaryenstructtypegetfieldpackedtype(heaptype BinaryenHeapType, index BinaryenIndex) BinaryenPackedType

[c:'BinaryenStructTypeIsFieldMutable']
fn binaryenstructtypeisfieldmutable(heaptype BinaryenHeapType, index BinaryenIndex) bool

[c:'BinaryenArrayTypeGetElementType']
fn binaryenarraytypegetelementtype(heaptype BinaryenHeapType) BinaryenType

[c:'BinaryenArrayTypeGetElementPackedType']
fn binaryenarraytypegetelementpackedtype(heaptype BinaryenHeapType) BinaryenPackedType

[c:'BinaryenArrayTypeIsElementMutable']
fn binaryenarraytypeiselementmutable(heaptype BinaryenHeapType) bool

[c:'BinaryenSignatureTypeGetParams']
fn binaryensignaturetypegetparams(heaptype BinaryenHeapType) BinaryenType

[c:'BinaryenSignatureTypeGetResults']
fn binaryensignaturetypegetresults(heaptype BinaryenHeapType) BinaryenType

[c:'BinaryenTypeGetHeapType']
fn binaryentypegetheaptype(type_ BinaryenType) BinaryenHeapType

[c:'BinaryenTypeIsNullable']
fn binaryentypeisnullable(type_ BinaryenType) bool

[c:'BinaryenTypeFromHeapType']
fn binaryentypefromheaptype(heaptype BinaryenHeapType, nullable bool) BinaryenType

type BinaryenTypeSystem = u32
[c:'BinaryenTypeSystemEquirecursive']
fn binaryentypesystemequirecursive() BinaryenTypeSystem

[c:'BinaryenTypeSystemNominal']
fn binaryentypesystemnominal() BinaryenTypeSystem

[c:'BinaryenTypeSystemIsorecursive']
fn binaryentypesystemisorecursive() BinaryenTypeSystem

[c:'BinaryenGetTypeSystem']
fn binaryengettypesystem() BinaryenTypeSystem

[c:'BinaryenSetTypeSystem']
fn binaryensettypesystem(typesystem BinaryenTypeSystem) 

type BinaryenExpressionId = u32
[c:'BinaryenInvalidId']
fn binaryeninvalidid() BinaryenExpressionId

type BinaryenExternalKind = u32
[c:'BinaryenExternalFunction']
fn binaryenexternalfunction() BinaryenExternalKind

[c:'BinaryenExternalTable']
fn binaryenexternaltable() BinaryenExternalKind

[c:'BinaryenExternalMemory']
fn binaryenexternalmemory() BinaryenExternalKind

[c:'BinaryenExternalGlobal']
fn binaryenexternalglobal() BinaryenExternalKind

[c:'BinaryenExternalTag']
fn binaryenexternaltag() BinaryenExternalKind

type BinaryenFeatures = u32
[c:'BinaryenFeatureMVP']
fn binaryenfeaturemvp() BinaryenFeatures

[c:'BinaryenFeatureAtomics']
fn binaryenfeatureatomics() BinaryenFeatures

[c:'BinaryenFeatureBulkMemory']
fn binaryenfeaturebulkmemory() BinaryenFeatures

[c:'BinaryenFeatureMutableGlobals']
fn binaryenfeaturemutableglobals() BinaryenFeatures

[c:'BinaryenFeatureNontrappingFPToInt']
fn binaryenfeaturenontrappingfptoint() BinaryenFeatures

[c:'BinaryenFeatureSignExt']
fn binaryenfeaturesignext() BinaryenFeatures

[c:'BinaryenFeatureSIMD128']
fn binaryenfeaturesimd128() BinaryenFeatures

[c:'BinaryenFeatureExceptionHandling']
fn binaryenfeatureexceptionhandling() BinaryenFeatures

[c:'BinaryenFeatureTailCall']
fn binaryenfeaturetailcall() BinaryenFeatures

[c:'BinaryenFeatureReferenceTypes']
fn binaryenfeaturereferencetypes() BinaryenFeatures

[c:'BinaryenFeatureMultivalue']
fn binaryenfeaturemultivalue() BinaryenFeatures

[c:'BinaryenFeatureGC']
fn binaryenfeaturegc() BinaryenFeatures

[c:'BinaryenFeatureMemory64']
fn binaryenfeaturememory64() BinaryenFeatures

[c:'BinaryenFeatureRelaxedSIMD']
fn binaryenfeaturerelaxedsimd() BinaryenFeatures

[c:'BinaryenFeatureExtendedConst']
fn binaryenfeatureextendedconst() BinaryenFeatures

[c:'BinaryenFeatureStrings']
fn binaryenfeaturestrings() BinaryenFeatures

[c:'BinaryenFeatureMultiMemories']
fn binaryenfeaturemultimemories() BinaryenFeatures

[c:'BinaryenFeatureAll']
fn binaryenfeatureall() BinaryenFeatures

type BinaryenModuleRef = voidptr
[c:'BinaryenModuleCreate']
fn binaryenmodulecreate() BinaryenModuleRef

[c:'BinaryenModuleDispose']
fn binaryenmoduledispose(module_ BinaryenModuleRef) 

struct BinaryenLiteral { 
	type_ &u32
}
[c:'BinaryenLiteralInt32']
fn binaryenliteralint32(x int) BinaryenLiteral

[c:'BinaryenLiteralInt64']
fn binaryenliteralint64(x i64) BinaryenLiteral

[c:'BinaryenLiteralFloat32']
fn binaryenliteralfloat32(x f32) BinaryenLiteral

[c:'BinaryenLiteralFloat64']
fn binaryenliteralfloat64(x f64) BinaryenLiteral

[c:'BinaryenLiteralVec128']
fn binaryenliteralvec128(x &u8) BinaryenLiteral

[c:'BinaryenLiteralFloat32Bits']
fn binaryenliteralfloat32bits(x int) BinaryenLiteral

[c:'BinaryenLiteralFloat64Bits']
fn binaryenliteralfloat64bits(x i64) BinaryenLiteral

type BinaryenOp = int
[c:'BinaryenClzInt32']
fn binaryenclzint32() BinaryenOp

[c:'BinaryenCtzInt32']
fn binaryenctzint32() BinaryenOp

[c:'BinaryenPopcntInt32']
fn binaryenpopcntint32() BinaryenOp

[c:'BinaryenNegFloat32']
fn binaryennegfloat32() BinaryenOp

[c:'BinaryenAbsFloat32']
fn binaryenabsfloat32() BinaryenOp

[c:'BinaryenCeilFloat32']
fn binaryenceilfloat32() BinaryenOp

[c:'BinaryenFloorFloat32']
fn binaryenfloorfloat32() BinaryenOp

[c:'BinaryenTruncFloat32']
fn binaryentruncfloat32() BinaryenOp

[c:'BinaryenNearestFloat32']
fn binaryennearestfloat32() BinaryenOp

[c:'BinaryenSqrtFloat32']
fn binaryensqrtfloat32() BinaryenOp

[c:'BinaryenEqZInt32']
fn binaryeneqzint32() BinaryenOp

[c:'BinaryenClzInt64']
fn binaryenclzint64() BinaryenOp

[c:'BinaryenCtzInt64']
fn binaryenctzint64() BinaryenOp

[c:'BinaryenPopcntInt64']
fn binaryenpopcntint64() BinaryenOp

[c:'BinaryenNegFloat64']
fn binaryennegfloat64() BinaryenOp

[c:'BinaryenAbsFloat64']
fn binaryenabsfloat64() BinaryenOp

[c:'BinaryenCeilFloat64']
fn binaryenceilfloat64() BinaryenOp

[c:'BinaryenFloorFloat64']
fn binaryenfloorfloat64() BinaryenOp

[c:'BinaryenTruncFloat64']
fn binaryentruncfloat64() BinaryenOp

[c:'BinaryenNearestFloat64']
fn binaryennearestfloat64() BinaryenOp

[c:'BinaryenSqrtFloat64']
fn binaryensqrtfloat64() BinaryenOp

[c:'BinaryenEqZInt64']
fn binaryeneqzint64() BinaryenOp

[c:'BinaryenExtendSInt32']
fn binaryenextendsint32() BinaryenOp

[c:'BinaryenExtendUInt32']
fn binaryenextenduint32() BinaryenOp

[c:'BinaryenWrapInt64']
fn binaryenwrapint64() BinaryenOp

[c:'BinaryenTruncSFloat32ToInt32']
fn binaryentruncsfloat32toint32() BinaryenOp

[c:'BinaryenTruncSFloat32ToInt64']
fn binaryentruncsfloat32toint64() BinaryenOp

[c:'BinaryenTruncUFloat32ToInt32']
fn binaryentruncufloat32toint32() BinaryenOp

[c:'BinaryenTruncUFloat32ToInt64']
fn binaryentruncufloat32toint64() BinaryenOp

[c:'BinaryenTruncSFloat64ToInt32']
fn binaryentruncsfloat64toint32() BinaryenOp

[c:'BinaryenTruncSFloat64ToInt64']
fn binaryentruncsfloat64toint64() BinaryenOp

[c:'BinaryenTruncUFloat64ToInt32']
fn binaryentruncufloat64toint32() BinaryenOp

[c:'BinaryenTruncUFloat64ToInt64']
fn binaryentruncufloat64toint64() BinaryenOp

[c:'BinaryenReinterpretFloat32']
fn binaryenreinterpretfloat32() BinaryenOp

[c:'BinaryenReinterpretFloat64']
fn binaryenreinterpretfloat64() BinaryenOp

[c:'BinaryenConvertSInt32ToFloat32']
fn binaryenconvertsint32tofloat32() BinaryenOp

[c:'BinaryenConvertSInt32ToFloat64']
fn binaryenconvertsint32tofloat64() BinaryenOp

[c:'BinaryenConvertUInt32ToFloat32']
fn binaryenconvertuint32tofloat32() BinaryenOp

[c:'BinaryenConvertUInt32ToFloat64']
fn binaryenconvertuint32tofloat64() BinaryenOp

[c:'BinaryenConvertSInt64ToFloat32']
fn binaryenconvertsint64tofloat32() BinaryenOp

[c:'BinaryenConvertSInt64ToFloat64']
fn binaryenconvertsint64tofloat64() BinaryenOp

[c:'BinaryenConvertUInt64ToFloat32']
fn binaryenconvertuint64tofloat32() BinaryenOp

[c:'BinaryenConvertUInt64ToFloat64']
fn binaryenconvertuint64tofloat64() BinaryenOp

[c:'BinaryenPromoteFloat32']
fn binaryenpromotefloat32() BinaryenOp

[c:'BinaryenDemoteFloat64']
fn binaryendemotefloat64() BinaryenOp

[c:'BinaryenReinterpretInt32']
fn binaryenreinterpretint32() BinaryenOp

[c:'BinaryenReinterpretInt64']
fn binaryenreinterpretint64() BinaryenOp

[c:'BinaryenExtendS8Int32']
fn binaryenextends8int32() BinaryenOp

[c:'BinaryenExtendS16Int32']
fn binaryenextends16int32() BinaryenOp

[c:'BinaryenExtendS8Int64']
fn binaryenextends8int64() BinaryenOp

[c:'BinaryenExtendS16Int64']
fn binaryenextends16int64() BinaryenOp

[c:'BinaryenExtendS32Int64']
fn binaryenextends32int64() BinaryenOp

[c:'BinaryenAddInt32']
fn binaryenaddint32() BinaryenOp

[c:'BinaryenSubInt32']
fn binaryensubint32() BinaryenOp

[c:'BinaryenMulInt32']
fn binaryenmulint32() BinaryenOp

[c:'BinaryenDivSInt32']
fn binaryendivsint32() BinaryenOp

[c:'BinaryenDivUInt32']
fn binaryendivuint32() BinaryenOp

[c:'BinaryenRemSInt32']
fn binaryenremsint32() BinaryenOp

[c:'BinaryenRemUInt32']
fn binaryenremuint32() BinaryenOp

[c:'BinaryenAndInt32']
fn binaryenandint32() BinaryenOp

[c:'BinaryenOrInt32']
fn binaryenorint32() BinaryenOp

[c:'BinaryenXorInt32']
fn binaryenxorint32() BinaryenOp

[c:'BinaryenShlInt32']
fn binaryenshlint32() BinaryenOp

[c:'BinaryenShrUInt32']
fn binaryenshruint32() BinaryenOp

[c:'BinaryenShrSInt32']
fn binaryenshrsint32() BinaryenOp

[c:'BinaryenRotLInt32']
fn binaryenrotlint32() BinaryenOp

[c:'BinaryenRotRInt32']
fn binaryenrotrint32() BinaryenOp

[c:'BinaryenEqInt32']
fn binaryeneqint32() BinaryenOp

[c:'BinaryenNeInt32']
fn binaryenneint32() BinaryenOp

[c:'BinaryenLtSInt32']
fn binaryenltsint32() BinaryenOp

[c:'BinaryenLtUInt32']
fn binaryenltuint32() BinaryenOp

[c:'BinaryenLeSInt32']
fn binaryenlesint32() BinaryenOp

[c:'BinaryenLeUInt32']
fn binaryenleuint32() BinaryenOp

[c:'BinaryenGtSInt32']
fn binaryengtsint32() BinaryenOp

[c:'BinaryenGtUInt32']
fn binaryengtuint32() BinaryenOp

[c:'BinaryenGeSInt32']
fn binaryengesint32() BinaryenOp

[c:'BinaryenGeUInt32']
fn binaryengeuint32() BinaryenOp

[c:'BinaryenAddInt64']
fn binaryenaddint64() BinaryenOp

[c:'BinaryenSubInt64']
fn binaryensubint64() BinaryenOp

[c:'BinaryenMulInt64']
fn binaryenmulint64() BinaryenOp

[c:'BinaryenDivSInt64']
fn binaryendivsint64() BinaryenOp

[c:'BinaryenDivUInt64']
fn binaryendivuint64() BinaryenOp

[c:'BinaryenRemSInt64']
fn binaryenremsint64() BinaryenOp

[c:'BinaryenRemUInt64']
fn binaryenremuint64() BinaryenOp

[c:'BinaryenAndInt64']
fn binaryenandint64() BinaryenOp

[c:'BinaryenOrInt64']
fn binaryenorint64() BinaryenOp

[c:'BinaryenXorInt64']
fn binaryenxorint64() BinaryenOp

[c:'BinaryenShlInt64']
fn binaryenshlint64() BinaryenOp

[c:'BinaryenShrUInt64']
fn binaryenshruint64() BinaryenOp

[c:'BinaryenShrSInt64']
fn binaryenshrsint64() BinaryenOp

[c:'BinaryenRotLInt64']
fn binaryenrotlint64() BinaryenOp

[c:'BinaryenRotRInt64']
fn binaryenrotrint64() BinaryenOp

[c:'BinaryenEqInt64']
fn binaryeneqint64() BinaryenOp

[c:'BinaryenNeInt64']
fn binaryenneint64() BinaryenOp

[c:'BinaryenLtSInt64']
fn binaryenltsint64() BinaryenOp

[c:'BinaryenLtUInt64']
fn binaryenltuint64() BinaryenOp

[c:'BinaryenLeSInt64']
fn binaryenlesint64() BinaryenOp

[c:'BinaryenLeUInt64']
fn binaryenleuint64() BinaryenOp

[c:'BinaryenGtSInt64']
fn binaryengtsint64() BinaryenOp

[c:'BinaryenGtUInt64']
fn binaryengtuint64() BinaryenOp

[c:'BinaryenGeSInt64']
fn binaryengesint64() BinaryenOp

[c:'BinaryenGeUInt64']
fn binaryengeuint64() BinaryenOp

[c:'BinaryenAddFloat32']
fn binaryenaddfloat32() BinaryenOp

[c:'BinaryenSubFloat32']
fn binaryensubfloat32() BinaryenOp

[c:'BinaryenMulFloat32']
fn binaryenmulfloat32() BinaryenOp

[c:'BinaryenDivFloat32']
fn binaryendivfloat32() BinaryenOp

[c:'BinaryenCopySignFloat32']
fn binaryencopysignfloat32() BinaryenOp

[c:'BinaryenMinFloat32']
fn binaryenminfloat32() BinaryenOp

[c:'BinaryenMaxFloat32']
fn binaryenmaxfloat32() BinaryenOp

[c:'BinaryenEqFloat32']
fn binaryeneqfloat32() BinaryenOp

[c:'BinaryenNeFloat32']
fn binaryennefloat32() BinaryenOp

[c:'BinaryenLtFloat32']
fn binaryenltfloat32() BinaryenOp

[c:'BinaryenLeFloat32']
fn binaryenlefloat32() BinaryenOp

[c:'BinaryenGtFloat32']
fn binaryengtfloat32() BinaryenOp

[c:'BinaryenGeFloat32']
fn binaryengefloat32() BinaryenOp

[c:'BinaryenAddFloat64']
fn binaryenaddfloat64() BinaryenOp

[c:'BinaryenSubFloat64']
fn binaryensubfloat64() BinaryenOp

[c:'BinaryenMulFloat64']
fn binaryenmulfloat64() BinaryenOp

[c:'BinaryenDivFloat64']
fn binaryendivfloat64() BinaryenOp

[c:'BinaryenCopySignFloat64']
fn binaryencopysignfloat64() BinaryenOp

[c:'BinaryenMinFloat64']
fn binaryenminfloat64() BinaryenOp

[c:'BinaryenMaxFloat64']
fn binaryenmaxfloat64() BinaryenOp

[c:'BinaryenEqFloat64']
fn binaryeneqfloat64() BinaryenOp

[c:'BinaryenNeFloat64']
fn binaryennefloat64() BinaryenOp

[c:'BinaryenLtFloat64']
fn binaryenltfloat64() BinaryenOp

[c:'BinaryenLeFloat64']
fn binaryenlefloat64() BinaryenOp

[c:'BinaryenGtFloat64']
fn binaryengtfloat64() BinaryenOp

[c:'BinaryenGeFloat64']
fn binaryengefloat64() BinaryenOp

[c:'BinaryenAtomicRMWAdd']
fn binaryenatomicrmwadd() BinaryenOp

[c:'BinaryenAtomicRMWSub']
fn binaryenatomicrmwsub() BinaryenOp

[c:'BinaryenAtomicRMWAnd']
fn binaryenatomicrmwand() BinaryenOp

[c:'BinaryenAtomicRMWOr']
fn binaryenatomicrmwor() BinaryenOp

[c:'BinaryenAtomicRMWXor']
fn binaryenatomicrmwxor() BinaryenOp

[c:'BinaryenAtomicRMWXchg']
fn binaryenatomicrmwxchg() BinaryenOp

[c:'BinaryenTruncSatSFloat32ToInt32']
fn binaryentruncsatsfloat32toint32() BinaryenOp

[c:'BinaryenTruncSatSFloat32ToInt64']
fn binaryentruncsatsfloat32toint64() BinaryenOp

[c:'BinaryenTruncSatUFloat32ToInt32']
fn binaryentruncsatufloat32toint32() BinaryenOp

[c:'BinaryenTruncSatUFloat32ToInt64']
fn binaryentruncsatufloat32toint64() BinaryenOp

[c:'BinaryenTruncSatSFloat64ToInt32']
fn binaryentruncsatsfloat64toint32() BinaryenOp

[c:'BinaryenTruncSatSFloat64ToInt64']
fn binaryentruncsatsfloat64toint64() BinaryenOp

[c:'BinaryenTruncSatUFloat64ToInt32']
fn binaryentruncsatufloat64toint32() BinaryenOp

[c:'BinaryenTruncSatUFloat64ToInt64']
fn binaryentruncsatufloat64toint64() BinaryenOp

[c:'BinaryenSplatVecI8x16']
fn binaryensplatveci8x16() BinaryenOp

[c:'BinaryenExtractLaneSVecI8x16']
fn binaryenextractlanesveci8x16() BinaryenOp

[c:'BinaryenExtractLaneUVecI8x16']
fn binaryenextractlaneuveci8x16() BinaryenOp

[c:'BinaryenReplaceLaneVecI8x16']
fn binaryenreplacelaneveci8x16() BinaryenOp

[c:'BinaryenSplatVecI16x8']
fn binaryensplatveci16x8() BinaryenOp

[c:'BinaryenExtractLaneSVecI16x8']
fn binaryenextractlanesveci16x8() BinaryenOp

[c:'BinaryenExtractLaneUVecI16x8']
fn binaryenextractlaneuveci16x8() BinaryenOp

[c:'BinaryenReplaceLaneVecI16x8']
fn binaryenreplacelaneveci16x8() BinaryenOp

[c:'BinaryenSplatVecI32x4']
fn binaryensplatveci32x4() BinaryenOp

[c:'BinaryenExtractLaneVecI32x4']
fn binaryenextractlaneveci32x4() BinaryenOp

[c:'BinaryenReplaceLaneVecI32x4']
fn binaryenreplacelaneveci32x4() BinaryenOp

[c:'BinaryenSplatVecI64x2']
fn binaryensplatveci64x2() BinaryenOp

[c:'BinaryenExtractLaneVecI64x2']
fn binaryenextractlaneveci64x2() BinaryenOp

[c:'BinaryenReplaceLaneVecI64x2']
fn binaryenreplacelaneveci64x2() BinaryenOp

[c:'BinaryenSplatVecF32x4']
fn binaryensplatvecf32x4() BinaryenOp

[c:'BinaryenExtractLaneVecF32x4']
fn binaryenextractlanevecf32x4() BinaryenOp

[c:'BinaryenReplaceLaneVecF32x4']
fn binaryenreplacelanevecf32x4() BinaryenOp

[c:'BinaryenSplatVecF64x2']
fn binaryensplatvecf64x2() BinaryenOp

[c:'BinaryenExtractLaneVecF64x2']
fn binaryenextractlanevecf64x2() BinaryenOp

[c:'BinaryenReplaceLaneVecF64x2']
fn binaryenreplacelanevecf64x2() BinaryenOp

[c:'BinaryenEqVecI8x16']
fn binaryeneqveci8x16() BinaryenOp

[c:'BinaryenNeVecI8x16']
fn binaryenneveci8x16() BinaryenOp

[c:'BinaryenLtSVecI8x16']
fn binaryenltsveci8x16() BinaryenOp

[c:'BinaryenLtUVecI8x16']
fn binaryenltuveci8x16() BinaryenOp

[c:'BinaryenGtSVecI8x16']
fn binaryengtsveci8x16() BinaryenOp

[c:'BinaryenGtUVecI8x16']
fn binaryengtuveci8x16() BinaryenOp

[c:'BinaryenLeSVecI8x16']
fn binaryenlesveci8x16() BinaryenOp

[c:'BinaryenLeUVecI8x16']
fn binaryenleuveci8x16() BinaryenOp

[c:'BinaryenGeSVecI8x16']
fn binaryengesveci8x16() BinaryenOp

[c:'BinaryenGeUVecI8x16']
fn binaryengeuveci8x16() BinaryenOp

[c:'BinaryenEqVecI16x8']
fn binaryeneqveci16x8() BinaryenOp

[c:'BinaryenNeVecI16x8']
fn binaryenneveci16x8() BinaryenOp

[c:'BinaryenLtSVecI16x8']
fn binaryenltsveci16x8() BinaryenOp

[c:'BinaryenLtUVecI16x8']
fn binaryenltuveci16x8() BinaryenOp

[c:'BinaryenGtSVecI16x8']
fn binaryengtsveci16x8() BinaryenOp

[c:'BinaryenGtUVecI16x8']
fn binaryengtuveci16x8() BinaryenOp

[c:'BinaryenLeSVecI16x8']
fn binaryenlesveci16x8() BinaryenOp

[c:'BinaryenLeUVecI16x8']
fn binaryenleuveci16x8() BinaryenOp

[c:'BinaryenGeSVecI16x8']
fn binaryengesveci16x8() BinaryenOp

[c:'BinaryenGeUVecI16x8']
fn binaryengeuveci16x8() BinaryenOp

[c:'BinaryenEqVecI32x4']
fn binaryeneqveci32x4() BinaryenOp

[c:'BinaryenNeVecI32x4']
fn binaryenneveci32x4() BinaryenOp

[c:'BinaryenLtSVecI32x4']
fn binaryenltsveci32x4() BinaryenOp

[c:'BinaryenLtUVecI32x4']
fn binaryenltuveci32x4() BinaryenOp

[c:'BinaryenGtSVecI32x4']
fn binaryengtsveci32x4() BinaryenOp

[c:'BinaryenGtUVecI32x4']
fn binaryengtuveci32x4() BinaryenOp

[c:'BinaryenLeSVecI32x4']
fn binaryenlesveci32x4() BinaryenOp

[c:'BinaryenLeUVecI32x4']
fn binaryenleuveci32x4() BinaryenOp

[c:'BinaryenGeSVecI32x4']
fn binaryengesveci32x4() BinaryenOp

[c:'BinaryenGeUVecI32x4']
fn binaryengeuveci32x4() BinaryenOp

[c:'BinaryenEqVecI64x2']
fn binaryeneqveci64x2() BinaryenOp

[c:'BinaryenNeVecI64x2']
fn binaryenneveci64x2() BinaryenOp

[c:'BinaryenLtSVecI64x2']
fn binaryenltsveci64x2() BinaryenOp

[c:'BinaryenGtSVecI64x2']
fn binaryengtsveci64x2() BinaryenOp

[c:'BinaryenLeSVecI64x2']
fn binaryenlesveci64x2() BinaryenOp

[c:'BinaryenGeSVecI64x2']
fn binaryengesveci64x2() BinaryenOp

[c:'BinaryenEqVecF32x4']
fn binaryeneqvecf32x4() BinaryenOp

[c:'BinaryenNeVecF32x4']
fn binaryennevecf32x4() BinaryenOp

[c:'BinaryenLtVecF32x4']
fn binaryenltvecf32x4() BinaryenOp

[c:'BinaryenGtVecF32x4']
fn binaryengtvecf32x4() BinaryenOp

[c:'BinaryenLeVecF32x4']
fn binaryenlevecf32x4() BinaryenOp

[c:'BinaryenGeVecF32x4']
fn binaryengevecf32x4() BinaryenOp

[c:'BinaryenEqVecF64x2']
fn binaryeneqvecf64x2() BinaryenOp

[c:'BinaryenNeVecF64x2']
fn binaryennevecf64x2() BinaryenOp

[c:'BinaryenLtVecF64x2']
fn binaryenltvecf64x2() BinaryenOp

[c:'BinaryenGtVecF64x2']
fn binaryengtvecf64x2() BinaryenOp

[c:'BinaryenLeVecF64x2']
fn binaryenlevecf64x2() BinaryenOp

[c:'BinaryenGeVecF64x2']
fn binaryengevecf64x2() BinaryenOp

[c:'BinaryenNotVec128']
fn binaryennotvec128() BinaryenOp

[c:'BinaryenAndVec128']
fn binaryenandvec128() BinaryenOp

[c:'BinaryenOrVec128']
fn binaryenorvec128() BinaryenOp

[c:'BinaryenXorVec128']
fn binaryenxorvec128() BinaryenOp

[c:'BinaryenAndNotVec128']
fn binaryenandnotvec128() BinaryenOp

[c:'BinaryenBitselectVec128']
fn binaryenbitselectvec128() BinaryenOp

[c:'BinaryenAnyTrueVec128']
fn binaryenanytruevec128() BinaryenOp

[c:'BinaryenPopcntVecI8x16']
fn binaryenpopcntveci8x16() BinaryenOp

[c:'BinaryenAbsVecI8x16']
fn binaryenabsveci8x16() BinaryenOp

[c:'BinaryenNegVecI8x16']
fn binaryennegveci8x16() BinaryenOp

[c:'BinaryenAllTrueVecI8x16']
fn binaryenalltrueveci8x16() BinaryenOp

[c:'BinaryenBitmaskVecI8x16']
fn binaryenbitmaskveci8x16() BinaryenOp

[c:'BinaryenShlVecI8x16']
fn binaryenshlveci8x16() BinaryenOp

[c:'BinaryenShrSVecI8x16']
fn binaryenshrsveci8x16() BinaryenOp

[c:'BinaryenShrUVecI8x16']
fn binaryenshruveci8x16() BinaryenOp

[c:'BinaryenAddVecI8x16']
fn binaryenaddveci8x16() BinaryenOp

[c:'BinaryenAddSatSVecI8x16']
fn binaryenaddsatsveci8x16() BinaryenOp

[c:'BinaryenAddSatUVecI8x16']
fn binaryenaddsatuveci8x16() BinaryenOp

[c:'BinaryenSubVecI8x16']
fn binaryensubveci8x16() BinaryenOp

[c:'BinaryenSubSatSVecI8x16']
fn binaryensubsatsveci8x16() BinaryenOp

[c:'BinaryenSubSatUVecI8x16']
fn binaryensubsatuveci8x16() BinaryenOp

[c:'BinaryenMinSVecI8x16']
fn binaryenminsveci8x16() BinaryenOp

[c:'BinaryenMinUVecI8x16']
fn binaryenminuveci8x16() BinaryenOp

[c:'BinaryenMaxSVecI8x16']
fn binaryenmaxsveci8x16() BinaryenOp

[c:'BinaryenMaxUVecI8x16']
fn binaryenmaxuveci8x16() BinaryenOp

[c:'BinaryenAvgrUVecI8x16']
fn binaryenavgruveci8x16() BinaryenOp

[c:'BinaryenAbsVecI16x8']
fn binaryenabsveci16x8() BinaryenOp

[c:'BinaryenNegVecI16x8']
fn binaryennegveci16x8() BinaryenOp

[c:'BinaryenAllTrueVecI16x8']
fn binaryenalltrueveci16x8() BinaryenOp

[c:'BinaryenBitmaskVecI16x8']
fn binaryenbitmaskveci16x8() BinaryenOp

[c:'BinaryenShlVecI16x8']
fn binaryenshlveci16x8() BinaryenOp

[c:'BinaryenShrSVecI16x8']
fn binaryenshrsveci16x8() BinaryenOp

[c:'BinaryenShrUVecI16x8']
fn binaryenshruveci16x8() BinaryenOp

[c:'BinaryenAddVecI16x8']
fn binaryenaddveci16x8() BinaryenOp

[c:'BinaryenAddSatSVecI16x8']
fn binaryenaddsatsveci16x8() BinaryenOp

[c:'BinaryenAddSatUVecI16x8']
fn binaryenaddsatuveci16x8() BinaryenOp

[c:'BinaryenSubVecI16x8']
fn binaryensubveci16x8() BinaryenOp

[c:'BinaryenSubSatSVecI16x8']
fn binaryensubsatsveci16x8() BinaryenOp

[c:'BinaryenSubSatUVecI16x8']
fn binaryensubsatuveci16x8() BinaryenOp

[c:'BinaryenMulVecI16x8']
fn binaryenmulveci16x8() BinaryenOp

[c:'BinaryenMinSVecI16x8']
fn binaryenminsveci16x8() BinaryenOp

[c:'BinaryenMinUVecI16x8']
fn binaryenminuveci16x8() BinaryenOp

[c:'BinaryenMaxSVecI16x8']
fn binaryenmaxsveci16x8() BinaryenOp

[c:'BinaryenMaxUVecI16x8']
fn binaryenmaxuveci16x8() BinaryenOp

[c:'BinaryenAvgrUVecI16x8']
fn binaryenavgruveci16x8() BinaryenOp

[c:'BinaryenQ15MulrSatSVecI16x8']
fn binaryenq15mulrsatsveci16x8() BinaryenOp

[c:'BinaryenExtMulLowSVecI16x8']
fn binaryenextmullowsveci16x8() BinaryenOp

[c:'BinaryenExtMulHighSVecI16x8']
fn binaryenextmulhighsveci16x8() BinaryenOp

[c:'BinaryenExtMulLowUVecI16x8']
fn binaryenextmullowuveci16x8() BinaryenOp

[c:'BinaryenExtMulHighUVecI16x8']
fn binaryenextmulhighuveci16x8() BinaryenOp

[c:'BinaryenAbsVecI32x4']
fn binaryenabsveci32x4() BinaryenOp

[c:'BinaryenNegVecI32x4']
fn binaryennegveci32x4() BinaryenOp

[c:'BinaryenAllTrueVecI32x4']
fn binaryenalltrueveci32x4() BinaryenOp

[c:'BinaryenBitmaskVecI32x4']
fn binaryenbitmaskveci32x4() BinaryenOp

[c:'BinaryenShlVecI32x4']
fn binaryenshlveci32x4() BinaryenOp

[c:'BinaryenShrSVecI32x4']
fn binaryenshrsveci32x4() BinaryenOp

[c:'BinaryenShrUVecI32x4']
fn binaryenshruveci32x4() BinaryenOp

[c:'BinaryenAddVecI32x4']
fn binaryenaddveci32x4() BinaryenOp

[c:'BinaryenSubVecI32x4']
fn binaryensubveci32x4() BinaryenOp

[c:'BinaryenMulVecI32x4']
fn binaryenmulveci32x4() BinaryenOp

[c:'BinaryenMinSVecI32x4']
fn binaryenminsveci32x4() BinaryenOp

[c:'BinaryenMinUVecI32x4']
fn binaryenminuveci32x4() BinaryenOp

[c:'BinaryenMaxSVecI32x4']
fn binaryenmaxsveci32x4() BinaryenOp

[c:'BinaryenMaxUVecI32x4']
fn binaryenmaxuveci32x4() BinaryenOp

[c:'BinaryenDotSVecI16x8ToVecI32x4']
fn binaryendotsveci16x8toveci32x4() BinaryenOp

[c:'BinaryenExtMulLowSVecI32x4']
fn binaryenextmullowsveci32x4() BinaryenOp

[c:'BinaryenExtMulHighSVecI32x4']
fn binaryenextmulhighsveci32x4() BinaryenOp

[c:'BinaryenExtMulLowUVecI32x4']
fn binaryenextmullowuveci32x4() BinaryenOp

[c:'BinaryenExtMulHighUVecI32x4']
fn binaryenextmulhighuveci32x4() BinaryenOp

[c:'BinaryenAbsVecI64x2']
fn binaryenabsveci64x2() BinaryenOp

[c:'BinaryenNegVecI64x2']
fn binaryennegveci64x2() BinaryenOp

[c:'BinaryenAllTrueVecI64x2']
fn binaryenalltrueveci64x2() BinaryenOp

[c:'BinaryenBitmaskVecI64x2']
fn binaryenbitmaskveci64x2() BinaryenOp

[c:'BinaryenShlVecI64x2']
fn binaryenshlveci64x2() BinaryenOp

[c:'BinaryenShrSVecI64x2']
fn binaryenshrsveci64x2() BinaryenOp

[c:'BinaryenShrUVecI64x2']
fn binaryenshruveci64x2() BinaryenOp

[c:'BinaryenAddVecI64x2']
fn binaryenaddveci64x2() BinaryenOp

[c:'BinaryenSubVecI64x2']
fn binaryensubveci64x2() BinaryenOp

[c:'BinaryenMulVecI64x2']
fn binaryenmulveci64x2() BinaryenOp

[c:'BinaryenExtMulLowSVecI64x2']
fn binaryenextmullowsveci64x2() BinaryenOp

[c:'BinaryenExtMulHighSVecI64x2']
fn binaryenextmulhighsveci64x2() BinaryenOp

[c:'BinaryenExtMulLowUVecI64x2']
fn binaryenextmullowuveci64x2() BinaryenOp

[c:'BinaryenExtMulHighUVecI64x2']
fn binaryenextmulhighuveci64x2() BinaryenOp

[c:'BinaryenAbsVecF32x4']
fn binaryenabsvecf32x4() BinaryenOp

[c:'BinaryenNegVecF32x4']
fn binaryennegvecf32x4() BinaryenOp

[c:'BinaryenSqrtVecF32x4']
fn binaryensqrtvecf32x4() BinaryenOp

[c:'BinaryenAddVecF32x4']
fn binaryenaddvecf32x4() BinaryenOp

[c:'BinaryenSubVecF32x4']
fn binaryensubvecf32x4() BinaryenOp

[c:'BinaryenMulVecF32x4']
fn binaryenmulvecf32x4() BinaryenOp

[c:'BinaryenDivVecF32x4']
fn binaryendivvecf32x4() BinaryenOp

[c:'BinaryenMinVecF32x4']
fn binaryenminvecf32x4() BinaryenOp

[c:'BinaryenMaxVecF32x4']
fn binaryenmaxvecf32x4() BinaryenOp

[c:'BinaryenPMinVecF32x4']
fn binaryenpminvecf32x4() BinaryenOp

[c:'BinaryenPMaxVecF32x4']
fn binaryenpmaxvecf32x4() BinaryenOp

[c:'BinaryenCeilVecF32x4']
fn binaryenceilvecf32x4() BinaryenOp

[c:'BinaryenFloorVecF32x4']
fn binaryenfloorvecf32x4() BinaryenOp

[c:'BinaryenTruncVecF32x4']
fn binaryentruncvecf32x4() BinaryenOp

[c:'BinaryenNearestVecF32x4']
fn binaryennearestvecf32x4() BinaryenOp

[c:'BinaryenAbsVecF64x2']
fn binaryenabsvecf64x2() BinaryenOp

[c:'BinaryenNegVecF64x2']
fn binaryennegvecf64x2() BinaryenOp

[c:'BinaryenSqrtVecF64x2']
fn binaryensqrtvecf64x2() BinaryenOp

[c:'BinaryenAddVecF64x2']
fn binaryenaddvecf64x2() BinaryenOp

[c:'BinaryenSubVecF64x2']
fn binaryensubvecf64x2() BinaryenOp

[c:'BinaryenMulVecF64x2']
fn binaryenmulvecf64x2() BinaryenOp

[c:'BinaryenDivVecF64x2']
fn binaryendivvecf64x2() BinaryenOp

[c:'BinaryenMinVecF64x2']
fn binaryenminvecf64x2() BinaryenOp

[c:'BinaryenMaxVecF64x2']
fn binaryenmaxvecf64x2() BinaryenOp

[c:'BinaryenPMinVecF64x2']
fn binaryenpminvecf64x2() BinaryenOp

[c:'BinaryenPMaxVecF64x2']
fn binaryenpmaxvecf64x2() BinaryenOp

[c:'BinaryenCeilVecF64x2']
fn binaryenceilvecf64x2() BinaryenOp

[c:'BinaryenFloorVecF64x2']
fn binaryenfloorvecf64x2() BinaryenOp

[c:'BinaryenTruncVecF64x2']
fn binaryentruncvecf64x2() BinaryenOp

[c:'BinaryenNearestVecF64x2']
fn binaryennearestvecf64x2() BinaryenOp

[c:'BinaryenExtAddPairwiseSVecI8x16ToI16x8']
fn binaryenextaddpairwisesveci8x16toi16x8() BinaryenOp

[c:'BinaryenExtAddPairwiseUVecI8x16ToI16x8']
fn binaryenextaddpairwiseuveci8x16toi16x8() BinaryenOp

[c:'BinaryenExtAddPairwiseSVecI16x8ToI32x4']
fn binaryenextaddpairwisesveci16x8toi32x4() BinaryenOp

[c:'BinaryenExtAddPairwiseUVecI16x8ToI32x4']
fn binaryenextaddpairwiseuveci16x8toi32x4() BinaryenOp

[c:'BinaryenTruncSatSVecF32x4ToVecI32x4']
fn binaryentruncsatsvecf32x4toveci32x4() BinaryenOp

[c:'BinaryenTruncSatUVecF32x4ToVecI32x4']
fn binaryentruncsatuvecf32x4toveci32x4() BinaryenOp

[c:'BinaryenConvertSVecI32x4ToVecF32x4']
fn binaryenconvertsveci32x4tovecf32x4() BinaryenOp

[c:'BinaryenConvertUVecI32x4ToVecF32x4']
fn binaryenconvertuveci32x4tovecf32x4() BinaryenOp

[c:'BinaryenLoad8SplatVec128']
fn binaryenload8splatvec128() BinaryenOp

[c:'BinaryenLoad16SplatVec128']
fn binaryenload16splatvec128() BinaryenOp

[c:'BinaryenLoad32SplatVec128']
fn binaryenload32splatvec128() BinaryenOp

[c:'BinaryenLoad64SplatVec128']
fn binaryenload64splatvec128() BinaryenOp

[c:'BinaryenLoad8x8SVec128']
fn binaryenload8x8svec128() BinaryenOp

[c:'BinaryenLoad8x8UVec128']
fn binaryenload8x8uvec128() BinaryenOp

[c:'BinaryenLoad16x4SVec128']
fn binaryenload16x4svec128() BinaryenOp

[c:'BinaryenLoad16x4UVec128']
fn binaryenload16x4uvec128() BinaryenOp

[c:'BinaryenLoad32x2SVec128']
fn binaryenload32x2svec128() BinaryenOp

[c:'BinaryenLoad32x2UVec128']
fn binaryenload32x2uvec128() BinaryenOp

[c:'BinaryenLoad32ZeroVec128']
fn binaryenload32zerovec128() BinaryenOp

[c:'BinaryenLoad64ZeroVec128']
fn binaryenload64zerovec128() BinaryenOp

[c:'BinaryenLoad8LaneVec128']
fn binaryenload8lanevec128() BinaryenOp

[c:'BinaryenLoad16LaneVec128']
fn binaryenload16lanevec128() BinaryenOp

[c:'BinaryenLoad32LaneVec128']
fn binaryenload32lanevec128() BinaryenOp

[c:'BinaryenLoad64LaneVec128']
fn binaryenload64lanevec128() BinaryenOp

[c:'BinaryenStore8LaneVec128']
fn binaryenstore8lanevec128() BinaryenOp

[c:'BinaryenStore16LaneVec128']
fn binaryenstore16lanevec128() BinaryenOp

[c:'BinaryenStore32LaneVec128']
fn binaryenstore32lanevec128() BinaryenOp

[c:'BinaryenStore64LaneVec128']
fn binaryenstore64lanevec128() BinaryenOp

[c:'BinaryenNarrowSVecI16x8ToVecI8x16']
fn binaryennarrowsveci16x8toveci8x16() BinaryenOp

[c:'BinaryenNarrowUVecI16x8ToVecI8x16']
fn binaryennarrowuveci16x8toveci8x16() BinaryenOp

[c:'BinaryenNarrowSVecI32x4ToVecI16x8']
fn binaryennarrowsveci32x4toveci16x8() BinaryenOp

[c:'BinaryenNarrowUVecI32x4ToVecI16x8']
fn binaryennarrowuveci32x4toveci16x8() BinaryenOp

[c:'BinaryenExtendLowSVecI8x16ToVecI16x8']
fn binaryenextendlowsveci8x16toveci16x8() BinaryenOp

[c:'BinaryenExtendHighSVecI8x16ToVecI16x8']
fn binaryenextendhighsveci8x16toveci16x8() BinaryenOp

[c:'BinaryenExtendLowUVecI8x16ToVecI16x8']
fn binaryenextendlowuveci8x16toveci16x8() BinaryenOp

[c:'BinaryenExtendHighUVecI8x16ToVecI16x8']
fn binaryenextendhighuveci8x16toveci16x8() BinaryenOp

[c:'BinaryenExtendLowSVecI16x8ToVecI32x4']
fn binaryenextendlowsveci16x8toveci32x4() BinaryenOp

[c:'BinaryenExtendHighSVecI16x8ToVecI32x4']
fn binaryenextendhighsveci16x8toveci32x4() BinaryenOp

[c:'BinaryenExtendLowUVecI16x8ToVecI32x4']
fn binaryenextendlowuveci16x8toveci32x4() BinaryenOp

[c:'BinaryenExtendHighUVecI16x8ToVecI32x4']
fn binaryenextendhighuveci16x8toveci32x4() BinaryenOp

[c:'BinaryenExtendLowSVecI32x4ToVecI64x2']
fn binaryenextendlowsveci32x4toveci64x2() BinaryenOp

[c:'BinaryenExtendHighSVecI32x4ToVecI64x2']
fn binaryenextendhighsveci32x4toveci64x2() BinaryenOp

[c:'BinaryenExtendLowUVecI32x4ToVecI64x2']
fn binaryenextendlowuveci32x4toveci64x2() BinaryenOp

[c:'BinaryenExtendHighUVecI32x4ToVecI64x2']
fn binaryenextendhighuveci32x4toveci64x2() BinaryenOp

[c:'BinaryenConvertLowSVecI32x4ToVecF64x2']
fn binaryenconvertlowsveci32x4tovecf64x2() BinaryenOp

[c:'BinaryenConvertLowUVecI32x4ToVecF64x2']
fn binaryenconvertlowuveci32x4tovecf64x2() BinaryenOp

[c:'BinaryenTruncSatZeroSVecF64x2ToVecI32x4']
fn binaryentruncsatzerosvecf64x2toveci32x4() BinaryenOp

[c:'BinaryenTruncSatZeroUVecF64x2ToVecI32x4']
fn binaryentruncsatzerouvecf64x2toveci32x4() BinaryenOp

[c:'BinaryenDemoteZeroVecF64x2ToVecF32x4']
fn binaryendemotezerovecf64x2tovecf32x4() BinaryenOp

[c:'BinaryenPromoteLowVecF32x4ToVecF64x2']
fn binaryenpromotelowvecf32x4tovecf64x2() BinaryenOp

[c:'BinaryenSwizzleVecI8x16']
fn binaryenswizzleveci8x16() BinaryenOp

[c:'BinaryenRefIsNull']
fn binaryenrefisnull() BinaryenOp

[c:'BinaryenRefIsFunc']
fn binaryenrefisfunc() BinaryenOp

[c:'BinaryenRefIsData']
fn binaryenrefisdata() BinaryenOp

[c:'BinaryenRefIsI31']
fn binaryenrefisi31() BinaryenOp

[c:'BinaryenRefAsNonNull']
fn binaryenrefasnonnull() BinaryenOp

[c:'BinaryenRefAsFunc']
fn binaryenrefasfunc() BinaryenOp

[c:'BinaryenRefAsData']
fn binaryenrefasdata() BinaryenOp

[c:'BinaryenRefAsI31']
fn binaryenrefasi31() BinaryenOp

[c:'BinaryenRefAsExternInternalize']
fn binaryenrefasexterninternalize() BinaryenOp

[c:'BinaryenRefAsExternExternalize']
fn binaryenrefasexternexternalize() BinaryenOp

[c:'BinaryenBrOnNull']
fn binaryenbronnull() BinaryenOp

[c:'BinaryenBrOnNonNull']
fn binaryenbronnonnull() BinaryenOp

[c:'BinaryenBrOnCast']
fn binaryenbroncast() BinaryenOp

[c:'BinaryenBrOnCastFail']
fn binaryenbroncastfail() BinaryenOp

[c:'BinaryenBrOnFunc']
fn binaryenbronfunc() BinaryenOp

[c:'BinaryenBrOnNonFunc']
fn binaryenbronnonfunc() BinaryenOp

[c:'BinaryenBrOnData']
fn binaryenbrondata() BinaryenOp

[c:'BinaryenBrOnNonData']
fn binaryenbronnondata() BinaryenOp

[c:'BinaryenBrOnI31']
fn binaryenbroni31() BinaryenOp

[c:'BinaryenBrOnNonI31']
fn binaryenbronnoni31() BinaryenOp

[c:'BinaryenStringNewUTF8']
fn binaryenstringnewutf8() BinaryenOp

[c:'BinaryenStringNewWTF8']
fn binaryenstringnewwtf8() BinaryenOp

[c:'BinaryenStringNewReplace']
fn binaryenstringnewreplace() BinaryenOp

[c:'BinaryenStringNewWTF16']
fn binaryenstringnewwtf16() BinaryenOp

[c:'BinaryenStringNewUTF8Array']
fn binaryenstringnewutf8array() BinaryenOp

[c:'BinaryenStringNewWTF8Array']
fn binaryenstringnewwtf8array() BinaryenOp

[c:'BinaryenStringNewReplaceArray']
fn binaryenstringnewreplacearray() BinaryenOp

[c:'BinaryenStringNewWTF16Array']
fn binaryenstringnewwtf16array() BinaryenOp

[c:'BinaryenStringMeasureUTF8']
fn binaryenstringmeasureutf8() BinaryenOp

[c:'BinaryenStringMeasureWTF8']
fn binaryenstringmeasurewtf8() BinaryenOp

[c:'BinaryenStringMeasureWTF16']
fn binaryenstringmeasurewtf16() BinaryenOp

[c:'BinaryenStringMeasureIsUSV']
fn binaryenstringmeasureisusv() BinaryenOp

[c:'BinaryenStringMeasureWTF16View']
fn binaryenstringmeasurewtf16view() BinaryenOp

[c:'BinaryenStringEncodeUTF8']
fn binaryenstringencodeutf8() BinaryenOp

[c:'BinaryenStringEncodeWTF8']
fn binaryenstringencodewtf8() BinaryenOp

[c:'BinaryenStringEncodeWTF16']
fn binaryenstringencodewtf16() BinaryenOp

[c:'BinaryenStringEncodeUTF8Array']
fn binaryenstringencodeutf8array() BinaryenOp

[c:'BinaryenStringEncodeWTF8Array']
fn binaryenstringencodewtf8array() BinaryenOp

[c:'BinaryenStringEncodeWTF16Array']
fn binaryenstringencodewtf16array() BinaryenOp

[c:'BinaryenStringAsWTF8']
fn binaryenstringaswtf8() BinaryenOp

[c:'BinaryenStringAsWTF16']
fn binaryenstringaswtf16() BinaryenOp

[c:'BinaryenStringAsIter']
fn binaryenstringasiter() BinaryenOp

[c:'BinaryenStringIterMoveAdvance']
fn binaryenstringitermoveadvance() BinaryenOp

[c:'BinaryenStringIterMoveRewind']
fn binaryenstringitermoverewind() BinaryenOp

[c:'BinaryenStringSliceWTF8']
fn binaryenstringslicewtf8() BinaryenOp

[c:'BinaryenStringSliceWTF16']
fn binaryenstringslicewtf16() BinaryenOp

type BinaryenExpressionRef = voidptr
[c:'BinaryenBlock']
fn binaryenblock(module_ BinaryenModuleRef, name &i8, children &BinaryenExpressionRef, numchildren BinaryenIndex, type_ BinaryenType) BinaryenExpressionRef

[c:'BinaryenIf']
fn binaryenif(module_ BinaryenModuleRef, condition BinaryenExpressionRef, iftrue BinaryenExpressionRef, iffalse BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenLoop']
fn binaryenloop(module_ BinaryenModuleRef, in_ &i8, body BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenBreak']
fn binaryenbreak(module_ BinaryenModuleRef, name &i8, condition BinaryenExpressionRef, value BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenSwitch']
fn binaryenswitch(module_ BinaryenModuleRef, names &&u8, numnames BinaryenIndex, defaultname &i8, condition BinaryenExpressionRef, value BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenCall']
fn binaryencall(module_ BinaryenModuleRef, target &i8, operands &BinaryenExpressionRef, numoperands BinaryenIndex, returntype BinaryenType) BinaryenExpressionRef

[c:'BinaryenCallIndirect']
fn binaryencallindirect(module_ BinaryenModuleRef, table &i8, target BinaryenExpressionRef, operands &BinaryenExpressionRef, numoperands BinaryenIndex, params BinaryenType, results BinaryenType) BinaryenExpressionRef

[c:'BinaryenReturnCall']
fn binaryenreturncall(module_ BinaryenModuleRef, target &i8, operands &BinaryenExpressionRef, numoperands BinaryenIndex, returntype BinaryenType) BinaryenExpressionRef

[c:'BinaryenReturnCallIndirect']
fn binaryenreturncallindirect(module_ BinaryenModuleRef, table &i8, target BinaryenExpressionRef, operands &BinaryenExpressionRef, numoperands BinaryenIndex, params BinaryenType, results BinaryenType) BinaryenExpressionRef

[c:'BinaryenLocalGet']
fn binaryenlocalget(module_ BinaryenModuleRef, index BinaryenIndex, type_ BinaryenType) BinaryenExpressionRef

[c:'BinaryenLocalSet']
fn binaryenlocalset(module_ BinaryenModuleRef, index BinaryenIndex, value BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenLocalTee']
fn binaryenlocaltee(module_ BinaryenModuleRef, index BinaryenIndex, value BinaryenExpressionRef, type_ BinaryenType) BinaryenExpressionRef

[c:'BinaryenGlobalGet']
fn binaryenglobalget(module_ BinaryenModuleRef, name &i8, type_ BinaryenType) BinaryenExpressionRef

[c:'BinaryenGlobalSet']
fn binaryenglobalset(module_ BinaryenModuleRef, name &i8, value BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenLoad']
fn binaryenload(module_ BinaryenModuleRef, bytes u32, signed_ bool, offset u32, align u32, type_ BinaryenType, ptr BinaryenExpressionRef, memoryname &i8) BinaryenExpressionRef

[c:'BinaryenStore']
fn binaryenstore(module_ BinaryenModuleRef, bytes u32, offset u32, align u32, ptr BinaryenExpressionRef, value BinaryenExpressionRef, type_ BinaryenType, memoryname &i8) BinaryenExpressionRef

[c:'BinaryenConst']
fn binaryenconst(module_ BinaryenModuleRef, value BinaryenLiteral) BinaryenExpressionRef

[c:'BinaryenUnary']
fn binaryenunary(module_ BinaryenModuleRef, op BinaryenOp, value BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenBinary']
fn binaryenbinary(module_ BinaryenModuleRef, op BinaryenOp, left BinaryenExpressionRef, right BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenSelect']
fn binaryenselect(module_ BinaryenModuleRef, condition BinaryenExpressionRef, iftrue BinaryenExpressionRef, iffalse BinaryenExpressionRef, type_ BinaryenType) BinaryenExpressionRef

[c:'BinaryenDrop']
fn binaryendrop(module_ BinaryenModuleRef, value BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenReturn']
fn binaryenreturn(module_ BinaryenModuleRef, value BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenMemorySize']
fn binaryenmemorysize(module_ BinaryenModuleRef, memoryname &i8, memoryis64 bool) BinaryenExpressionRef

[c:'BinaryenMemoryGrow']
fn binaryenmemorygrow(module_ BinaryenModuleRef, delta BinaryenExpressionRef, memoryname &i8, memoryis64 bool) BinaryenExpressionRef

[c:'BinaryenNop']
fn binaryennop(module_ BinaryenModuleRef) BinaryenExpressionRef

[c:'BinaryenUnreachable']
fn binaryenunreachable(module_ BinaryenModuleRef) BinaryenExpressionRef

[c:'BinaryenAtomicLoad']
fn binaryenatomicload(module_ BinaryenModuleRef, bytes u32, offset u32, type_ BinaryenType, ptr BinaryenExpressionRef, memoryname &i8) BinaryenExpressionRef

[c:'BinaryenAtomicStore']
fn binaryenatomicstore(module_ BinaryenModuleRef, bytes u32, offset u32, ptr BinaryenExpressionRef, value BinaryenExpressionRef, type_ BinaryenType, memoryname &i8) BinaryenExpressionRef

[c:'BinaryenAtomicRMW']
fn binaryenatomicrmw(module_ BinaryenModuleRef, op BinaryenOp, bytes BinaryenIndex, offset BinaryenIndex, ptr BinaryenExpressionRef, value BinaryenExpressionRef, type_ BinaryenType, memoryname &i8) BinaryenExpressionRef

[c:'BinaryenAtomicCmpxchg']
fn binaryenatomiccmpxchg(module_ BinaryenModuleRef, bytes BinaryenIndex, offset BinaryenIndex, ptr BinaryenExpressionRef, expected BinaryenExpressionRef, replacement BinaryenExpressionRef, type_ BinaryenType, memoryname &i8) BinaryenExpressionRef

[c:'BinaryenAtomicWait']
fn binaryenatomicwait(module_ BinaryenModuleRef, ptr BinaryenExpressionRef, expected BinaryenExpressionRef, timeout BinaryenExpressionRef, type_ BinaryenType, memoryname &i8) BinaryenExpressionRef

[c:'BinaryenAtomicNotify']
fn binaryenatomicnotify(module_ BinaryenModuleRef, ptr BinaryenExpressionRef, notifycount BinaryenExpressionRef, memoryname &i8) BinaryenExpressionRef

[c:'BinaryenAtomicFence']
fn binaryenatomicfence(module_ BinaryenModuleRef) BinaryenExpressionRef

[c:'BinaryenSIMDExtract']
fn binaryensimdextract(module_ BinaryenModuleRef, op BinaryenOp, vec BinaryenExpressionRef, index u8) BinaryenExpressionRef

[c:'BinaryenSIMDReplace']
fn binaryensimdreplace(module_ BinaryenModuleRef, op BinaryenOp, vec BinaryenExpressionRef, index u8, value BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenSIMDShuffle']
fn binaryensimdshuffle(module_ BinaryenModuleRef, left BinaryenExpressionRef, right BinaryenExpressionRef, mask &u8) BinaryenExpressionRef

[c:'BinaryenSIMDTernary']
fn binaryensimdternary(module_ BinaryenModuleRef, op BinaryenOp, a BinaryenExpressionRef, b BinaryenExpressionRef, c BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenSIMDShift']
fn binaryensimdshift(module_ BinaryenModuleRef, op BinaryenOp, vec BinaryenExpressionRef, shift BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenSIMDLoad']
fn binaryensimdload(module_ BinaryenModuleRef, op BinaryenOp, offset u32, align u32, ptr BinaryenExpressionRef, name &i8) BinaryenExpressionRef

[c:'BinaryenSIMDLoadStoreLane']
fn binaryensimdloadstorelane(module_ BinaryenModuleRef, op BinaryenOp, offset u32, align u32, index u8, ptr BinaryenExpressionRef, vec BinaryenExpressionRef, memoryname &i8) BinaryenExpressionRef

[c:'BinaryenMemoryInit']
fn binaryenmemoryinit(module_ BinaryenModuleRef, segment u32, dest BinaryenExpressionRef, offset BinaryenExpressionRef, size BinaryenExpressionRef, memoryname &i8) BinaryenExpressionRef

[c:'BinaryenDataDrop']
fn binaryendatadrop(module_ BinaryenModuleRef, segment u32) BinaryenExpressionRef

[c:'BinaryenMemoryCopy']
fn binaryenmemorycopy(module_ BinaryenModuleRef, dest BinaryenExpressionRef, source BinaryenExpressionRef, size BinaryenExpressionRef, destmemory &i8, sourcememory &i8) BinaryenExpressionRef

[c:'BinaryenMemoryFill']
fn binaryenmemoryfill(module_ BinaryenModuleRef, dest BinaryenExpressionRef, value BinaryenExpressionRef, size BinaryenExpressionRef, memoryname &i8) BinaryenExpressionRef

[c:'BinaryenRefNull']
fn binaryenrefnull(module_ BinaryenModuleRef, type_ BinaryenType) BinaryenExpressionRef

[c:'BinaryenRefIs']
fn binaryenrefis(module_ BinaryenModuleRef, op BinaryenOp, value BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenRefAs']
fn binaryenrefas(module_ BinaryenModuleRef, op BinaryenOp, value BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenRefFunc']
fn binaryenreffunc(module_ BinaryenModuleRef, func &i8, type_ BinaryenType) BinaryenExpressionRef

[c:'BinaryenRefEq']
fn binaryenrefeq(module_ BinaryenModuleRef, left BinaryenExpressionRef, right BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenTableGet']
fn binaryentableget(module_ BinaryenModuleRef, name &i8, index BinaryenExpressionRef, type_ BinaryenType) BinaryenExpressionRef

[c:'BinaryenTableSet']
fn binaryentableset(module_ BinaryenModuleRef, name &i8, index BinaryenExpressionRef, value BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenTableSize']
fn binaryentablesize(module_ BinaryenModuleRef, name &i8) BinaryenExpressionRef

[c:'BinaryenTableGrow']
fn binaryentablegrow(module_ BinaryenModuleRef, name &i8, value BinaryenExpressionRef, delta BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenTry']
fn binaryentry(module_ BinaryenModuleRef, name &i8, body BinaryenExpressionRef, catchtags &&u8, numcatchtags BinaryenIndex, catchbodies &BinaryenExpressionRef, numcatchbodies BinaryenIndex, delegatetarget &i8) BinaryenExpressionRef

[c:'BinaryenThrow']
fn binaryenthrow(module_ BinaryenModuleRef, tag &i8, operands &BinaryenExpressionRef, numoperands BinaryenIndex) BinaryenExpressionRef

[c:'BinaryenRethrow']
fn binaryenrethrow(module_ BinaryenModuleRef, target &i8) BinaryenExpressionRef

[c:'BinaryenTupleMake']
fn binaryentuplemake(module_ BinaryenModuleRef, operands &BinaryenExpressionRef, numoperands BinaryenIndex) BinaryenExpressionRef

[c:'BinaryenTupleExtract']
fn binaryentupleextract(module_ BinaryenModuleRef, tuple BinaryenExpressionRef, index BinaryenIndex) BinaryenExpressionRef

[c:'BinaryenPop']
fn binaryenpop(module_ BinaryenModuleRef, type_ BinaryenType) BinaryenExpressionRef

[c:'BinaryenI31New']
fn binaryeni31new(module_ BinaryenModuleRef, value BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenI31Get']
fn binaryeni31get(module_ BinaryenModuleRef, i31 BinaryenExpressionRef, signed_ bool) BinaryenExpressionRef

[c:'BinaryenCallRef']
fn binaryencallref(module_ BinaryenModuleRef, target BinaryenExpressionRef, operands &BinaryenExpressionRef, numoperands BinaryenIndex, type_ BinaryenType, isreturn bool) BinaryenExpressionRef

[c:'BinaryenRefTest']
fn binaryenreftest(module_ BinaryenModuleRef, ref BinaryenExpressionRef, intendedtype BinaryenHeapType) BinaryenExpressionRef

[c:'BinaryenRefCast']
fn binaryenrefcast(module_ BinaryenModuleRef, ref BinaryenExpressionRef, intendedtype BinaryenHeapType) BinaryenExpressionRef

[c:'BinaryenBrOn']
fn binaryenbron(module_ BinaryenModuleRef, op BinaryenOp, name &i8, ref BinaryenExpressionRef, intendedtype BinaryenHeapType) BinaryenExpressionRef

[c:'BinaryenStructNew']
fn binaryenstructnew(module_ BinaryenModuleRef, operands &BinaryenExpressionRef, numoperands BinaryenIndex, type_ BinaryenHeapType) BinaryenExpressionRef

[c:'BinaryenStructGet']
fn binaryenstructget(module_ BinaryenModuleRef, index BinaryenIndex, ref BinaryenExpressionRef, type_ BinaryenType, signed_ bool) BinaryenExpressionRef

[c:'BinaryenStructSet']
fn binaryenstructset(module_ BinaryenModuleRef, index BinaryenIndex, ref BinaryenExpressionRef, value BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenArrayNew']
fn binaryenarraynew(module_ BinaryenModuleRef, type_ BinaryenHeapType, size BinaryenExpressionRef, init BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenArrayInit']
fn binaryenarrayinit(module_ BinaryenModuleRef, type_ BinaryenHeapType, values &BinaryenExpressionRef, numvalues BinaryenIndex) BinaryenExpressionRef

[c:'BinaryenArrayGet']
fn binaryenarrayget(module_ BinaryenModuleRef, ref BinaryenExpressionRef, index BinaryenExpressionRef, type_ BinaryenType, signed_ bool) BinaryenExpressionRef

[c:'BinaryenArraySet']
fn binaryenarrayset(module_ BinaryenModuleRef, ref BinaryenExpressionRef, index BinaryenExpressionRef, value BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenArrayLen']
fn binaryenarraylen(module_ BinaryenModuleRef, ref BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenArrayCopy']
fn binaryenarraycopy(module_ BinaryenModuleRef, destref BinaryenExpressionRef, destindex BinaryenExpressionRef, srcref BinaryenExpressionRef, srcindex BinaryenExpressionRef, length BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringNew']
fn binaryenstringnew(module_ BinaryenModuleRef, op BinaryenOp, ptr BinaryenExpressionRef, length BinaryenExpressionRef, start BinaryenExpressionRef, end BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringConst']
fn binaryenstringconst(module_ BinaryenModuleRef, name &i8) BinaryenExpressionRef

[c:'BinaryenStringMeasure']
fn binaryenstringmeasure(module_ BinaryenModuleRef, op BinaryenOp, ref BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringEncode']
fn binaryenstringencode(module_ BinaryenModuleRef, op BinaryenOp, ref BinaryenExpressionRef, ptr BinaryenExpressionRef, start BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringConcat']
fn binaryenstringconcat(module_ BinaryenModuleRef, left BinaryenExpressionRef, right BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringEq']
fn binaryenstringeq(module_ BinaryenModuleRef, left BinaryenExpressionRef, right BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringAs']
fn binaryenstringas(module_ BinaryenModuleRef, op BinaryenOp, ref BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringWTF8Advance']
fn binaryenstringwtf8advance(module_ BinaryenModuleRef, ref BinaryenExpressionRef, pos BinaryenExpressionRef, bytes BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringWTF16Get']
fn binaryenstringwtf16get(module_ BinaryenModuleRef, ref BinaryenExpressionRef, pos BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringIterNext']
fn binaryenstringiternext(module_ BinaryenModuleRef, ref BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringIterMove']
fn binaryenstringitermove(module_ BinaryenModuleRef, op BinaryenOp, ref BinaryenExpressionRef, num BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringSliceWTF']
fn binaryenstringslicewtf(module_ BinaryenModuleRef, op BinaryenOp, ref BinaryenExpressionRef, start BinaryenExpressionRef, end BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringSliceIter']
fn binaryenstringsliceiter(module_ BinaryenModuleRef, ref BinaryenExpressionRef, num BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenExpressionGetId']
fn binaryenexpressiongetid(expr BinaryenExpressionRef) BinaryenExpressionId

[c:'BinaryenExpressionGetType']
fn binaryenexpressiongettype(expr BinaryenExpressionRef) BinaryenType

[c:'BinaryenExpressionSetType']
fn binaryenexpressionsettype(expr BinaryenExpressionRef, type_ BinaryenType) 

[c:'BinaryenExpressionPrint']
fn binaryenexpressionprint(expr BinaryenExpressionRef) 

[c:'BinaryenExpressionFinalize']
fn binaryenexpressionfinalize(expr BinaryenExpressionRef) 

[c:'BinaryenExpressionCopy']
fn binaryenexpressioncopy(expr BinaryenExpressionRef, module_ BinaryenModuleRef) BinaryenExpressionRef

[c:'BinaryenBlockGetName']
fn binaryenblockgetname(expr BinaryenExpressionRef) &i8

[c:'BinaryenBlockSetName']
fn binaryenblocksetname(expr BinaryenExpressionRef, name &i8) 

[c:'BinaryenBlockGetNumChildren']
fn binaryenblockgetnumchildren(expr BinaryenExpressionRef) BinaryenIndex

[c:'BinaryenBlockGetChildAt']
fn binaryenblockgetchildat(expr BinaryenExpressionRef, index BinaryenIndex) BinaryenExpressionRef

[c:'BinaryenBlockSetChildAt']
fn binaryenblocksetchildat(expr BinaryenExpressionRef, index BinaryenIndex, childexpr BinaryenExpressionRef) 

[c:'BinaryenBlockAppendChild']
fn binaryenblockappendchild(expr BinaryenExpressionRef, childexpr BinaryenExpressionRef) BinaryenIndex

[c:'BinaryenBlockInsertChildAt']
fn binaryenblockinsertchildat(expr BinaryenExpressionRef, index BinaryenIndex, childexpr BinaryenExpressionRef) 

[c:'BinaryenBlockRemoveChildAt']
fn binaryenblockremovechildat(expr BinaryenExpressionRef, index BinaryenIndex) BinaryenExpressionRef

[c:'BinaryenIfGetCondition']
fn binaryenifgetcondition(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenIfSetCondition']
fn binaryenifsetcondition(expr BinaryenExpressionRef, condexpr BinaryenExpressionRef) 

[c:'BinaryenIfGetIfTrue']
fn binaryenifgetiftrue(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenIfSetIfTrue']
fn binaryenifsetiftrue(expr BinaryenExpressionRef, iftrueexpr BinaryenExpressionRef) 

[c:'BinaryenIfGetIfFalse']
fn binaryenifgetiffalse(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenIfSetIfFalse']
fn binaryenifsetiffalse(expr BinaryenExpressionRef, iffalseexpr BinaryenExpressionRef) 

[c:'BinaryenLoopGetName']
fn binaryenloopgetname(expr BinaryenExpressionRef) &i8

[c:'BinaryenLoopSetName']
fn binaryenloopsetname(expr BinaryenExpressionRef, name &i8) 

[c:'BinaryenLoopGetBody']
fn binaryenloopgetbody(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenLoopSetBody']
fn binaryenloopsetbody(expr BinaryenExpressionRef, bodyexpr BinaryenExpressionRef) 

[c:'BinaryenBreakGetName']
fn binaryenbreakgetname(expr BinaryenExpressionRef) &i8

[c:'BinaryenBreakSetName']
fn binaryenbreaksetname(expr BinaryenExpressionRef, name &i8) 

[c:'BinaryenBreakGetCondition']
fn binaryenbreakgetcondition(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenBreakSetCondition']
fn binaryenbreaksetcondition(expr BinaryenExpressionRef, condexpr BinaryenExpressionRef) 

[c:'BinaryenBreakGetValue']
fn binaryenbreakgetvalue(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenBreakSetValue']
fn binaryenbreaksetvalue(expr BinaryenExpressionRef, valueexpr BinaryenExpressionRef) 

[c:'BinaryenSwitchGetNumNames']
fn binaryenswitchgetnumnames(expr BinaryenExpressionRef) BinaryenIndex

[c:'BinaryenSwitchGetNameAt']
fn binaryenswitchgetnameat(expr BinaryenExpressionRef, index BinaryenIndex) &i8

[c:'BinaryenSwitchSetNameAt']
fn binaryenswitchsetnameat(expr BinaryenExpressionRef, index BinaryenIndex, name &i8) 

[c:'BinaryenSwitchAppendName']
fn binaryenswitchappendname(expr BinaryenExpressionRef, name &i8) BinaryenIndex

[c:'BinaryenSwitchInsertNameAt']
fn binaryenswitchinsertnameat(expr BinaryenExpressionRef, index BinaryenIndex, name &i8) 

[c:'BinaryenSwitchRemoveNameAt']
fn binaryenswitchremovenameat(expr BinaryenExpressionRef, index BinaryenIndex) &i8

[c:'BinaryenSwitchGetDefaultName']
fn binaryenswitchgetdefaultname(expr BinaryenExpressionRef) &i8

[c:'BinaryenSwitchSetDefaultName']
fn binaryenswitchsetdefaultname(expr BinaryenExpressionRef, name &i8) 

[c:'BinaryenSwitchGetCondition']
fn binaryenswitchgetcondition(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenSwitchSetCondition']
fn binaryenswitchsetcondition(expr BinaryenExpressionRef, condexpr BinaryenExpressionRef) 

[c:'BinaryenSwitchGetValue']
fn binaryenswitchgetvalue(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenSwitchSetValue']
fn binaryenswitchsetvalue(expr BinaryenExpressionRef, valueexpr BinaryenExpressionRef) 

[c:'BinaryenCallGetTarget']
fn binaryencallgettarget(expr BinaryenExpressionRef) &i8

[c:'BinaryenCallSetTarget']
fn binaryencallsettarget(expr BinaryenExpressionRef, target &i8) 

[c:'BinaryenCallGetNumOperands']
fn binaryencallgetnumoperands(expr BinaryenExpressionRef) BinaryenIndex

[c:'BinaryenCallGetOperandAt']
fn binaryencallgetoperandat(expr BinaryenExpressionRef, index BinaryenIndex) BinaryenExpressionRef

[c:'BinaryenCallSetOperandAt']
fn binaryencallsetoperandat(expr BinaryenExpressionRef, index BinaryenIndex, operandexpr BinaryenExpressionRef) 

[c:'BinaryenCallAppendOperand']
fn binaryencallappendoperand(expr BinaryenExpressionRef, operandexpr BinaryenExpressionRef) BinaryenIndex

[c:'BinaryenCallInsertOperandAt']
fn binaryencallinsertoperandat(expr BinaryenExpressionRef, index BinaryenIndex, operandexpr BinaryenExpressionRef) 

[c:'BinaryenCallRemoveOperandAt']
fn binaryencallremoveoperandat(expr BinaryenExpressionRef, index BinaryenIndex) BinaryenExpressionRef

[c:'BinaryenCallIsReturn']
fn binaryencallisreturn(expr BinaryenExpressionRef) bool

[c:'BinaryenCallSetReturn']
fn binaryencallsetreturn(expr BinaryenExpressionRef, isreturn bool) 

[c:'BinaryenCallIndirectGetTarget']
fn binaryencallindirectgettarget(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenCallIndirectSetTarget']
fn binaryencallindirectsettarget(expr BinaryenExpressionRef, targetexpr BinaryenExpressionRef) 

[c:'BinaryenCallIndirectGetTable']
fn binaryencallindirectgettable(expr BinaryenExpressionRef) &i8

[c:'BinaryenCallIndirectSetTable']
fn binaryencallindirectsettable(expr BinaryenExpressionRef, table &i8) 

[c:'BinaryenCallIndirectGetNumOperands']
fn binaryencallindirectgetnumoperands(expr BinaryenExpressionRef) BinaryenIndex

[c:'BinaryenCallIndirectGetOperandAt']
fn binaryencallindirectgetoperandat(expr BinaryenExpressionRef, index BinaryenIndex) BinaryenExpressionRef

[c:'BinaryenCallIndirectSetOperandAt']
fn binaryencallindirectsetoperandat(expr BinaryenExpressionRef, index BinaryenIndex, operandexpr BinaryenExpressionRef) 

[c:'BinaryenCallIndirectAppendOperand']
fn binaryencallindirectappendoperand(expr BinaryenExpressionRef, operandexpr BinaryenExpressionRef) BinaryenIndex

[c:'BinaryenCallIndirectInsertOperandAt']
fn binaryencallindirectinsertoperandat(expr BinaryenExpressionRef, index BinaryenIndex, operandexpr BinaryenExpressionRef) 

[c:'BinaryenCallIndirectRemoveOperandAt']
fn binaryencallindirectremoveoperandat(expr BinaryenExpressionRef, index BinaryenIndex) BinaryenExpressionRef

[c:'BinaryenCallIndirectIsReturn']
fn binaryencallindirectisreturn(expr BinaryenExpressionRef) bool

[c:'BinaryenCallIndirectSetReturn']
fn binaryencallindirectsetreturn(expr BinaryenExpressionRef, isreturn bool) 

[c:'BinaryenCallIndirectGetParams']
fn binaryencallindirectgetparams(expr BinaryenExpressionRef) BinaryenType

[c:'BinaryenCallIndirectSetParams']
fn binaryencallindirectsetparams(expr BinaryenExpressionRef, params BinaryenType) 

[c:'BinaryenCallIndirectGetResults']
fn binaryencallindirectgetresults(expr BinaryenExpressionRef) BinaryenType

[c:'BinaryenCallIndirectSetResults']
fn binaryencallindirectsetresults(expr BinaryenExpressionRef, params BinaryenType) 

[c:'BinaryenLocalGetGetIndex']
fn binaryenlocalgetgetindex(expr BinaryenExpressionRef) BinaryenIndex

[c:'BinaryenLocalGetSetIndex']
fn binaryenlocalgetsetindex(expr BinaryenExpressionRef, index BinaryenIndex) 

[c:'BinaryenLocalSetIsTee']
fn binaryenlocalsetistee(expr BinaryenExpressionRef) bool

[c:'BinaryenLocalSetGetIndex']
fn binaryenlocalsetgetindex(expr BinaryenExpressionRef) BinaryenIndex

[c:'BinaryenLocalSetSetIndex']
fn binaryenlocalsetsetindex(expr BinaryenExpressionRef, index BinaryenIndex) 

[c:'BinaryenLocalSetGetValue']
fn binaryenlocalsetgetvalue(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenLocalSetSetValue']
fn binaryenlocalsetsetvalue(expr BinaryenExpressionRef, valueexpr BinaryenExpressionRef) 

[c:'BinaryenGlobalGetGetName']
fn binaryenglobalgetgetname(expr BinaryenExpressionRef) &i8

[c:'BinaryenGlobalGetSetName']
fn binaryenglobalgetsetname(expr BinaryenExpressionRef, name &i8) 

[c:'BinaryenGlobalSetGetName']
fn binaryenglobalsetgetname(expr BinaryenExpressionRef) &i8

[c:'BinaryenGlobalSetSetName']
fn binaryenglobalsetsetname(expr BinaryenExpressionRef, name &i8) 

[c:'BinaryenGlobalSetGetValue']
fn binaryenglobalsetgetvalue(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenGlobalSetSetValue']
fn binaryenglobalsetsetvalue(expr BinaryenExpressionRef, valueexpr BinaryenExpressionRef) 

[c:'BinaryenTableGetGetTable']
fn binaryentablegetgettable(expr BinaryenExpressionRef) &i8

[c:'BinaryenTableGetSetTable']
fn binaryentablegetsettable(expr BinaryenExpressionRef, table &i8) 

[c:'BinaryenTableGetGetIndex']
fn binaryentablegetgetindex(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenTableGetSetIndex']
fn binaryentablegetsetindex(expr BinaryenExpressionRef, indexexpr BinaryenExpressionRef) 

[c:'BinaryenTableSetGetTable']
fn binaryentablesetgettable(expr BinaryenExpressionRef) &i8

[c:'BinaryenTableSetSetTable']
fn binaryentablesetsettable(expr BinaryenExpressionRef, table &i8) 

[c:'BinaryenTableSetGetIndex']
fn binaryentablesetgetindex(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenTableSetSetIndex']
fn binaryentablesetsetindex(expr BinaryenExpressionRef, indexexpr BinaryenExpressionRef) 

[c:'BinaryenTableSetGetValue']
fn binaryentablesetgetvalue(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenTableSetSetValue']
fn binaryentablesetsetvalue(expr BinaryenExpressionRef, valueexpr BinaryenExpressionRef) 

[c:'BinaryenTableSizeGetTable']
fn binaryentablesizegettable(expr BinaryenExpressionRef) &i8

[c:'BinaryenTableSizeSetTable']
fn binaryentablesizesettable(expr BinaryenExpressionRef, table &i8) 

[c:'BinaryenTableGrowGetTable']
fn binaryentablegrowgettable(expr BinaryenExpressionRef) &i8

[c:'BinaryenTableGrowSetTable']
fn binaryentablegrowsettable(expr BinaryenExpressionRef, table &i8) 

[c:'BinaryenTableGrowGetValue']
fn binaryentablegrowgetvalue(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenTableGrowSetValue']
fn binaryentablegrowsetvalue(expr BinaryenExpressionRef, valueexpr BinaryenExpressionRef) 

[c:'BinaryenTableGrowGetDelta']
fn binaryentablegrowgetdelta(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenTableGrowSetDelta']
fn binaryentablegrowsetdelta(expr BinaryenExpressionRef, deltaexpr BinaryenExpressionRef) 

[c:'BinaryenMemoryGrowGetDelta']
fn binaryenmemorygrowgetdelta(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenMemoryGrowSetDelta']
fn binaryenmemorygrowsetdelta(expr BinaryenExpressionRef, deltaexpr BinaryenExpressionRef) 

[c:'BinaryenLoadIsAtomic']
fn binaryenloadisatomic(expr BinaryenExpressionRef) bool

[c:'BinaryenLoadSetAtomic']
fn binaryenloadsetatomic(expr BinaryenExpressionRef, isatomic bool) 

[c:'BinaryenLoadIsSigned']
fn binaryenloadissigned(expr BinaryenExpressionRef) bool

[c:'BinaryenLoadSetSigned']
fn binaryenloadsetsigned(expr BinaryenExpressionRef, issigned bool) 

[c:'BinaryenLoadGetOffset']
fn binaryenloadgetoffset(expr BinaryenExpressionRef) u32

[c:'BinaryenLoadSetOffset']
fn binaryenloadsetoffset(expr BinaryenExpressionRef, offset u32) 

[c:'BinaryenLoadGetBytes']
fn binaryenloadgetbytes(expr BinaryenExpressionRef) u32

[c:'BinaryenLoadSetBytes']
fn binaryenloadsetbytes(expr BinaryenExpressionRef, bytes u32) 

[c:'BinaryenLoadGetAlign']
fn binaryenloadgetalign(expr BinaryenExpressionRef) u32

[c:'BinaryenLoadSetAlign']
fn binaryenloadsetalign(expr BinaryenExpressionRef, align u32) 

[c:'BinaryenLoadGetPtr']
fn binaryenloadgetptr(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenLoadSetPtr']
fn binaryenloadsetptr(expr BinaryenExpressionRef, ptrexpr BinaryenExpressionRef) 

[c:'BinaryenStoreIsAtomic']
fn binaryenstoreisatomic(expr BinaryenExpressionRef) bool

[c:'BinaryenStoreSetAtomic']
fn binaryenstoresetatomic(expr BinaryenExpressionRef, isatomic bool) 

[c:'BinaryenStoreGetBytes']
fn binaryenstoregetbytes(expr BinaryenExpressionRef) u32

[c:'BinaryenStoreSetBytes']
fn binaryenstoresetbytes(expr BinaryenExpressionRef, bytes u32) 

[c:'BinaryenStoreGetOffset']
fn binaryenstoregetoffset(expr BinaryenExpressionRef) u32

[c:'BinaryenStoreSetOffset']
fn binaryenstoresetoffset(expr BinaryenExpressionRef, offset u32) 

[c:'BinaryenStoreGetAlign']
fn binaryenstoregetalign(expr BinaryenExpressionRef) u32

[c:'BinaryenStoreSetAlign']
fn binaryenstoresetalign(expr BinaryenExpressionRef, align u32) 

[c:'BinaryenStoreGetPtr']
fn binaryenstoregetptr(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStoreSetPtr']
fn binaryenstoresetptr(expr BinaryenExpressionRef, ptrexpr BinaryenExpressionRef) 

[c:'BinaryenStoreGetValue']
fn binaryenstoregetvalue(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStoreSetValue']
fn binaryenstoresetvalue(expr BinaryenExpressionRef, valueexpr BinaryenExpressionRef) 

[c:'BinaryenStoreGetValueType']
fn binaryenstoregetvaluetype(expr BinaryenExpressionRef) BinaryenType

[c:'BinaryenStoreSetValueType']
fn binaryenstoresetvaluetype(expr BinaryenExpressionRef, valuetype BinaryenType) 

[c:'BinaryenConstGetValueI32']
fn binaryenconstgetvaluei32(expr BinaryenExpressionRef) int

[c:'BinaryenConstSetValueI32']
fn binaryenconstsetvaluei32(expr BinaryenExpressionRef, value int) 

[c:'BinaryenConstGetValueI64']
fn binaryenconstgetvaluei64(expr BinaryenExpressionRef) i64

[c:'BinaryenConstSetValueI64']
fn binaryenconstsetvaluei64(expr BinaryenExpressionRef, value i64) 

[c:'BinaryenConstGetValueI64Low']
fn binaryenconstgetvaluei64low(expr BinaryenExpressionRef) int

[c:'BinaryenConstSetValueI64Low']
fn binaryenconstsetvaluei64low(expr BinaryenExpressionRef, valuelow int) 

[c:'BinaryenConstGetValueI64High']
fn binaryenconstgetvaluei64high(expr BinaryenExpressionRef) int

[c:'BinaryenConstSetValueI64High']
fn binaryenconstsetvaluei64high(expr BinaryenExpressionRef, valuehigh int) 

[c:'BinaryenConstGetValueF32']
fn binaryenconstgetvaluef32(expr BinaryenExpressionRef) f32

[c:'BinaryenConstSetValueF32']
fn binaryenconstsetvaluef32(expr BinaryenExpressionRef, value f32) 

[c:'BinaryenConstGetValueF64']
fn binaryenconstgetvaluef64(expr BinaryenExpressionRef) f64

[c:'BinaryenConstSetValueF64']
fn binaryenconstsetvaluef64(expr BinaryenExpressionRef, value f64) 

[c:'BinaryenConstGetValueV128']
fn binaryenconstgetvaluev128(expr BinaryenExpressionRef, out &u8) 

[c:'BinaryenConstSetValueV128']
fn binaryenconstsetvaluev128(expr BinaryenExpressionRef, value &u8) 

[c:'BinaryenUnaryGetOp']
fn binaryenunarygetop(expr BinaryenExpressionRef) BinaryenOp

[c:'BinaryenUnarySetOp']
fn binaryenunarysetop(expr BinaryenExpressionRef, op BinaryenOp) 

[c:'BinaryenUnaryGetValue']
fn binaryenunarygetvalue(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenUnarySetValue']
fn binaryenunarysetvalue(expr BinaryenExpressionRef, valueexpr BinaryenExpressionRef) 

[c:'BinaryenBinaryGetOp']
fn binaryenbinarygetop(expr BinaryenExpressionRef) BinaryenOp

[c:'BinaryenBinarySetOp']
fn binaryenbinarysetop(expr BinaryenExpressionRef, op BinaryenOp) 

[c:'BinaryenBinaryGetLeft']
fn binaryenbinarygetleft(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenBinarySetLeft']
fn binaryenbinarysetleft(expr BinaryenExpressionRef, leftexpr BinaryenExpressionRef) 

[c:'BinaryenBinaryGetRight']
fn binaryenbinarygetright(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenBinarySetRight']
fn binaryenbinarysetright(expr BinaryenExpressionRef, rightexpr BinaryenExpressionRef) 

[c:'BinaryenSelectGetIfTrue']
fn binaryenselectgetiftrue(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenSelectSetIfTrue']
fn binaryenselectsetiftrue(expr BinaryenExpressionRef, iftrueexpr BinaryenExpressionRef) 

[c:'BinaryenSelectGetIfFalse']
fn binaryenselectgetiffalse(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenSelectSetIfFalse']
fn binaryenselectsetiffalse(expr BinaryenExpressionRef, iffalseexpr BinaryenExpressionRef) 

[c:'BinaryenSelectGetCondition']
fn binaryenselectgetcondition(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenSelectSetCondition']
fn binaryenselectsetcondition(expr BinaryenExpressionRef, condexpr BinaryenExpressionRef) 

[c:'BinaryenDropGetValue']
fn binaryendropgetvalue(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenDropSetValue']
fn binaryendropsetvalue(expr BinaryenExpressionRef, valueexpr BinaryenExpressionRef) 

[c:'BinaryenReturnGetValue']
fn binaryenreturngetvalue(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenReturnSetValue']
fn binaryenreturnsetvalue(expr BinaryenExpressionRef, valueexpr BinaryenExpressionRef) 

[c:'BinaryenAtomicRMWGetOp']
fn binaryenatomicrmwgetop(expr BinaryenExpressionRef) BinaryenOp

[c:'BinaryenAtomicRMWSetOp']
fn binaryenatomicrmwsetop(expr BinaryenExpressionRef, op BinaryenOp) 

[c:'BinaryenAtomicRMWGetBytes']
fn binaryenatomicrmwgetbytes(expr BinaryenExpressionRef) u32

[c:'BinaryenAtomicRMWSetBytes']
fn binaryenatomicrmwsetbytes(expr BinaryenExpressionRef, bytes u32) 

[c:'BinaryenAtomicRMWGetOffset']
fn binaryenatomicrmwgetoffset(expr BinaryenExpressionRef) u32

[c:'BinaryenAtomicRMWSetOffset']
fn binaryenatomicrmwsetoffset(expr BinaryenExpressionRef, offset u32) 

[c:'BinaryenAtomicRMWGetPtr']
fn binaryenatomicrmwgetptr(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenAtomicRMWSetPtr']
fn binaryenatomicrmwsetptr(expr BinaryenExpressionRef, ptrexpr BinaryenExpressionRef) 

[c:'BinaryenAtomicRMWGetValue']
fn binaryenatomicrmwgetvalue(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenAtomicRMWSetValue']
fn binaryenatomicrmwsetvalue(expr BinaryenExpressionRef, valueexpr BinaryenExpressionRef) 

[c:'BinaryenAtomicCmpxchgGetBytes']
fn binaryenatomiccmpxchggetbytes(expr BinaryenExpressionRef) u32

[c:'BinaryenAtomicCmpxchgSetBytes']
fn binaryenatomiccmpxchgsetbytes(expr BinaryenExpressionRef, bytes u32) 

[c:'BinaryenAtomicCmpxchgGetOffset']
fn binaryenatomiccmpxchggetoffset(expr BinaryenExpressionRef) u32

[c:'BinaryenAtomicCmpxchgSetOffset']
fn binaryenatomiccmpxchgsetoffset(expr BinaryenExpressionRef, offset u32) 

[c:'BinaryenAtomicCmpxchgGetPtr']
fn binaryenatomiccmpxchggetptr(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenAtomicCmpxchgSetPtr']
fn binaryenatomiccmpxchgsetptr(expr BinaryenExpressionRef, ptrexpr BinaryenExpressionRef) 

[c:'BinaryenAtomicCmpxchgGetExpected']
fn binaryenatomiccmpxchggetexpected(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenAtomicCmpxchgSetExpected']
fn binaryenatomiccmpxchgsetexpected(expr BinaryenExpressionRef, expectedexpr BinaryenExpressionRef) 

[c:'BinaryenAtomicCmpxchgGetReplacement']
fn binaryenatomiccmpxchggetreplacement(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenAtomicCmpxchgSetReplacement']
fn binaryenatomiccmpxchgsetreplacement(expr BinaryenExpressionRef, replacementexpr BinaryenExpressionRef) 

[c:'BinaryenAtomicWaitGetPtr']
fn binaryenatomicwaitgetptr(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenAtomicWaitSetPtr']
fn binaryenatomicwaitsetptr(expr BinaryenExpressionRef, ptrexpr BinaryenExpressionRef) 

[c:'BinaryenAtomicWaitGetExpected']
fn binaryenatomicwaitgetexpected(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenAtomicWaitSetExpected']
fn binaryenatomicwaitsetexpected(expr BinaryenExpressionRef, expectedexpr BinaryenExpressionRef) 

[c:'BinaryenAtomicWaitGetTimeout']
fn binaryenatomicwaitgettimeout(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenAtomicWaitSetTimeout']
fn binaryenatomicwaitsettimeout(expr BinaryenExpressionRef, timeoutexpr BinaryenExpressionRef) 

[c:'BinaryenAtomicWaitGetExpectedType']
fn binaryenatomicwaitgetexpectedtype(expr BinaryenExpressionRef) BinaryenType

[c:'BinaryenAtomicWaitSetExpectedType']
fn binaryenatomicwaitsetexpectedtype(expr BinaryenExpressionRef, expectedtype BinaryenType) 

[c:'BinaryenAtomicNotifyGetPtr']
fn binaryenatomicnotifygetptr(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenAtomicNotifySetPtr']
fn binaryenatomicnotifysetptr(expr BinaryenExpressionRef, ptrexpr BinaryenExpressionRef) 

[c:'BinaryenAtomicNotifyGetNotifyCount']
fn binaryenatomicnotifygetnotifycount(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenAtomicNotifySetNotifyCount']
fn binaryenatomicnotifysetnotifycount(expr BinaryenExpressionRef, notifycountexpr BinaryenExpressionRef) 

[c:'BinaryenAtomicFenceGetOrder']
fn binaryenatomicfencegetorder(expr BinaryenExpressionRef) u8

[c:'BinaryenAtomicFenceSetOrder']
fn binaryenatomicfencesetorder(expr BinaryenExpressionRef, order u8) 

[c:'BinaryenSIMDExtractGetOp']
fn binaryensimdextractgetop(expr BinaryenExpressionRef) BinaryenOp

[c:'BinaryenSIMDExtractSetOp']
fn binaryensimdextractsetop(expr BinaryenExpressionRef, op BinaryenOp) 

[c:'BinaryenSIMDExtractGetVec']
fn binaryensimdextractgetvec(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenSIMDExtractSetVec']
fn binaryensimdextractsetvec(expr BinaryenExpressionRef, vecexpr BinaryenExpressionRef) 

[c:'BinaryenSIMDExtractGetIndex']
fn binaryensimdextractgetindex(expr BinaryenExpressionRef) u8

[c:'BinaryenSIMDExtractSetIndex']
fn binaryensimdextractsetindex(expr BinaryenExpressionRef, index u8) 

[c:'BinaryenSIMDReplaceGetOp']
fn binaryensimdreplacegetop(expr BinaryenExpressionRef) BinaryenOp

[c:'BinaryenSIMDReplaceSetOp']
fn binaryensimdreplacesetop(expr BinaryenExpressionRef, op BinaryenOp) 

[c:'BinaryenSIMDReplaceGetVec']
fn binaryensimdreplacegetvec(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenSIMDReplaceSetVec']
fn binaryensimdreplacesetvec(expr BinaryenExpressionRef, vecexpr BinaryenExpressionRef) 

[c:'BinaryenSIMDReplaceGetIndex']
fn binaryensimdreplacegetindex(expr BinaryenExpressionRef) u8

[c:'BinaryenSIMDReplaceSetIndex']
fn binaryensimdreplacesetindex(expr BinaryenExpressionRef, index u8) 

[c:'BinaryenSIMDReplaceGetValue']
fn binaryensimdreplacegetvalue(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenSIMDReplaceSetValue']
fn binaryensimdreplacesetvalue(expr BinaryenExpressionRef, valueexpr BinaryenExpressionRef) 

[c:'BinaryenSIMDShuffleGetLeft']
fn binaryensimdshufflegetleft(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenSIMDShuffleSetLeft']
fn binaryensimdshufflesetleft(expr BinaryenExpressionRef, leftexpr BinaryenExpressionRef) 

[c:'BinaryenSIMDShuffleGetRight']
fn binaryensimdshufflegetright(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenSIMDShuffleSetRight']
fn binaryensimdshufflesetright(expr BinaryenExpressionRef, rightexpr BinaryenExpressionRef) 

[c:'BinaryenSIMDShuffleGetMask']
fn binaryensimdshufflegetmask(expr BinaryenExpressionRef, mask &u8) 

[c:'BinaryenSIMDShuffleSetMask']
fn binaryensimdshufflesetmask(expr BinaryenExpressionRef, mask &u8) 

[c:'BinaryenSIMDTernaryGetOp']
fn binaryensimdternarygetop(expr BinaryenExpressionRef) BinaryenOp

[c:'BinaryenSIMDTernarySetOp']
fn binaryensimdternarysetop(expr BinaryenExpressionRef, op BinaryenOp) 

[c:'BinaryenSIMDTernaryGetA']
fn binaryensimdternarygeta(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenSIMDTernarySetA']
fn binaryensimdternaryseta(expr BinaryenExpressionRef, aexpr BinaryenExpressionRef) 

[c:'BinaryenSIMDTernaryGetB']
fn binaryensimdternarygetb(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenSIMDTernarySetB']
fn binaryensimdternarysetb(expr BinaryenExpressionRef, bexpr BinaryenExpressionRef) 

[c:'BinaryenSIMDTernaryGetC']
fn binaryensimdternarygetc(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenSIMDTernarySetC']
fn binaryensimdternarysetc(expr BinaryenExpressionRef, cexpr BinaryenExpressionRef) 

[c:'BinaryenSIMDShiftGetOp']
fn binaryensimdshiftgetop(expr BinaryenExpressionRef) BinaryenOp

[c:'BinaryenSIMDShiftSetOp']
fn binaryensimdshiftsetop(expr BinaryenExpressionRef, op BinaryenOp) 

[c:'BinaryenSIMDShiftGetVec']
fn binaryensimdshiftgetvec(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenSIMDShiftSetVec']
fn binaryensimdshiftsetvec(expr BinaryenExpressionRef, vecexpr BinaryenExpressionRef) 

[c:'BinaryenSIMDShiftGetShift']
fn binaryensimdshiftgetshift(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenSIMDShiftSetShift']
fn binaryensimdshiftsetshift(expr BinaryenExpressionRef, shiftexpr BinaryenExpressionRef) 

[c:'BinaryenSIMDLoadGetOp']
fn binaryensimdloadgetop(expr BinaryenExpressionRef) BinaryenOp

[c:'BinaryenSIMDLoadSetOp']
fn binaryensimdloadsetop(expr BinaryenExpressionRef, op BinaryenOp) 

[c:'BinaryenSIMDLoadGetOffset']
fn binaryensimdloadgetoffset(expr BinaryenExpressionRef) u32

[c:'BinaryenSIMDLoadSetOffset']
fn binaryensimdloadsetoffset(expr BinaryenExpressionRef, offset u32) 

[c:'BinaryenSIMDLoadGetAlign']
fn binaryensimdloadgetalign(expr BinaryenExpressionRef) u32

[c:'BinaryenSIMDLoadSetAlign']
fn binaryensimdloadsetalign(expr BinaryenExpressionRef, align u32) 

[c:'BinaryenSIMDLoadGetPtr']
fn binaryensimdloadgetptr(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenSIMDLoadSetPtr']
fn binaryensimdloadsetptr(expr BinaryenExpressionRef, ptrexpr BinaryenExpressionRef) 

[c:'BinaryenSIMDLoadStoreLaneGetOp']
fn binaryensimdloadstorelanegetop(expr BinaryenExpressionRef) BinaryenOp

[c:'BinaryenSIMDLoadStoreLaneSetOp']
fn binaryensimdloadstorelanesetop(expr BinaryenExpressionRef, op BinaryenOp) 

[c:'BinaryenSIMDLoadStoreLaneGetOffset']
fn binaryensimdloadstorelanegetoffset(expr BinaryenExpressionRef) u32

[c:'BinaryenSIMDLoadStoreLaneSetOffset']
fn binaryensimdloadstorelanesetoffset(expr BinaryenExpressionRef, offset u32) 

[c:'BinaryenSIMDLoadStoreLaneGetAlign']
fn binaryensimdloadstorelanegetalign(expr BinaryenExpressionRef) u32

[c:'BinaryenSIMDLoadStoreLaneSetAlign']
fn binaryensimdloadstorelanesetalign(expr BinaryenExpressionRef, align u32) 

[c:'BinaryenSIMDLoadStoreLaneGetIndex']
fn binaryensimdloadstorelanegetindex(expr BinaryenExpressionRef) u8

[c:'BinaryenSIMDLoadStoreLaneSetIndex']
fn binaryensimdloadstorelanesetindex(expr BinaryenExpressionRef, index u8) 

[c:'BinaryenSIMDLoadStoreLaneGetPtr']
fn binaryensimdloadstorelanegetptr(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenSIMDLoadStoreLaneSetPtr']
fn binaryensimdloadstorelanesetptr(expr BinaryenExpressionRef, ptrexpr BinaryenExpressionRef) 

[c:'BinaryenSIMDLoadStoreLaneGetVec']
fn binaryensimdloadstorelanegetvec(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenSIMDLoadStoreLaneSetVec']
fn binaryensimdloadstorelanesetvec(expr BinaryenExpressionRef, vecexpr BinaryenExpressionRef) 

[c:'BinaryenSIMDLoadStoreLaneIsStore']
fn binaryensimdloadstorelaneisstore(expr BinaryenExpressionRef) bool

[c:'BinaryenMemoryInitGetSegment']
fn binaryenmemoryinitgetsegment(expr BinaryenExpressionRef) u32

[c:'BinaryenMemoryInitSetSegment']
fn binaryenmemoryinitsetsegment(expr BinaryenExpressionRef, segmentindex u32) 

[c:'BinaryenMemoryInitGetDest']
fn binaryenmemoryinitgetdest(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenMemoryInitSetDest']
fn binaryenmemoryinitsetdest(expr BinaryenExpressionRef, destexpr BinaryenExpressionRef) 

[c:'BinaryenMemoryInitGetOffset']
fn binaryenmemoryinitgetoffset(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenMemoryInitSetOffset']
fn binaryenmemoryinitsetoffset(expr BinaryenExpressionRef, offsetexpr BinaryenExpressionRef) 

[c:'BinaryenMemoryInitGetSize']
fn binaryenmemoryinitgetsize(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenMemoryInitSetSize']
fn binaryenmemoryinitsetsize(expr BinaryenExpressionRef, sizeexpr BinaryenExpressionRef) 

[c:'BinaryenDataDropGetSegment']
fn binaryendatadropgetsegment(expr BinaryenExpressionRef) u32

[c:'BinaryenDataDropSetSegment']
fn binaryendatadropsetsegment(expr BinaryenExpressionRef, segmentindex u32) 

[c:'BinaryenMemoryCopyGetDest']
fn binaryenmemorycopygetdest(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenMemoryCopySetDest']
fn binaryenmemorycopysetdest(expr BinaryenExpressionRef, destexpr BinaryenExpressionRef) 

[c:'BinaryenMemoryCopyGetSource']
fn binaryenmemorycopygetsource(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenMemoryCopySetSource']
fn binaryenmemorycopysetsource(expr BinaryenExpressionRef, sourceexpr BinaryenExpressionRef) 

[c:'BinaryenMemoryCopyGetSize']
fn binaryenmemorycopygetsize(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenMemoryCopySetSize']
fn binaryenmemorycopysetsize(expr BinaryenExpressionRef, sizeexpr BinaryenExpressionRef) 

[c:'BinaryenMemoryFillGetDest']
fn binaryenmemoryfillgetdest(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenMemoryFillSetDest']
fn binaryenmemoryfillsetdest(expr BinaryenExpressionRef, destexpr BinaryenExpressionRef) 

[c:'BinaryenMemoryFillGetValue']
fn binaryenmemoryfillgetvalue(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenMemoryFillSetValue']
fn binaryenmemoryfillsetvalue(expr BinaryenExpressionRef, valueexpr BinaryenExpressionRef) 

[c:'BinaryenMemoryFillGetSize']
fn binaryenmemoryfillgetsize(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenMemoryFillSetSize']
fn binaryenmemoryfillsetsize(expr BinaryenExpressionRef, sizeexpr BinaryenExpressionRef) 

[c:'BinaryenRefIsGetOp']
fn binaryenrefisgetop(expr BinaryenExpressionRef) BinaryenOp

[c:'BinaryenRefIsSetOp']
fn binaryenrefissetop(expr BinaryenExpressionRef, op BinaryenOp) 

[c:'BinaryenRefIsGetValue']
fn binaryenrefisgetvalue(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenRefIsSetValue']
fn binaryenrefissetvalue(expr BinaryenExpressionRef, valueexpr BinaryenExpressionRef) 

[c:'BinaryenRefAsGetOp']
fn binaryenrefasgetop(expr BinaryenExpressionRef) BinaryenOp

[c:'BinaryenRefAsSetOp']
fn binaryenrefassetop(expr BinaryenExpressionRef, op BinaryenOp) 

[c:'BinaryenRefAsGetValue']
fn binaryenrefasgetvalue(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenRefAsSetValue']
fn binaryenrefassetvalue(expr BinaryenExpressionRef, valueexpr BinaryenExpressionRef) 

[c:'BinaryenRefFuncGetFunc']
fn binaryenreffuncgetfunc(expr BinaryenExpressionRef) &i8

[c:'BinaryenRefFuncSetFunc']
fn binaryenreffuncsetfunc(expr BinaryenExpressionRef, funcname &i8) 

[c:'BinaryenRefEqGetLeft']
fn binaryenrefeqgetleft(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenRefEqSetLeft']
fn binaryenrefeqsetleft(expr BinaryenExpressionRef, left BinaryenExpressionRef) 

[c:'BinaryenRefEqGetRight']
fn binaryenrefeqgetright(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenRefEqSetRight']
fn binaryenrefeqsetright(expr BinaryenExpressionRef, right BinaryenExpressionRef) 

[c:'BinaryenTryGetName']
fn binaryentrygetname(expr BinaryenExpressionRef) &i8

[c:'BinaryenTrySetName']
fn binaryentrysetname(expr BinaryenExpressionRef, name &i8) 

[c:'BinaryenTryGetBody']
fn binaryentrygetbody(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenTrySetBody']
fn binaryentrysetbody(expr BinaryenExpressionRef, bodyexpr BinaryenExpressionRef) 

[c:'BinaryenTryGetNumCatchTags']
fn binaryentrygetnumcatchtags(expr BinaryenExpressionRef) BinaryenIndex

[c:'BinaryenTryGetNumCatchBodies']
fn binaryentrygetnumcatchbodies(expr BinaryenExpressionRef) BinaryenIndex

[c:'BinaryenTryGetCatchTagAt']
fn binaryentrygetcatchtagat(expr BinaryenExpressionRef, index BinaryenIndex) &i8

[c:'BinaryenTrySetCatchTagAt']
fn binaryentrysetcatchtagat(expr BinaryenExpressionRef, index BinaryenIndex, catchtag &i8) 

[c:'BinaryenTryAppendCatchTag']
fn binaryentryappendcatchtag(expr BinaryenExpressionRef, catchtag &i8) BinaryenIndex

[c:'BinaryenTryInsertCatchTagAt']
fn binaryentryinsertcatchtagat(expr BinaryenExpressionRef, index BinaryenIndex, catchtag &i8) 

[c:'BinaryenTryRemoveCatchTagAt']
fn binaryentryremovecatchtagat(expr BinaryenExpressionRef, index BinaryenIndex) &i8

[c:'BinaryenTryGetCatchBodyAt']
fn binaryentrygetcatchbodyat(expr BinaryenExpressionRef, index BinaryenIndex) BinaryenExpressionRef

[c:'BinaryenTrySetCatchBodyAt']
fn binaryentrysetcatchbodyat(expr BinaryenExpressionRef, index BinaryenIndex, catchexpr BinaryenExpressionRef) 

[c:'BinaryenTryAppendCatchBody']
fn binaryentryappendcatchbody(expr BinaryenExpressionRef, catchexpr BinaryenExpressionRef) BinaryenIndex

[c:'BinaryenTryInsertCatchBodyAt']
fn binaryentryinsertcatchbodyat(expr BinaryenExpressionRef, index BinaryenIndex, catchexpr BinaryenExpressionRef) 

[c:'BinaryenTryRemoveCatchBodyAt']
fn binaryentryremovecatchbodyat(expr BinaryenExpressionRef, index BinaryenIndex) BinaryenExpressionRef

[c:'BinaryenTryHasCatchAll']
fn binaryentryhascatchall(expr BinaryenExpressionRef) bool

[c:'BinaryenTryGetDelegateTarget']
fn binaryentrygetdelegatetarget(expr BinaryenExpressionRef) &i8

[c:'BinaryenTrySetDelegateTarget']
fn binaryentrysetdelegatetarget(expr BinaryenExpressionRef, delegatetarget &i8) 

[c:'BinaryenTryIsDelegate']
fn binaryentryisdelegate(expr BinaryenExpressionRef) bool

[c:'BinaryenThrowGetTag']
fn binaryenthrowgettag(expr BinaryenExpressionRef) &i8

[c:'BinaryenThrowSetTag']
fn binaryenthrowsettag(expr BinaryenExpressionRef, tagname &i8) 

[c:'BinaryenThrowGetNumOperands']
fn binaryenthrowgetnumoperands(expr BinaryenExpressionRef) BinaryenIndex

[c:'BinaryenThrowGetOperandAt']
fn binaryenthrowgetoperandat(expr BinaryenExpressionRef, index BinaryenIndex) BinaryenExpressionRef

[c:'BinaryenThrowSetOperandAt']
fn binaryenthrowsetoperandat(expr BinaryenExpressionRef, index BinaryenIndex, operandexpr BinaryenExpressionRef) 

[c:'BinaryenThrowAppendOperand']
fn binaryenthrowappendoperand(expr BinaryenExpressionRef, operandexpr BinaryenExpressionRef) BinaryenIndex

[c:'BinaryenThrowInsertOperandAt']
fn binaryenthrowinsertoperandat(expr BinaryenExpressionRef, index BinaryenIndex, operandexpr BinaryenExpressionRef) 

[c:'BinaryenThrowRemoveOperandAt']
fn binaryenthrowremoveoperandat(expr BinaryenExpressionRef, index BinaryenIndex) BinaryenExpressionRef

[c:'BinaryenRethrowGetTarget']
fn binaryenrethrowgettarget(expr BinaryenExpressionRef) &i8

[c:'BinaryenRethrowSetTarget']
fn binaryenrethrowsettarget(expr BinaryenExpressionRef, target &i8) 

[c:'BinaryenTupleMakeGetNumOperands']
fn binaryentuplemakegetnumoperands(expr BinaryenExpressionRef) BinaryenIndex

[c:'BinaryenTupleMakeGetOperandAt']
fn binaryentuplemakegetoperandat(expr BinaryenExpressionRef, index BinaryenIndex) BinaryenExpressionRef

[c:'BinaryenTupleMakeSetOperandAt']
fn binaryentuplemakesetoperandat(expr BinaryenExpressionRef, index BinaryenIndex, operandexpr BinaryenExpressionRef) 

[c:'BinaryenTupleMakeAppendOperand']
fn binaryentuplemakeappendoperand(expr BinaryenExpressionRef, operandexpr BinaryenExpressionRef) BinaryenIndex

[c:'BinaryenTupleMakeInsertOperandAt']
fn binaryentuplemakeinsertoperandat(expr BinaryenExpressionRef, index BinaryenIndex, operandexpr BinaryenExpressionRef) 

[c:'BinaryenTupleMakeRemoveOperandAt']
fn binaryentuplemakeremoveoperandat(expr BinaryenExpressionRef, index BinaryenIndex) BinaryenExpressionRef

[c:'BinaryenTupleExtractGetTuple']
fn binaryentupleextractgettuple(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenTupleExtractSetTuple']
fn binaryentupleextractsettuple(expr BinaryenExpressionRef, tupleexpr BinaryenExpressionRef) 

[c:'BinaryenTupleExtractGetIndex']
fn binaryentupleextractgetindex(expr BinaryenExpressionRef) BinaryenIndex

[c:'BinaryenTupleExtractSetIndex']
fn binaryentupleextractsetindex(expr BinaryenExpressionRef, index BinaryenIndex) 

[c:'BinaryenI31NewGetValue']
fn binaryeni31newgetvalue(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenI31NewSetValue']
fn binaryeni31newsetvalue(expr BinaryenExpressionRef, valueexpr BinaryenExpressionRef) 

[c:'BinaryenI31GetGetI31']
fn binaryeni31getgeti31(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenI31GetSetI31']
fn binaryeni31getseti31(expr BinaryenExpressionRef, i31expr BinaryenExpressionRef) 

[c:'BinaryenI31GetIsSigned']
fn binaryeni31getissigned(expr BinaryenExpressionRef) bool

[c:'BinaryenI31GetSetSigned']
fn binaryeni31getsetsigned(expr BinaryenExpressionRef, signed_ bool) 

[c:'BinaryenCallRefGetNumOperands']
fn binaryencallrefgetnumoperands(expr BinaryenExpressionRef) BinaryenIndex

[c:'BinaryenCallRefGetOperandAt']
fn binaryencallrefgetoperandat(expr BinaryenExpressionRef, index BinaryenIndex) BinaryenExpressionRef

[c:'BinaryenCallRefSetOperandAt']
fn binaryencallrefsetoperandat(expr BinaryenExpressionRef, index BinaryenIndex, operandexpr BinaryenExpressionRef) 

[c:'BinaryenCallRefAppendOperand']
fn binaryencallrefappendoperand(expr BinaryenExpressionRef, operandexpr BinaryenExpressionRef) BinaryenIndex

[c:'BinaryenCallRefInsertOperandAt']
fn binaryencallrefinsertoperandat(expr BinaryenExpressionRef, index BinaryenIndex, operandexpr BinaryenExpressionRef) 

[c:'BinaryenCallRefRemoveOperandAt']
fn binaryencallrefremoveoperandat(expr BinaryenExpressionRef, index BinaryenIndex) BinaryenExpressionRef

[c:'BinaryenCallRefGetTarget']
fn binaryencallrefgettarget(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenCallRefSetTarget']
fn binaryencallrefsettarget(expr BinaryenExpressionRef, targetexpr BinaryenExpressionRef) 

[c:'BinaryenCallRefIsReturn']
fn binaryencallrefisreturn(expr BinaryenExpressionRef) bool

[c:'BinaryenCallRefSetReturn']
fn binaryencallrefsetreturn(expr BinaryenExpressionRef, isreturn bool) 

[c:'BinaryenRefTestGetRef']
fn binaryenreftestgetref(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenRefTestSetRef']
fn binaryenreftestsetref(expr BinaryenExpressionRef, refexpr BinaryenExpressionRef) 

[c:'BinaryenRefTestGetIntendedType']
fn binaryenreftestgetintendedtype(expr BinaryenExpressionRef) BinaryenHeapType

[c:'BinaryenRefTestSetIntendedType']
fn binaryenreftestsetintendedtype(expr BinaryenExpressionRef, intendedtype BinaryenHeapType) 

[c:'BinaryenRefCastGetRef']
fn binaryenrefcastgetref(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenRefCastSetRef']
fn binaryenrefcastsetref(expr BinaryenExpressionRef, refexpr BinaryenExpressionRef) 

[c:'BinaryenRefCastGetIntendedType']
fn binaryenrefcastgetintendedtype(expr BinaryenExpressionRef) BinaryenHeapType

[c:'BinaryenRefCastSetIntendedType']
fn binaryenrefcastsetintendedtype(expr BinaryenExpressionRef, intendedtype BinaryenHeapType) 

[c:'BinaryenBrOnGetOp']
fn binaryenbrongetop(expr BinaryenExpressionRef) BinaryenOp

[c:'BinaryenBrOnSetOp']
fn binaryenbronsetop(expr BinaryenExpressionRef, op BinaryenOp) 

[c:'BinaryenBrOnGetName']
fn binaryenbrongetname(expr BinaryenExpressionRef) &i8

[c:'BinaryenBrOnSetName']
fn binaryenbronsetname(expr BinaryenExpressionRef, namestr &i8) 

[c:'BinaryenBrOnGetRef']
fn binaryenbrongetref(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenBrOnSetRef']
fn binaryenbronsetref(expr BinaryenExpressionRef, refexpr BinaryenExpressionRef) 

[c:'BinaryenBrOnGetIntendedType']
fn binaryenbrongetintendedtype(expr BinaryenExpressionRef) BinaryenHeapType

[c:'BinaryenBrOnSetIntendedType']
fn binaryenbronsetintendedtype(expr BinaryenExpressionRef, intendedtype BinaryenHeapType) 

[c:'BinaryenStructNewGetNumOperands']
fn binaryenstructnewgetnumoperands(expr BinaryenExpressionRef) BinaryenIndex

[c:'BinaryenStructNewGetOperandAt']
fn binaryenstructnewgetoperandat(expr BinaryenExpressionRef, index BinaryenIndex) BinaryenExpressionRef

[c:'BinaryenStructNewSetOperandAt']
fn binaryenstructnewsetoperandat(expr BinaryenExpressionRef, index BinaryenIndex, operandexpr BinaryenExpressionRef) 

[c:'BinaryenStructNewAppendOperand']
fn binaryenstructnewappendoperand(expr BinaryenExpressionRef, operandexpr BinaryenExpressionRef) BinaryenIndex

[c:'BinaryenStructNewInsertOperandAt']
fn binaryenstructnewinsertoperandat(expr BinaryenExpressionRef, index BinaryenIndex, operandexpr BinaryenExpressionRef) 

[c:'BinaryenStructNewRemoveOperandAt']
fn binaryenstructnewremoveoperandat(expr BinaryenExpressionRef, index BinaryenIndex) BinaryenExpressionRef

[c:'BinaryenStructGetGetIndex']
fn binaryenstructgetgetindex(expr BinaryenExpressionRef) BinaryenIndex

[c:'BinaryenStructGetSetIndex']
fn binaryenstructgetsetindex(expr BinaryenExpressionRef, index BinaryenIndex) 

[c:'BinaryenStructGetGetRef']
fn binaryenstructgetgetref(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStructGetSetRef']
fn binaryenstructgetsetref(expr BinaryenExpressionRef, refexpr BinaryenExpressionRef) 

[c:'BinaryenStructGetIsSigned']
fn binaryenstructgetissigned(expr BinaryenExpressionRef) bool

[c:'BinaryenStructGetSetSigned']
fn binaryenstructgetsetsigned(expr BinaryenExpressionRef, signed_ bool) 

[c:'BinaryenStructSetGetIndex']
fn binaryenstructsetgetindex(expr BinaryenExpressionRef) BinaryenIndex

[c:'BinaryenStructSetSetIndex']
fn binaryenstructsetsetindex(expr BinaryenExpressionRef, index BinaryenIndex) 

[c:'BinaryenStructSetGetRef']
fn binaryenstructsetgetref(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStructSetSetRef']
fn binaryenstructsetsetref(expr BinaryenExpressionRef, refexpr BinaryenExpressionRef) 

[c:'BinaryenStructSetGetValue']
fn binaryenstructsetgetvalue(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStructSetSetValue']
fn binaryenstructsetsetvalue(expr BinaryenExpressionRef, valueexpr BinaryenExpressionRef) 

[c:'BinaryenArrayNewGetInit']
fn binaryenarraynewgetinit(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenArrayNewSetInit']
fn binaryenarraynewsetinit(expr BinaryenExpressionRef, initexpr BinaryenExpressionRef) 

[c:'BinaryenArrayNewGetSize']
fn binaryenarraynewgetsize(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenArrayNewSetSize']
fn binaryenarraynewsetsize(expr BinaryenExpressionRef, sizeexpr BinaryenExpressionRef) 

[c:'BinaryenArrayInitGetNumValues']
fn binaryenarrayinitgetnumvalues(expr BinaryenExpressionRef) BinaryenIndex

[c:'BinaryenArrayInitGetValueAt']
fn binaryenarrayinitgetvalueat(expr BinaryenExpressionRef, index BinaryenIndex) BinaryenExpressionRef

[c:'BinaryenArrayInitSetValueAt']
fn binaryenarrayinitsetvalueat(expr BinaryenExpressionRef, index BinaryenIndex, valueexpr BinaryenExpressionRef) 

[c:'BinaryenArrayInitAppendValue']
fn binaryenarrayinitappendvalue(expr BinaryenExpressionRef, valueexpr BinaryenExpressionRef) BinaryenIndex

[c:'BinaryenArrayInitInsertValueAt']
fn binaryenarrayinitinsertvalueat(expr BinaryenExpressionRef, index BinaryenIndex, valueexpr BinaryenExpressionRef) 

[c:'BinaryenArrayInitRemoveValueAt']
fn binaryenarrayinitremovevalueat(expr BinaryenExpressionRef, index BinaryenIndex) BinaryenExpressionRef

[c:'BinaryenArrayGetGetRef']
fn binaryenarraygetgetref(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenArrayGetSetRef']
fn binaryenarraygetsetref(expr BinaryenExpressionRef, refexpr BinaryenExpressionRef) 

[c:'BinaryenArrayGetGetIndex']
fn binaryenarraygetgetindex(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenArrayGetSetIndex']
fn binaryenarraygetsetindex(expr BinaryenExpressionRef, indexexpr BinaryenExpressionRef) 

[c:'BinaryenArrayGetIsSigned']
fn binaryenarraygetissigned(expr BinaryenExpressionRef) bool

[c:'BinaryenArrayGetSetSigned']
fn binaryenarraygetsetsigned(expr BinaryenExpressionRef, signed_ bool) 

[c:'BinaryenArraySetGetRef']
fn binaryenarraysetgetref(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenArraySetSetRef']
fn binaryenarraysetsetref(expr BinaryenExpressionRef, refexpr BinaryenExpressionRef) 

[c:'BinaryenArraySetGetIndex']
fn binaryenarraysetgetindex(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenArraySetSetIndex']
fn binaryenarraysetsetindex(expr BinaryenExpressionRef, indexexpr BinaryenExpressionRef) 

[c:'BinaryenArraySetGetValue']
fn binaryenarraysetgetvalue(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenArraySetSetValue']
fn binaryenarraysetsetvalue(expr BinaryenExpressionRef, valueexpr BinaryenExpressionRef) 

[c:'BinaryenArrayLenGetRef']
fn binaryenarraylengetref(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenArrayLenSetRef']
fn binaryenarraylensetref(expr BinaryenExpressionRef, refexpr BinaryenExpressionRef) 

[c:'BinaryenArrayCopyGetDestRef']
fn binaryenarraycopygetdestref(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenArrayCopySetDestRef']
fn binaryenarraycopysetdestref(expr BinaryenExpressionRef, destrefexpr BinaryenExpressionRef) 

[c:'BinaryenArrayCopyGetDestIndex']
fn binaryenarraycopygetdestindex(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenArrayCopySetDestIndex']
fn binaryenarraycopysetdestindex(expr BinaryenExpressionRef, destindexexpr BinaryenExpressionRef) 

[c:'BinaryenArrayCopyGetSrcRef']
fn binaryenarraycopygetsrcref(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenArrayCopySetSrcRef']
fn binaryenarraycopysetsrcref(expr BinaryenExpressionRef, srcrefexpr BinaryenExpressionRef) 

[c:'BinaryenArrayCopyGetSrcIndex']
fn binaryenarraycopygetsrcindex(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenArrayCopySetSrcIndex']
fn binaryenarraycopysetsrcindex(expr BinaryenExpressionRef, srcindexexpr BinaryenExpressionRef) 

[c:'BinaryenArrayCopyGetLength']
fn binaryenarraycopygetlength(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenArrayCopySetLength']
fn binaryenarraycopysetlength(expr BinaryenExpressionRef, lengthexpr BinaryenExpressionRef) 

[c:'BinaryenStringNewGetOp']
fn binaryenstringnewgetop(expr BinaryenExpressionRef) BinaryenOp

[c:'BinaryenStringNewSetOp']
fn binaryenstringnewsetop(expr BinaryenExpressionRef, op BinaryenOp) 

[c:'BinaryenStringNewGetPtr']
fn binaryenstringnewgetptr(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringNewSetPtr']
fn binaryenstringnewsetptr(expr BinaryenExpressionRef, ptrexpr BinaryenExpressionRef) 

[c:'BinaryenStringNewGetLength']
fn binaryenstringnewgetlength(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringNewSetLength']
fn binaryenstringnewsetlength(expr BinaryenExpressionRef, lengthexpr BinaryenExpressionRef) 

[c:'BinaryenStringNewGetStart']
fn binaryenstringnewgetstart(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringNewSetStart']
fn binaryenstringnewsetstart(expr BinaryenExpressionRef, startexpr BinaryenExpressionRef) 

[c:'BinaryenStringNewGetEnd']
fn binaryenstringnewgetend(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringNewSetEnd']
fn binaryenstringnewsetend(expr BinaryenExpressionRef, endexpr BinaryenExpressionRef) 

[c:'BinaryenStringConstGetString']
fn binaryenstringconstgetstring(expr BinaryenExpressionRef) &i8

[c:'BinaryenStringConstSetString']
fn binaryenstringconstsetstring(expr BinaryenExpressionRef, stringstr &i8) 

[c:'BinaryenStringMeasureGetOp']
fn binaryenstringmeasuregetop(expr BinaryenExpressionRef) BinaryenOp

[c:'BinaryenStringMeasureSetOp']
fn binaryenstringmeasuresetop(expr BinaryenExpressionRef, op BinaryenOp) 

[c:'BinaryenStringMeasureGetRef']
fn binaryenstringmeasuregetref(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringMeasureSetRef']
fn binaryenstringmeasuresetref(expr BinaryenExpressionRef, refexpr BinaryenExpressionRef) 

[c:'BinaryenStringEncodeGetOp']
fn binaryenstringencodegetop(expr BinaryenExpressionRef) BinaryenOp

[c:'BinaryenStringEncodeSetOp']
fn binaryenstringencodesetop(expr BinaryenExpressionRef, op BinaryenOp) 

[c:'BinaryenStringEncodeGetRef']
fn binaryenstringencodegetref(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringEncodeSetRef']
fn binaryenstringencodesetref(expr BinaryenExpressionRef, refexpr BinaryenExpressionRef) 

[c:'BinaryenStringEncodeGetPtr']
fn binaryenstringencodegetptr(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringEncodeSetPtr']
fn binaryenstringencodesetptr(expr BinaryenExpressionRef, ptrexpr BinaryenExpressionRef) 

[c:'BinaryenStringEncodeGetStart']
fn binaryenstringencodegetstart(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringEncodeSetStart']
fn binaryenstringencodesetstart(expr BinaryenExpressionRef, startexpr BinaryenExpressionRef) 

[c:'BinaryenStringConcatGetLeft']
fn binaryenstringconcatgetleft(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringConcatSetLeft']
fn binaryenstringconcatsetleft(expr BinaryenExpressionRef, leftexpr BinaryenExpressionRef) 

[c:'BinaryenStringConcatGetRight']
fn binaryenstringconcatgetright(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringConcatSetRight']
fn binaryenstringconcatsetright(expr BinaryenExpressionRef, rightexpr BinaryenExpressionRef) 

[c:'BinaryenStringEqGetLeft']
fn binaryenstringeqgetleft(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringEqSetLeft']
fn binaryenstringeqsetleft(expr BinaryenExpressionRef, leftexpr BinaryenExpressionRef) 

[c:'BinaryenStringEqGetRight']
fn binaryenstringeqgetright(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringEqSetRight']
fn binaryenstringeqsetright(expr BinaryenExpressionRef, rightexpr BinaryenExpressionRef) 

[c:'BinaryenStringAsGetOp']
fn binaryenstringasgetop(expr BinaryenExpressionRef) BinaryenOp

[c:'BinaryenStringAsSetOp']
fn binaryenstringassetop(expr BinaryenExpressionRef, op BinaryenOp) 

[c:'BinaryenStringAsGetRef']
fn binaryenstringasgetref(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringAsSetRef']
fn binaryenstringassetref(expr BinaryenExpressionRef, refexpr BinaryenExpressionRef) 

[c:'BinaryenStringWTF8AdvanceGetRef']
fn binaryenstringwtf8advancegetref(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringWTF8AdvanceSetRef']
fn binaryenstringwtf8advancesetref(expr BinaryenExpressionRef, refexpr BinaryenExpressionRef) 

[c:'BinaryenStringWTF8AdvanceGetPos']
fn binaryenstringwtf8advancegetpos(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringWTF8AdvanceSetPos']
fn binaryenstringwtf8advancesetpos(expr BinaryenExpressionRef, posexpr BinaryenExpressionRef) 

[c:'BinaryenStringWTF8AdvanceGetBytes']
fn binaryenstringwtf8advancegetbytes(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringWTF8AdvanceSetBytes']
fn binaryenstringwtf8advancesetbytes(expr BinaryenExpressionRef, bytesexpr BinaryenExpressionRef) 

[c:'BinaryenStringWTF16GetGetRef']
fn binaryenstringwtf16getgetref(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringWTF16GetSetRef']
fn binaryenstringwtf16getsetref(expr BinaryenExpressionRef, refexpr BinaryenExpressionRef) 

[c:'BinaryenStringWTF16GetGetPos']
fn binaryenstringwtf16getgetpos(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringWTF16GetSetPos']
fn binaryenstringwtf16getsetpos(expr BinaryenExpressionRef, posexpr BinaryenExpressionRef) 

[c:'BinaryenStringIterNextGetRef']
fn binaryenstringiternextgetref(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringIterNextSetRef']
fn binaryenstringiternextsetref(expr BinaryenExpressionRef, refexpr BinaryenExpressionRef) 

[c:'BinaryenStringIterMoveGetOp']
fn binaryenstringitermovegetop(expr BinaryenExpressionRef) BinaryenOp

[c:'BinaryenStringIterMoveSetOp']
fn binaryenstringitermovesetop(expr BinaryenExpressionRef, op BinaryenOp) 

[c:'BinaryenStringIterMoveGetRef']
fn binaryenstringitermovegetref(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringIterMoveSetRef']
fn binaryenstringitermovesetref(expr BinaryenExpressionRef, refexpr BinaryenExpressionRef) 

[c:'BinaryenStringIterMoveGetNum']
fn binaryenstringitermovegetnum(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringIterMoveSetNum']
fn binaryenstringitermovesetnum(expr BinaryenExpressionRef, numexpr BinaryenExpressionRef) 

[c:'BinaryenStringSliceWTFGetOp']
fn binaryenstringslicewtfgetop(expr BinaryenExpressionRef) BinaryenOp

[c:'BinaryenStringSliceWTFSetOp']
fn binaryenstringslicewtfsetop(expr BinaryenExpressionRef, op BinaryenOp) 

[c:'BinaryenStringSliceWTFGetRef']
fn binaryenstringslicewtfgetref(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringSliceWTFSetRef']
fn binaryenstringslicewtfsetref(expr BinaryenExpressionRef, refexpr BinaryenExpressionRef) 

[c:'BinaryenStringSliceWTFGetStart']
fn binaryenstringslicewtfgetstart(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringSliceWTFSetStart']
fn binaryenstringslicewtfsetstart(expr BinaryenExpressionRef, startexpr BinaryenExpressionRef) 

[c:'BinaryenStringSliceWTFGetEnd']
fn binaryenstringslicewtfgetend(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringSliceWTFSetEnd']
fn binaryenstringslicewtfsetend(expr BinaryenExpressionRef, endexpr BinaryenExpressionRef) 

[c:'BinaryenStringSliceIterGetRef']
fn binaryenstringsliceitergetref(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringSliceIterSetRef']
fn binaryenstringsliceitersetref(expr BinaryenExpressionRef, refexpr BinaryenExpressionRef) 

[c:'BinaryenStringSliceIterGetNum']
fn binaryenstringsliceitergetnum(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringSliceIterSetNum']
fn binaryenstringsliceitersetnum(expr BinaryenExpressionRef, numexpr BinaryenExpressionRef) 

type BinaryenFunctionRef = voidptr
[c:'BinaryenAddFunction']
fn binaryenaddfunction(module_ BinaryenModuleRef, name &i8, params BinaryenType, results BinaryenType, vartypes &BinaryenType, numvartypes BinaryenIndex, body BinaryenExpressionRef) BinaryenFunctionRef

[c:'BinaryenGetFunction']
fn binaryengetfunction(module_ BinaryenModuleRef, name &i8) BinaryenFunctionRef

[c:'BinaryenRemoveFunction']
fn binaryenremovefunction(module_ BinaryenModuleRef, name &i8) 

[c:'BinaryenGetNumFunctions']
fn binaryengetnumfunctions(module_ BinaryenModuleRef) BinaryenIndex

[c:'BinaryenGetFunctionByIndex']
fn binaryengetfunctionbyindex(module_ BinaryenModuleRef, index BinaryenIndex) BinaryenFunctionRef

[c:'BinaryenAddFunctionImport']
fn binaryenaddfunctionimport(module_ BinaryenModuleRef, internalname &i8, externalmodulename &i8, externalbasename &i8, params BinaryenType, results BinaryenType) 

[c:'BinaryenAddTableImport']
fn binaryenaddtableimport(module_ BinaryenModuleRef, internalname &i8, externalmodulename &i8, externalbasename &i8) 

[c:'BinaryenAddMemoryImport']
fn binaryenaddmemoryimport(module_ BinaryenModuleRef, internalname &i8, externalmodulename &i8, externalbasename &i8, shared_ u8) 

[c:'BinaryenAddGlobalImport']
fn binaryenaddglobalimport(module_ BinaryenModuleRef, internalname &i8, externalmodulename &i8, externalbasename &i8, globaltype BinaryenType, mutable_ bool) 

[c:'BinaryenAddTagImport']
fn binaryenaddtagimport(module_ BinaryenModuleRef, internalname &i8, externalmodulename &i8, externalbasename &i8, params BinaryenType, results BinaryenType) 

type BinaryenMemoryRef = voidptr
type BinaryenExportRef = voidptr
[c:'BinaryenAddExport']
fn binaryenaddexport(module_ BinaryenModuleRef, internalname &i8, externalname &i8) BinaryenExportRef

[c:'BinaryenAddFunctionExport']
fn binaryenaddfunctionexport(module_ BinaryenModuleRef, internalname &i8, externalname &i8) BinaryenExportRef

[c:'BinaryenAddTableExport']
fn binaryenaddtableexport(module_ BinaryenModuleRef, internalname &i8, externalname &i8) BinaryenExportRef

[c:'BinaryenAddMemoryExport']
fn binaryenaddmemoryexport(module_ BinaryenModuleRef, internalname &i8, externalname &i8) BinaryenExportRef

[c:'BinaryenAddGlobalExport']
fn binaryenaddglobalexport(module_ BinaryenModuleRef, internalname &i8, externalname &i8) BinaryenExportRef

[c:'BinaryenAddTagExport']
fn binaryenaddtagexport(module_ BinaryenModuleRef, internalname &i8, externalname &i8) BinaryenExportRef

[c:'BinaryenGetExport']
fn binaryengetexport(module_ BinaryenModuleRef, externalname &i8) BinaryenExportRef

[c:'BinaryenRemoveExport']
fn binaryenremoveexport(module_ BinaryenModuleRef, externalname &i8) 

[c:'BinaryenGetNumExports']
fn binaryengetnumexports(module_ BinaryenModuleRef) BinaryenIndex

[c:'BinaryenGetExportByIndex']
fn binaryengetexportbyindex(module_ BinaryenModuleRef, index BinaryenIndex) BinaryenExportRef

type BinaryenGlobalRef = voidptr
[c:'BinaryenAddGlobal']
fn binaryenaddglobal(module_ BinaryenModuleRef, name &i8, type_ BinaryenType, mutable_ bool, init BinaryenExpressionRef) BinaryenGlobalRef

[c:'BinaryenGetGlobal']
fn binaryengetglobal(module_ BinaryenModuleRef, name &i8) BinaryenGlobalRef

[c:'BinaryenRemoveGlobal']
fn binaryenremoveglobal(module_ BinaryenModuleRef, name &i8) 

[c:'BinaryenGetNumGlobals']
fn binaryengetnumglobals(module_ BinaryenModuleRef) BinaryenIndex

[c:'BinaryenGetGlobalByIndex']
fn binaryengetglobalbyindex(module_ BinaryenModuleRef, index BinaryenIndex) BinaryenGlobalRef

type BinaryenTagRef = voidptr
[c:'BinaryenAddTag']
fn binaryenaddtag(module_ BinaryenModuleRef, name &i8, params BinaryenType, results BinaryenType) BinaryenTagRef

[c:'BinaryenGetTag']
fn binaryengettag(module_ BinaryenModuleRef, name &i8) BinaryenTagRef

[c:'BinaryenRemoveTag']
fn binaryenremovetag(module_ BinaryenModuleRef, name &i8) 

type BinaryenTableRef = voidptr
[c:'BinaryenAddTable']
fn binaryenaddtable(module_ BinaryenModuleRef, table &i8, initial BinaryenIndex, maximum BinaryenIndex, tabletype BinaryenType) BinaryenTableRef

[c:'BinaryenRemoveTable']
fn binaryenremovetable(module_ BinaryenModuleRef, table &i8) 

[c:'BinaryenGetNumTables']
fn binaryengetnumtables(module_ BinaryenModuleRef) BinaryenIndex

[c:'BinaryenGetTable']
fn binaryengettable(module_ BinaryenModuleRef, name &i8) BinaryenTableRef

[c:'BinaryenGetTableByIndex']
fn binaryengettablebyindex(module_ BinaryenModuleRef, index BinaryenIndex) BinaryenTableRef

type BinaryenElementSegmentRef = voidptr
[c:'BinaryenAddActiveElementSegment']
fn binaryenaddactiveelementsegment(module_ BinaryenModuleRef, table &i8, name &i8, funcnames &&u8, numfuncnames BinaryenIndex, offset BinaryenExpressionRef) BinaryenElementSegmentRef

[c:'BinaryenAddPassiveElementSegment']
fn binaryenaddpassiveelementsegment(module_ BinaryenModuleRef, name &i8, funcnames &&u8, numfuncnames BinaryenIndex) BinaryenElementSegmentRef

[c:'BinaryenRemoveElementSegment']
fn binaryenremoveelementsegment(module_ BinaryenModuleRef, name &i8) 

[c:'BinaryenGetNumElementSegments']
fn binaryengetnumelementsegments(module_ BinaryenModuleRef) BinaryenIndex

[c:'BinaryenGetElementSegment']
fn binaryengetelementsegment(module_ BinaryenModuleRef, name &i8) BinaryenElementSegmentRef

[c:'BinaryenGetElementSegmentByIndex']
fn binaryengetelementsegmentbyindex(module_ BinaryenModuleRef, index BinaryenIndex) BinaryenElementSegmentRef

[c:'BinaryenSetMemory']
fn binaryensetmemory(module_ BinaryenModuleRef, initial BinaryenIndex, maximum BinaryenIndex, exportname &i8, segments &&u8, segmentpassive &bool, segmentoffsets &BinaryenExpressionRef, segmentsizes &BinaryenIndex, numsegments BinaryenIndex, shared_ bool, memory64 bool, name &i8) 

[c:'BinaryenHasMemory']
fn binaryenhasmemory(module_ BinaryenModuleRef) bool

[c:'BinaryenMemoryGetInitial']
fn binaryenmemorygetinitial(module_ BinaryenModuleRef, name &i8) BinaryenIndex

[c:'BinaryenMemoryHasMax']
fn binaryenmemoryhasmax(module_ BinaryenModuleRef, name &i8) bool

[c:'BinaryenMemoryGetMax']
fn binaryenmemorygetmax(module_ BinaryenModuleRef, name &i8) BinaryenIndex

[c:'BinaryenMemoryImportGetModule']
fn binaryenmemoryimportgetmodule(module_ BinaryenModuleRef, name &i8) &i8

[c:'BinaryenMemoryImportGetBase']
fn binaryenmemoryimportgetbase(module_ BinaryenModuleRef, name &i8) &i8

[c:'BinaryenMemoryIsshared_']
fn binaryenmemoryisshared_(module_ BinaryenModuleRef, name &i8) bool

[c:'BinaryenMemoryIs64']
fn binaryenmemoryis64(module_ BinaryenModuleRef, name &i8) bool

[c:'BinaryenGetNumMemorySegments']
fn binaryengetnummemorysegments(module_ BinaryenModuleRef) u32

[c:'BinaryenGetMemorySegmentByteOffset']
fn binaryengetmemorysegmentbyteoffset(module_ BinaryenModuleRef, id BinaryenIndex) u32

[c:'BinaryenGetMemorySegmentByteLength']
fn binaryengetmemorysegmentbytelength(module_ BinaryenModuleRef, id BinaryenIndex) usize

[c:'BinaryenGetMemorySegmentPassive']
fn binaryengetmemorysegmentpassive(module_ BinaryenModuleRef, id BinaryenIndex) bool

[c:'BinaryenCopyMemorySegmentData']
fn binaryencopymemorysegmentdata(module_ BinaryenModuleRef, id BinaryenIndex, buffer &i8) 

[c:'BinaryenSetStart']
fn binaryensetstart(module_ BinaryenModuleRef, start BinaryenFunctionRef) 

[c:'BinaryenModuleGetFeatures']
fn binaryenmodulegetfeatures(module_ BinaryenModuleRef) BinaryenFeatures

[c:'BinaryenModuleSetFeatures']
fn binaryenmodulesetfeatures(module_ BinaryenModuleRef, features BinaryenFeatures) 

[c:'BinaryenModuleParse']
fn binaryenmoduleparse(text &i8) BinaryenModuleRef

[c:'BinaryenModulePrint']
fn binaryenmoduleprint(module_ BinaryenModuleRef) 

[c:'BinaryenModulePrintStackIR']
fn binaryenmoduleprintstackir(module_ BinaryenModuleRef, optimize bool) 

[c:'BinaryenModulePrintAsmjs']
fn binaryenmoduleprintasmjs(module_ BinaryenModuleRef) 

[c:'BinaryenModuleValidate']
fn binaryenmodulevalidate(module_ BinaryenModuleRef) bool

[c:'BinaryenModuleOptimize']
fn binaryenmoduleoptimize(module_ BinaryenModuleRef) 

[c:'BinaryenModuleUpdateMaps']
fn binaryenmoduleupdatemaps(module_ BinaryenModuleRef) 

[c:'BinaryenGetOptimizeLevel']
fn binaryengetoptimizelevel() int

[c:'BinaryenSetOptimizeLevel']
fn binaryensetoptimizelevel(level int) 

[c:'BinaryenGetShrinkLevel']
fn binaryengetshrinklevel() int

[c:'BinaryenSetShrinkLevel']
fn binaryensetshrinklevel(level int) 

[c:'BinaryenGetDebugInfo']
fn binaryengetdebuginfo() bool

[c:'BinaryenSetDebugInfo']
fn binaryensetdebuginfo(on bool) 

[c:'BinaryenGetLowMemoryUnused']
fn binaryengetlowmemoryunused() bool

[c:'BinaryenSetLowMemoryUnused']
fn binaryensetlowmemoryunused(on bool) 

[c:'BinaryenGetZeroFilledMemory']
fn binaryengetzerofilledmemory() bool

[c:'BinaryenSetZeroFilledMemory']
fn binaryensetzerofilledmemory(on bool) 

[c:'BinaryenGetFastMath']
fn binaryengetfastmath() bool

[c:'BinaryenSetFastMath']
fn binaryensetfastmath(value bool) 

[c:'BinaryenGetPassArgument']
fn binaryengetpassargument(name &i8) &i8

[c:'BinaryenSetPassArgument']
fn binaryensetpassargument(name &i8, value &i8) 

[c:'BinaryenClearPassArguments']
fn binaryenclearpassarguments() 

[c:'BinaryenGetAlwaysInlineMaxSize']
fn binaryengetalwaysinlinemaxsize() BinaryenIndex

[c:'BinaryenSetAlwaysInlineMaxSize']
fn binaryensetalwaysinlinemaxsize(size BinaryenIndex) 

[c:'BinaryenGetFlexibleInlineMaxSize']
fn binaryengetflexibleinlinemaxsize() BinaryenIndex

[c:'BinaryenSetFlexibleInlineMaxSize']
fn binaryensetflexibleinlinemaxsize(size BinaryenIndex) 

[c:'BinaryenGetOneCallerInlineMaxSize']
fn binaryengetonecallerinlinemaxsize() BinaryenIndex

[c:'BinaryenSetOneCallerInlineMaxSize']
fn binaryensetonecallerinlinemaxsize(size BinaryenIndex) 

[c:'BinaryenGetAllowInliningFunctionsWithLoops']
fn binaryengetallowinliningfunctionswithloops() bool

[c:'BinaryenSetAllowInliningFunctionsWithLoops']
fn binaryensetallowinliningfunctionswithloops(enabled bool) 

[c:'BinaryenModuleRunPasses']
fn binaryenmodulerunpasses(module_ BinaryenModuleRef, passes &&u8, numpasses BinaryenIndex) 

[c:'BinaryenModuleAutoDrop']
fn binaryenmoduleautodrop(module_ BinaryenModuleRef) 

[c:'BinaryenModuleWrite']
fn binaryenmodulewrite(module_ BinaryenModuleRef, output &i8, outputsize usize) usize

[c:'BinaryenModuleWriteText']
fn binaryenmodulewritetext(module_ BinaryenModuleRef, output &i8, outputsize usize) usize

[c:'BinaryenModuleWriteStackIR']
fn binaryenmodulewritestackir(module_ BinaryenModuleRef, output &i8, outputsize usize, optimize bool) usize

struct BinaryenBufferSizes { 
	outputBytes usize
	sourceMapBytes usize
}
[c:'BinaryenModuleWriteWithSourceMap']
fn binaryenmodulewritewithsourcemap(module_ BinaryenModuleRef, url &i8, output &i8, outputsize usize, sourcemap &i8, sourcemapsize usize) BinaryenBufferSizes

struct BinaryenModuleAllocateAndWriteResult { 
	binary voidptr
	binaryBytes usize
	sourceMap &i8
}
[c:'BinaryenModuleAllocateAndWrite']
fn binaryenmoduleallocateandwrite(module_ BinaryenModuleRef, sourcemapurl &i8) BinaryenModuleAllocateAndWriteResult

[c:'BinaryenModuleAllocateAndWriteText']
fn binaryenmoduleallocateandwritetext(module_ BinaryenModuleRef) &i8

[c:'BinaryenModuleAllocateAndWriteStackIR']
fn binaryenmoduleallocateandwritestackir(module_ BinaryenModuleRef, optimize bool) &i8

[c:'BinaryenModuleRead']
fn binaryenmoduleread(input &i8, inputsize usize) BinaryenModuleRef

[c:'BinaryenModuleInterpret']
fn binaryenmoduleinterpret(module_ BinaryenModuleRef) 

[c:'BinaryenModuleAddDebugInfoFileName']
fn binaryenmoduleadddebuginfofilename(module_ BinaryenModuleRef, filename &i8) BinaryenIndex

[c:'BinaryenModuleGetDebugInfoFileName']
fn binaryenmodulegetdebuginfofilename(module_ BinaryenModuleRef, index BinaryenIndex) &i8

[c:'BinaryenFunctionGetName']
fn binaryenfunctiongetname(func BinaryenFunctionRef) &i8

[c:'BinaryenFunctionGetParams']
fn binaryenfunctiongetparams(func BinaryenFunctionRef) BinaryenType

[c:'BinaryenFunctionGetResults']
fn binaryenfunctiongetresults(func BinaryenFunctionRef) BinaryenType

[c:'BinaryenFunctionGetNumVars']
fn binaryenfunctiongetnumvars(func BinaryenFunctionRef) BinaryenIndex

[c:'BinaryenFunctionGetVar']
fn binaryenfunctiongetvar(func BinaryenFunctionRef, index BinaryenIndex) BinaryenType

[c:'BinaryenFunctionGetNumLocals']
fn binaryenfunctiongetnumlocals(func BinaryenFunctionRef) BinaryenIndex

[c:'BinaryenFunctionHasLocalName']
fn binaryenfunctionhaslocalname(func BinaryenFunctionRef, index BinaryenIndex) bool

[c:'BinaryenFunctionGetLocalName']
fn binaryenfunctiongetlocalname(func BinaryenFunctionRef, index BinaryenIndex) &i8

[c:'BinaryenFunctionSetLocalName']
fn binaryenfunctionsetlocalname(func BinaryenFunctionRef, index BinaryenIndex, name &i8) 

[c:'BinaryenFunctionGetBody']
fn binaryenfunctiongetbody(func BinaryenFunctionRef) BinaryenExpressionRef

[c:'BinaryenFunctionSetBody']
fn binaryenfunctionsetbody(func BinaryenFunctionRef, body BinaryenExpressionRef) 

[c:'BinaryenFunctionOptimize']
fn binaryenfunctionoptimize(func BinaryenFunctionRef, module_ BinaryenModuleRef) 

[c:'BinaryenFunctionRunPasses']
fn binaryenfunctionrunpasses(func BinaryenFunctionRef, module_ BinaryenModuleRef, passes &&u8, numpasses BinaryenIndex) 

[c:'BinaryenFunctionSetDebugLocation']
fn binaryenfunctionsetdebuglocation(func BinaryenFunctionRef, expr BinaryenExpressionRef, fileindex BinaryenIndex, linenumber BinaryenIndex, columnnumber BinaryenIndex) 

[c:'BinaryenTableGetName']
fn binaryentablegetname(table BinaryenTableRef) &i8

[c:'BinaryenTableSetName']
fn binaryentablesetname(table BinaryenTableRef, name &i8) 

[c:'BinaryenTableGetInitial']
fn binaryentablegetinitial(table BinaryenTableRef) BinaryenIndex

[c:'BinaryenTableSetInitial']
fn binaryentablesetinitial(table BinaryenTableRef, initial BinaryenIndex) 

[c:'BinaryenTableHasMax']
fn binaryentablehasmax(table BinaryenTableRef) bool

[c:'BinaryenTableGetMax']
fn binaryentablegetmax(table BinaryenTableRef) BinaryenIndex

[c:'BinaryenTableSetMax']
fn binaryentablesetmax(table BinaryenTableRef, max BinaryenIndex) 

[c:'BinaryenElementSegmentGetName']
fn binaryenelementsegmentgetname(elem BinaryenElementSegmentRef) &i8

[c:'BinaryenElementSegmentSetName']
fn binaryenelementsegmentsetname(elem BinaryenElementSegmentRef, name &i8) 

[c:'BinaryenElementSegmentGetTable']
fn binaryenelementsegmentgettable(elem BinaryenElementSegmentRef) &i8

[c:'BinaryenElementSegmentSetTable']
fn binaryenelementsegmentsettable(elem BinaryenElementSegmentRef, table &i8) 

[c:'BinaryenElementSegmentGetOffset']
fn binaryenelementsegmentgetoffset(elem BinaryenElementSegmentRef) BinaryenExpressionRef

[c:'BinaryenElementSegmentGetLength']
fn binaryenelementsegmentgetlength(elem BinaryenElementSegmentRef) BinaryenIndex

[c:'BinaryenElementSegmentGetData']
fn binaryenelementsegmentgetdata(elem BinaryenElementSegmentRef, dataid BinaryenIndex) &i8

[c:'BinaryenElementSegmentIsPassive']
fn binaryenelementsegmentispassive(elem BinaryenElementSegmentRef) bool

[c:'BinaryenGlobalGetName']
fn binaryenglobalgetname(global BinaryenGlobalRef) &i8

[c:'BinaryenGlobalGetType']
fn binaryenglobalgettype(global BinaryenGlobalRef) BinaryenType

[c:'BinaryenGlobalIsMutable']
fn binaryenglobalismutable(global BinaryenGlobalRef) bool

[c:'BinaryenGlobalGetInitExpr']
fn binaryenglobalgetinitexpr(global BinaryenGlobalRef) BinaryenExpressionRef

[c:'BinaryenTagGetName']
fn binaryentaggetname(tag BinaryenTagRef) &i8

[c:'BinaryenTagGetParams']
fn binaryentaggetparams(tag BinaryenTagRef) BinaryenType

[c:'BinaryenTagGetResults']
fn binaryentaggetresults(tag BinaryenTagRef) BinaryenType

[c:'BinaryenFunctionImportGetModule']
fn binaryenfunctionimportgetmodule(import_ BinaryenFunctionRef) &i8

[c:'BinaryenTableImportGetModule']
fn binaryentableimportgetmodule(import_ BinaryenTableRef) &i8

[c:'BinaryenGlobalImportGetModule']
fn binaryenglobalimportgetmodule(import_ BinaryenGlobalRef) &i8

[c:'BinaryenTagImportGetModule']
fn binaryentagimportgetmodule(import_ BinaryenTagRef) &i8

[c:'BinaryenFunctionImportGetBase']
fn binaryenfunctionimportgetbase(import_ BinaryenFunctionRef) &i8

[c:'BinaryenTableImportGetBase']
fn binaryentableimportgetbase(import_ BinaryenTableRef) &i8

[c:'BinaryenGlobalImportGetBase']
fn binaryenglobalimportgetbase(import_ BinaryenGlobalRef) &i8

[c:'BinaryenTagImportGetBase']
fn binaryentagimportgetbase(import_ BinaryenTagRef) &i8

[c:'BinaryenExportGetKind']
fn binaryenexportgetkind(export_ BinaryenExportRef) BinaryenExternalKind

[c:'BinaryenExportGetName']
fn binaryenexportgetname(export_ BinaryenExportRef) &i8

[c:'BinaryenExportGetValue']
fn binaryenexportgetvalue(export_ BinaryenExportRef) &i8

[c:'BinaryenAddCustomSection']
fn binaryenaddcustomsection(module_ BinaryenModuleRef, name &i8, contents &i8, contentssize BinaryenIndex) 

type BinaryenSideEffects = u32
[c:'BinaryenSideEffectNone']
fn binaryensideeffectnone() BinaryenSideEffects

[c:'BinaryenSideEffectBranches']
fn binaryensideeffectbranches() BinaryenSideEffects

[c:'BinaryenSideEffectCalls']
fn binaryensideeffectcalls() BinaryenSideEffects

[c:'BinaryenSideEffectReadsLocal']
fn binaryensideeffectreadslocal() BinaryenSideEffects

[c:'BinaryenSideEffectWritesLocal']
fn binaryensideeffectwriteslocal() BinaryenSideEffects

[c:'BinaryenSideEffectReadsGlobal']
fn binaryensideeffectreadsglobal() BinaryenSideEffects

[c:'BinaryenSideEffectWritesGlobal']
fn binaryensideeffectwritesglobal() BinaryenSideEffects

[c:'BinaryenSideEffectReadsMemory']
fn binaryensideeffectreadsmemory() BinaryenSideEffects

[c:'BinaryenSideEffectWritesMemory']
fn binaryensideeffectwritesmemory() BinaryenSideEffects

[c:'BinaryenSideEffectReadsTable']
fn binaryensideeffectreadstable() BinaryenSideEffects

[c:'BinaryenSideEffectWritesTable']
fn binaryensideeffectwritestable() BinaryenSideEffects

[c:'BinaryenSideEffectImplicitTrap']
fn binaryensideeffectimplicittrap() BinaryenSideEffects

[c:'BinaryenSideEffectTrapsNeverHappen']
fn binaryensideeffecttrapsneverhappen() BinaryenSideEffects

[c:'BinaryenSideEffectIsAtomic']
fn binaryensideeffectisatomic() BinaryenSideEffects

[c:'BinaryenSideEffectThrows']
fn binaryensideeffectthrows() BinaryenSideEffects

[c:'BinaryenSideEffectDanglingPop']
fn binaryensideeffectdanglingpop() BinaryenSideEffects

[c:'BinaryenSideEffectAny']
fn binaryensideeffectany() BinaryenSideEffects

[c:'BinaryenExpressionGetSideEffects']
fn binaryenexpressiongetsideeffects(expr BinaryenExpressionRef, module_ BinaryenModuleRef) BinaryenSideEffects

type RelooperRef = voidptr
type RelooperBlockRef = voidptr
[c:'RelooperCreate']
fn reloopercreate(module_ BinaryenModuleRef) RelooperRef

[c:'RelooperAddBlock']
fn relooperaddblock(relooper RelooperRef, code BinaryenExpressionRef) RelooperBlockRef

[c:'RelooperAddBranch']
fn relooperaddbranch(from RelooperBlockRef, to RelooperBlockRef, condition BinaryenExpressionRef, code BinaryenExpressionRef) 

[c:'RelooperAddBlockWithSwitch']
fn relooperaddblockwithswitch(relooper RelooperRef, code BinaryenExpressionRef, condition BinaryenExpressionRef) RelooperBlockRef

[c:'RelooperAddBranchForSwitch']
fn relooperaddbranchforswitch(from RelooperBlockRef, to RelooperBlockRef, indexes &BinaryenIndex, numindexes BinaryenIndex, code BinaryenExpressionRef) 

[c:'RelooperRenderAndDispose']
fn relooperrenderanddispose(relooper RelooperRef, entry RelooperBlockRef, labelhelper BinaryenIndex) BinaryenExpressionRef

type ExpressionRunnerRef = voidptr
type ExpressionRunnerFlags = u32
[c:'ExpressionRunnerFlagsDefault']
fn expressionrunnerflagsdefault() ExpressionRunnerFlags

[c:'ExpressionRunnerFlagsPreserveSideeffects']
fn expressionrunnerflagspreservesideeffects() ExpressionRunnerFlags

[c:'ExpressionRunnerFlagsTraverseCalls']
fn expressionrunnerflagstraversecalls() ExpressionRunnerFlags

[c:'ExpressionRunnerCreate']
fn expressionrunnercreate(module_ BinaryenModuleRef, flags ExpressionRunnerFlags, maxdepth BinaryenIndex, maxloopiterations BinaryenIndex) ExpressionRunnerRef

[c:'ExpressionRunnerSetLocalValue']
fn expressionrunnersetlocalvalue(runner ExpressionRunnerRef, index BinaryenIndex, value BinaryenExpressionRef) bool

[c:'ExpressionRunnerSetGlobalValue']
fn expressionrunnersetglobalvalue(runner ExpressionRunnerRef, name &i8, value BinaryenExpressionRef) bool

[c:'ExpressionRunnerRunAndDispose']
fn expressionrunnerrunanddispose(runner ExpressionRunnerRef, expr BinaryenExpressionRef) BinaryenExpressionRef

type TypeBuilderRef = voidptr
type TypeBuilderErrorReason = u32
[c:'TypeBuilderErrorReasonSelfSupertype']
fn typebuildererrorreasonselfsupertype() TypeBuilderErrorReason

[c:'TypeBuilderErrorReasonInvalidSupertype']
fn typebuildererrorreasoninvalidsupertype() TypeBuilderErrorReason

[c:'TypeBuilderErrorReasonForwardSupertypeReference']
fn typebuildererrorreasonforwardsupertypereference() TypeBuilderErrorReason

[c:'TypeBuilderErrorReasonForwardChildReference']
fn typebuildererrorreasonforwardchildreference() TypeBuilderErrorReason

type BinaryenBasicHeapType = u32
[c:'TypeBuilderCreate']
fn typebuildercreate(size BinaryenIndex) TypeBuilderRef

[c:'TypeBuilderGrow']
fn typebuildergrow(builder TypeBuilderRef, count BinaryenIndex) 

[c:'TypeBuilderGetSize']
fn typebuildergetsize(builder TypeBuilderRef) BinaryenIndex

[c:'TypeBuilderSetBasicHeapType']
fn typebuildersetbasicheaptype(builder TypeBuilderRef, index BinaryenIndex, basicheaptype BinaryenBasicHeapType) 

[c:'TypeBuilderSetSignatureType']
fn typebuildersetsignaturetype(builder TypeBuilderRef, index BinaryenIndex, paramtypes BinaryenType, resulttypes BinaryenType) 

[c:'TypeBuilderSetStructType']
fn typebuildersetstructtype(builder TypeBuilderRef, index BinaryenIndex, fieldtypes &BinaryenType, fieldpackedtypes &BinaryenPackedType, fieldmutables &bool, numfields int) 

[c:'TypeBuilderSetArrayType']
fn typebuildersetarraytype(builder TypeBuilderRef, index BinaryenIndex, elementtype BinaryenType, elementpackedtype BinaryenPackedType, elementmutable int) 

[c:'TypeBuilderIsBasic']
fn typebuilderisbasic(builder TypeBuilderRef, index BinaryenIndex) bool

[c:'TypeBuilderGetBasic']
fn typebuildergetbasic(builder TypeBuilderRef, index BinaryenIndex) BinaryenBasicHeapType

[c:'TypeBuilderGetTempHeapType']
fn typebuildergettempheaptype(builder TypeBuilderRef, index BinaryenIndex) BinaryenHeapType

[c:'TypeBuilderGetTempTupleType']
fn typebuildergettemptupletype(builder TypeBuilderRef, types &BinaryenType, numtypes BinaryenIndex) BinaryenType

[c:'TypeBuilderGetTempRefType']
fn typebuildergettempreftype(builder TypeBuilderRef, heaptype BinaryenHeapType, nullable int) BinaryenType

[c:'TypeBuilderSetSubType']
fn typebuildersetsubtype(builder TypeBuilderRef, index BinaryenIndex, supertype BinaryenHeapType) 

[c:'TypeBuilderCreateRecGroup']
fn typebuildercreaterecgroup(builder TypeBuilderRef, index BinaryenIndex, length BinaryenIndex) 

[c:'TypeBuilderBuildAndDispose']
fn typebuilderbuildanddispose(builder TypeBuilderRef, heaptypes &BinaryenHeapType, errorindex &BinaryenIndex, errorreason &TypeBuilderErrorReason) bool

[c:'BinaryenModuleSetTypeName']
fn binaryenmodulesettypename(module_ BinaryenModuleRef, heaptype BinaryenHeapType, name &i8) 

[c:'BinaryenModuleSetFieldName']
fn binaryenmodulesetfieldname(module_ BinaryenModuleRef, heaptype BinaryenHeapType, index BinaryenIndex, name &i8) 

[c:'BinaryenSetColorsEnabled']
fn binaryensetcolorsenabled(enabled bool) 

[c:'BinaryenAreColorsEnabled']
fn binaryenarecolorsenabled() bool

