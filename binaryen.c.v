[translated]
module binaryen

#flag -lbinaryen

type BinaryenIndex = u32
type BinaryenType = &u32
[c:'BinaryenTypeNone']
pub fn typenone() BinaryenType

[c:'BinaryenTypeInt32']
pub fn typeint32() BinaryenType

[c:'BinaryenTypeInt64']
pub fn typeint64() BinaryenType

[c:'BinaryenTypeFloat32']
pub fn typefloat32() BinaryenType

[c:'BinaryenTypeFloat64']
pub fn typefloat64() BinaryenType

[c:'BinaryenTypeVec128']
pub fn typevec128() BinaryenType

[c:'BinaryenTypeFuncref']
pub fn typefuncref() BinaryenType

[c:'BinaryenTypeExternref']
pub fn typeexternref() BinaryenType

[c:'BinaryenTypeAnyref']
pub fn typeanyref() BinaryenType

[c:'BinaryenTypeEqref']
pub fn typeeqref() BinaryenType

[c:'BinaryenTypeI31ref']
pub fn typei31ref() BinaryenType

[c:'BinaryenTypeDataref']
pub fn typedataref() BinaryenType

[c:'BinaryenTypeArrayref']
pub fn typearrayref() BinaryenType

[c:'BinaryenTypeStringref']
pub fn typestringref() BinaryenType

[c:'BinaryenTypeStringviewWTF8']
pub fn typestringviewwtf8() BinaryenType

[c:'BinaryenTypeStringviewWTF16']
pub fn typestringviewwtf16() BinaryenType

[c:'BinaryenTypeStringviewIter']
pub fn typestringviewiter() BinaryenType

[c:'BinaryenTypeNullref']
pub fn typenullref() BinaryenType

[c:'BinaryenTypeNullExternref']
pub fn typenullexternref() BinaryenType

[c:'BinaryenTypeNullFuncref']
pub fn typenullfuncref() BinaryenType

[c:'BinaryenTypeUnreachable']
pub fn typeunreachable() BinaryenType

[c:'BinaryenTypeAuto']
pub fn typeauto() BinaryenType

[c:'BinaryenTypeCreate']
pub fn typecreate(valuetypes &BinaryenType, numtypes BinaryenIndex) BinaryenType

[c:'BinaryenTypeArity']
pub fn typearity(t BinaryenType) u32

[c:'BinaryenTypeExpand']
pub fn typeexpand(t BinaryenType, buf &BinaryenType) 

/* [c:'BinaryenNone']
pub fn none() BinaryenType

[c:'BinaryenInt32']
pub fn int32() BinaryenType

[c:'BinaryenInt64']
pub fn int64() BinaryenType

[c:'BinaryenFloat32']
pub fn float32() BinaryenType

[c:'BinaryenFloat64']
pub fn float64() BinaryenType

[c:'BinaryenUndefined']
pub fn undefined() BinaryenType */

type BinaryenPackedType = u32
[c:'BinaryenPackedTypeNotPacked']
pub fn packedtypenotpacked() BinaryenPackedType

[c:'BinaryenPackedTypeInt8']
pub fn packedtypeint8() BinaryenPackedType

[c:'BinaryenPackedTypeInt16']
pub fn packedtypeint16() BinaryenPackedType

type BinaryenHeapType = &u32
[c:'BinaryenHeapTypeExt']
pub fn heaptypeext() BinaryenHeapType

[c:'BinaryenHeapTypeFunc']
pub fn heaptypefunc() BinaryenHeapType

[c:'BinaryenHeapTypeAny']
pub fn heaptypeany() BinaryenHeapType

[c:'BinaryenHeapTypeEq']
pub fn heaptypeeq() BinaryenHeapType

[c:'BinaryenHeapTypeI31']
pub fn heaptypei31() BinaryenHeapType

[c:'BinaryenHeapTypeData']
pub fn heaptypedata() BinaryenHeapType

[c:'BinaryenHeapTypeArray']
pub fn heaptypearray() BinaryenHeapType

[c:'BinaryenHeapTypeString']
pub fn heaptypestring() BinaryenHeapType

[c:'BinaryenHeapTypeStringviewWTF8']
pub fn heaptypestringviewwtf8() BinaryenHeapType

[c:'BinaryenHeapTypeStringviewWTF16']
pub fn heaptypestringviewwtf16() BinaryenHeapType

[c:'BinaryenHeapTypeStringviewIter']
pub fn heaptypestringviewiter() BinaryenHeapType

[c:'BinaryenHeapTypeNone']
pub fn heaptypenone() BinaryenHeapType

[c:'BinaryenHeapTypeNoext']
pub fn heaptypenoext() BinaryenHeapType

[c:'BinaryenHeapTypeNofunc']
pub fn heaptypenofunc() BinaryenHeapType

[c:'BinaryenHeapTypeIsBasic']
pub fn heaptypeisbasic(heaptype BinaryenHeapType) bool

[c:'BinaryenHeapTypeIsSignature']
pub fn heaptypeissignature(heaptype BinaryenHeapType) bool

[c:'BinaryenHeapTypeIsStruct']
pub fn heaptypeisstruct(heaptype BinaryenHeapType) bool

[c:'BinaryenHeapTypeIsArray']
pub fn heaptypeisarray(heaptype BinaryenHeapType) bool

[c:'BinaryenHeapTypeIsBottom']
pub fn heaptypeisbottom(heaptype BinaryenHeapType) bool

[c:'BinaryenHeapTypeGetBottom']
pub fn heaptypegetbottom(heaptype BinaryenHeapType) BinaryenHeapType

[c:'BinaryenHeapTypeIsSubType']
pub fn heaptypeissubtype(left BinaryenHeapType, right BinaryenHeapType) bool

[c:'BinaryenStructTypeGetNumFields']
pub fn structtypegetnumfields(heaptype BinaryenHeapType) BinaryenIndex

[c:'BinaryenStructTypeGetFieldType']
pub fn structtypegetfieldtype(heaptype BinaryenHeapType, index BinaryenIndex) BinaryenType

[c:'BinaryenStructTypeGetFieldPackedType']
pub fn structtypegetfieldpackedtype(heaptype BinaryenHeapType, index BinaryenIndex) BinaryenPackedType

[c:'BinaryenStructTypeIsFieldMutable']
pub fn structtypeisfieldmutable(heaptype BinaryenHeapType, index BinaryenIndex) bool

[c:'BinaryenArrayTypeGetElementType']
pub fn arraytypegetelementtype(heaptype BinaryenHeapType) BinaryenType

[c:'BinaryenArrayTypeGetElementPackedType']
pub fn arraytypegetelementpackedtype(heaptype BinaryenHeapType) BinaryenPackedType

[c:'BinaryenArrayTypeIsElementMutable']
pub fn arraytypeiselementmutable(heaptype BinaryenHeapType) bool

[c:'BinaryenSignatureTypeGetParams']
pub fn signaturetypegetparams(heaptype BinaryenHeapType) BinaryenType

[c:'BinaryenSignatureTypeGetResults']
pub fn signaturetypegetresults(heaptype BinaryenHeapType) BinaryenType

[c:'BinaryenTypeGetHeapType']
pub fn typegetheaptype(type_ BinaryenType) BinaryenHeapType

[c:'BinaryenTypeIsNullable']
pub fn typeisnullable(type_ BinaryenType) bool

[c:'BinaryenTypeFromHeapType']
pub fn typefromheaptype(heaptype BinaryenHeapType, nullable bool) BinaryenType

type BinaryenTypeSystem = u32
[c:'BinaryenTypeSystemEquirecursive']
pub fn typesystemequirecursive() BinaryenTypeSystem

[c:'BinaryenTypeSystemNominal']
pub fn typesystemnominal() BinaryenTypeSystem

[c:'BinaryenTypeSystemIsorecursive']
pub fn typesystemisorecursive() BinaryenTypeSystem

[c:'BinaryenGetTypeSystem']
pub fn gettypesystem() BinaryenTypeSystem

[c:'BinaryenSetTypeSystem']
pub fn settypesystem(typesystem BinaryenTypeSystem) 

type BinaryenExpressionId = u32
[c:'BinaryenInvalidId']
pub fn invalidid() BinaryenExpressionId

type BinaryenExternalKind = u32
[c:'BinaryenExternalFunction']
pub fn externalfunction() BinaryenExternalKind

[c:'BinaryenExternalTable']
pub fn externaltable() BinaryenExternalKind

[c:'BinaryenExternalMemory']
pub fn externalmemory() BinaryenExternalKind

[c:'BinaryenExternalGlobal']
pub fn externalglobal() BinaryenExternalKind

[c:'BinaryenExternalTag']
pub fn externaltag() BinaryenExternalKind

type BinaryenFeatures = u32
[c:'BinaryenFeatureMVP']
pub fn featuremvp() BinaryenFeatures

[c:'BinaryenFeatureAtomics']
pub fn featureatomics() BinaryenFeatures

[c:'BinaryenFeatureBulkMemory']
pub fn featurebulkmemory() BinaryenFeatures

[c:'BinaryenFeatureMutableGlobals']
pub fn featuremutableglobals() BinaryenFeatures

[c:'BinaryenFeatureNontrappingFPToInt']
pub fn featurenontrappingfptoint() BinaryenFeatures

[c:'BinaryenFeatureSignExt']
pub fn featuresignext() BinaryenFeatures

[c:'BinaryenFeatureSIMD128']
pub fn featuresimd128() BinaryenFeatures

[c:'BinaryenFeatureExceptionHandling']
pub fn featureexceptionhandling() BinaryenFeatures

[c:'BinaryenFeatureTailCall']
pub fn featuretailcall() BinaryenFeatures

[c:'BinaryenFeatureReferenceTypes']
pub fn featurereferencetypes() BinaryenFeatures

[c:'BinaryenFeatureMultivalue']
pub fn featuremultivalue() BinaryenFeatures

[c:'BinaryenFeatureGC']
pub fn featuregc() BinaryenFeatures

[c:'BinaryenFeatureMemory64']
pub fn featurememory64() BinaryenFeatures

[c:'BinaryenFeatureRelaxedSIMD']
pub fn featurerelaxedsimd() BinaryenFeatures

[c:'BinaryenFeatureExtendedConst']
pub fn featureextendedconst() BinaryenFeatures

[c:'BinaryenFeatureStrings']
pub fn featurestrings() BinaryenFeatures

[c:'BinaryenFeatureMultiMemories']
pub fn featuremultimemories() BinaryenFeatures

[c:'BinaryenFeatureAll']
pub fn featureall() BinaryenFeatures

type BinaryenModuleRef = voidptr
[c:'BinaryenModuleCreate']
pub fn modulecreate() BinaryenModuleRef

[c:'BinaryenModuleDispose']
pub fn moduledispose(module_ BinaryenModuleRef) 

struct BinaryenLiteral { 
	type_ &u32
}
[c:'BinaryenLiteralInt32']
pub fn literalint32(x int) BinaryenLiteral

[c:'BinaryenLiteralInt64']
pub fn literalint64(x i64) BinaryenLiteral

[c:'BinaryenLiteralFloat32']
pub fn literalfloat32(x f32) BinaryenLiteral

[c:'BinaryenLiteralFloat64']
pub fn literalfloat64(x f64) BinaryenLiteral

[c:'BinaryenLiteralVec128']
pub fn literalvec128(x &u8) BinaryenLiteral

[c:'BinaryenLiteralFloat32Bits']
pub fn literalfloat32bits(x int) BinaryenLiteral

[c:'BinaryenLiteralFloat64Bits']
pub fn literalfloat64bits(x i64) BinaryenLiteral

type BinaryenOp = int
[c:'BinaryenClzInt32']
pub fn clzint32() BinaryenOp

[c:'BinaryenCtzInt32']
pub fn ctzint32() BinaryenOp

[c:'BinaryenPopcntInt32']
pub fn popcntint32() BinaryenOp

[c:'BinaryenNegFloat32']
pub fn negfloat32() BinaryenOp

[c:'BinaryenAbsFloat32']
pub fn absfloat32() BinaryenOp

[c:'BinaryenCeilFloat32']
pub fn ceilfloat32() BinaryenOp

[c:'BinaryenFloorFloat32']
pub fn floorfloat32() BinaryenOp

[c:'BinaryenTruncFloat32']
pub fn truncfloat32() BinaryenOp

[c:'BinaryenNearestFloat32']
pub fn nearestfloat32() BinaryenOp

[c:'BinaryenSqrtFloat32']
pub fn sqrtfloat32() BinaryenOp

[c:'BinaryenEqZInt32']
pub fn eqzint32() BinaryenOp

[c:'BinaryenClzInt64']
pub fn clzint64() BinaryenOp

[c:'BinaryenCtzInt64']
pub fn ctzint64() BinaryenOp

[c:'BinaryenPopcntInt64']
pub fn popcntint64() BinaryenOp

[c:'BinaryenNegFloat64']
pub fn negfloat64() BinaryenOp

[c:'BinaryenAbsFloat64']
pub fn absfloat64() BinaryenOp

[c:'BinaryenCeilFloat64']
pub fn ceilfloat64() BinaryenOp

[c:'BinaryenFloorFloat64']
pub fn floorfloat64() BinaryenOp

[c:'BinaryenTruncFloat64']
pub fn truncfloat64() BinaryenOp

[c:'BinaryenNearestFloat64']
pub fn nearestfloat64() BinaryenOp

[c:'BinaryenSqrtFloat64']
pub fn sqrtfloat64() BinaryenOp

[c:'BinaryenEqZInt64']
pub fn eqzint64() BinaryenOp

[c:'BinaryenExtendSInt32']
pub fn extendsint32() BinaryenOp

[c:'BinaryenExtendUInt32']
pub fn extenduint32() BinaryenOp

[c:'BinaryenWrapInt64']
pub fn wrapint64() BinaryenOp

[c:'BinaryenTruncSFloat32ToInt32']
pub fn truncsfloat32toint32() BinaryenOp

[c:'BinaryenTruncSFloat32ToInt64']
pub fn truncsfloat32toint64() BinaryenOp

[c:'BinaryenTruncUFloat32ToInt32']
pub fn truncufloat32toint32() BinaryenOp

[c:'BinaryenTruncUFloat32ToInt64']
pub fn truncufloat32toint64() BinaryenOp

[c:'BinaryenTruncSFloat64ToInt32']
pub fn truncsfloat64toint32() BinaryenOp

[c:'BinaryenTruncSFloat64ToInt64']
pub fn truncsfloat64toint64() BinaryenOp

[c:'BinaryenTruncUFloat64ToInt32']
pub fn truncufloat64toint32() BinaryenOp

[c:'BinaryenTruncUFloat64ToInt64']
pub fn truncufloat64toint64() BinaryenOp

[c:'BinaryenReinterpretFloat32']
pub fn reinterpretfloat32() BinaryenOp

[c:'BinaryenReinterpretFloat64']
pub fn reinterpretfloat64() BinaryenOp

[c:'BinaryenConvertSInt32ToFloat32']
pub fn convertsint32tofloat32() BinaryenOp

[c:'BinaryenConvertSInt32ToFloat64']
pub fn convertsint32tofloat64() BinaryenOp

[c:'BinaryenConvertUInt32ToFloat32']
pub fn convertuint32tofloat32() BinaryenOp

[c:'BinaryenConvertUInt32ToFloat64']
pub fn convertuint32tofloat64() BinaryenOp

[c:'BinaryenConvertSInt64ToFloat32']
pub fn convertsint64tofloat32() BinaryenOp

[c:'BinaryenConvertSInt64ToFloat64']
pub fn convertsint64tofloat64() BinaryenOp

[c:'BinaryenConvertUInt64ToFloat32']
pub fn convertuint64tofloat32() BinaryenOp

[c:'BinaryenConvertUInt64ToFloat64']
pub fn convertuint64tofloat64() BinaryenOp

[c:'BinaryenPromoteFloat32']
pub fn promotefloat32() BinaryenOp

[c:'BinaryenDemoteFloat64']
pub fn demotefloat64() BinaryenOp

[c:'BinaryenReinterpretInt32']
pub fn reinterpretint32() BinaryenOp

[c:'BinaryenReinterpretInt64']
pub fn reinterpretint64() BinaryenOp

[c:'BinaryenExtendS8Int32']
pub fn extends8int32() BinaryenOp

[c:'BinaryenExtendS16Int32']
pub fn extends16int32() BinaryenOp

[c:'BinaryenExtendS8Int64']
pub fn extends8int64() BinaryenOp

[c:'BinaryenExtendS16Int64']
pub fn extends16int64() BinaryenOp

[c:'BinaryenExtendS32Int64']
pub fn extends32int64() BinaryenOp

[c:'BinaryenAddInt32']
pub fn addint32() BinaryenOp

[c:'BinaryenSubInt32']
pub fn subint32() BinaryenOp

[c:'BinaryenMulInt32']
pub fn mulint32() BinaryenOp

[c:'BinaryenDivSInt32']
pub fn divsint32() BinaryenOp

[c:'BinaryenDivUInt32']
pub fn divuint32() BinaryenOp

[c:'BinaryenRemSInt32']
pub fn remsint32() BinaryenOp

[c:'BinaryenRemUInt32']
pub fn remuint32() BinaryenOp

[c:'BinaryenAndInt32']
pub fn andint32() BinaryenOp

[c:'BinaryenOrInt32']
pub fn orint32() BinaryenOp

[c:'BinaryenXorInt32']
pub fn xorint32() BinaryenOp

[c:'BinaryenShlInt32']
pub fn shlint32() BinaryenOp

[c:'BinaryenShrUInt32']
pub fn shruint32() BinaryenOp

[c:'BinaryenShrSInt32']
pub fn shrsint32() BinaryenOp

[c:'BinaryenRotLInt32']
pub fn rotlint32() BinaryenOp

[c:'BinaryenRotRInt32']
pub fn rotrint32() BinaryenOp

[c:'BinaryenEqInt32']
pub fn eqint32() BinaryenOp

[c:'BinaryenNeInt32']
pub fn neint32() BinaryenOp

[c:'BinaryenLtSInt32']
pub fn ltsint32() BinaryenOp

[c:'BinaryenLtUInt32']
pub fn ltuint32() BinaryenOp

[c:'BinaryenLeSInt32']
pub fn lesint32() BinaryenOp

[c:'BinaryenLeUInt32']
pub fn leuint32() BinaryenOp

[c:'BinaryenGtSInt32']
pub fn gtsint32() BinaryenOp

[c:'BinaryenGtUInt32']
pub fn gtuint32() BinaryenOp

[c:'BinaryenGeSInt32']
pub fn gesint32() BinaryenOp

[c:'BinaryenGeUInt32']
pub fn geuint32() BinaryenOp

[c:'BinaryenAddInt64']
pub fn addint64() BinaryenOp

[c:'BinaryenSubInt64']
pub fn subint64() BinaryenOp

[c:'BinaryenMulInt64']
pub fn mulint64() BinaryenOp

[c:'BinaryenDivSInt64']
pub fn divsint64() BinaryenOp

[c:'BinaryenDivUInt64']
pub fn divuint64() BinaryenOp

[c:'BinaryenRemSInt64']
pub fn remsint64() BinaryenOp

[c:'BinaryenRemUInt64']
pub fn remuint64() BinaryenOp

[c:'BinaryenAndInt64']
pub fn andint64() BinaryenOp

[c:'BinaryenOrInt64']
pub fn orint64() BinaryenOp

[c:'BinaryenXorInt64']
pub fn xorint64() BinaryenOp

[c:'BinaryenShlInt64']
pub fn shlint64() BinaryenOp

[c:'BinaryenShrUInt64']
pub fn shruint64() BinaryenOp

[c:'BinaryenShrSInt64']
pub fn shrsint64() BinaryenOp

[c:'BinaryenRotLInt64']
pub fn rotlint64() BinaryenOp

[c:'BinaryenRotRInt64']
pub fn rotrint64() BinaryenOp

[c:'BinaryenEqInt64']
pub fn eqint64() BinaryenOp

[c:'BinaryenNeInt64']
pub fn neint64() BinaryenOp

[c:'BinaryenLtSInt64']
pub fn ltsint64() BinaryenOp

[c:'BinaryenLtUInt64']
pub fn ltuint64() BinaryenOp

[c:'BinaryenLeSInt64']
pub fn lesint64() BinaryenOp

[c:'BinaryenLeUInt64']
pub fn leuint64() BinaryenOp

[c:'BinaryenGtSInt64']
pub fn gtsint64() BinaryenOp

[c:'BinaryenGtUInt64']
pub fn gtuint64() BinaryenOp

[c:'BinaryenGeSInt64']
pub fn gesint64() BinaryenOp

[c:'BinaryenGeUInt64']
pub fn geuint64() BinaryenOp

[c:'BinaryenAddFloat32']
pub fn addfloat32() BinaryenOp

[c:'BinaryenSubFloat32']
pub fn subfloat32() BinaryenOp

[c:'BinaryenMulFloat32']
pub fn mulfloat32() BinaryenOp

[c:'BinaryenDivFloat32']
pub fn divfloat32() BinaryenOp

[c:'BinaryenCopySignFloat32']
pub fn copysignfloat32() BinaryenOp

[c:'BinaryenMinFloat32']
pub fn minfloat32() BinaryenOp

[c:'BinaryenMaxFloat32']
pub fn maxfloat32() BinaryenOp

[c:'BinaryenEqFloat32']
pub fn eqfloat32() BinaryenOp

[c:'BinaryenNeFloat32']
pub fn nefloat32() BinaryenOp

[c:'BinaryenLtFloat32']
pub fn ltfloat32() BinaryenOp

[c:'BinaryenLeFloat32']
pub fn lefloat32() BinaryenOp

[c:'BinaryenGtFloat32']
pub fn gtfloat32() BinaryenOp

[c:'BinaryenGeFloat32']
pub fn gefloat32() BinaryenOp

[c:'BinaryenAddFloat64']
pub fn addfloat64() BinaryenOp

[c:'BinaryenSubFloat64']
pub fn subfloat64() BinaryenOp

[c:'BinaryenMulFloat64']
pub fn mulfloat64() BinaryenOp

[c:'BinaryenDivFloat64']
pub fn divfloat64() BinaryenOp

[c:'BinaryenCopySignFloat64']
pub fn copysignfloat64() BinaryenOp

[c:'BinaryenMinFloat64']
pub fn minfloat64() BinaryenOp

[c:'BinaryenMaxFloat64']
pub fn maxfloat64() BinaryenOp

[c:'BinaryenEqFloat64']
pub fn eqfloat64() BinaryenOp

[c:'BinaryenNeFloat64']
pub fn nefloat64() BinaryenOp

[c:'BinaryenLtFloat64']
pub fn ltfloat64() BinaryenOp

[c:'BinaryenLeFloat64']
pub fn lefloat64() BinaryenOp

[c:'BinaryenGtFloat64']
pub fn gtfloat64() BinaryenOp

[c:'BinaryenGeFloat64']
pub fn gefloat64() BinaryenOp

[c:'BinaryenAtomicRMWAdd']
pub fn atomicrmwadd() BinaryenOp

[c:'BinaryenAtomicRMWSub']
pub fn atomicrmwsub() BinaryenOp

[c:'BinaryenAtomicRMWAnd']
pub fn atomicrmwand() BinaryenOp

[c:'BinaryenAtomicRMWOr']
pub fn atomicrmwor() BinaryenOp

[c:'BinaryenAtomicRMWXor']
pub fn atomicrmwxor() BinaryenOp

[c:'BinaryenAtomicRMWXchg']
pub fn atomicrmwxchg() BinaryenOp

[c:'BinaryenTruncSatSFloat32ToInt32']
pub fn truncsatsfloat32toint32() BinaryenOp

[c:'BinaryenTruncSatSFloat32ToInt64']
pub fn truncsatsfloat32toint64() BinaryenOp

[c:'BinaryenTruncSatUFloat32ToInt32']
pub fn truncsatufloat32toint32() BinaryenOp

[c:'BinaryenTruncSatUFloat32ToInt64']
pub fn truncsatufloat32toint64() BinaryenOp

[c:'BinaryenTruncSatSFloat64ToInt32']
pub fn truncsatsfloat64toint32() BinaryenOp

[c:'BinaryenTruncSatSFloat64ToInt64']
pub fn truncsatsfloat64toint64() BinaryenOp

[c:'BinaryenTruncSatUFloat64ToInt32']
pub fn truncsatufloat64toint32() BinaryenOp

[c:'BinaryenTruncSatUFloat64ToInt64']
pub fn truncsatufloat64toint64() BinaryenOp

[c:'BinaryenSplatVecI8x16']
pub fn splatveci8x16() BinaryenOp

[c:'BinaryenExtractLaneSVecI8x16']
pub fn extractlanesveci8x16() BinaryenOp

[c:'BinaryenExtractLaneUVecI8x16']
pub fn extractlaneuveci8x16() BinaryenOp

[c:'BinaryenReplaceLaneVecI8x16']
pub fn replacelaneveci8x16() BinaryenOp

[c:'BinaryenSplatVecI16x8']
pub fn splatveci16x8() BinaryenOp

[c:'BinaryenExtractLaneSVecI16x8']
pub fn extractlanesveci16x8() BinaryenOp

[c:'BinaryenExtractLaneUVecI16x8']
pub fn extractlaneuveci16x8() BinaryenOp

[c:'BinaryenReplaceLaneVecI16x8']
pub fn replacelaneveci16x8() BinaryenOp

[c:'BinaryenSplatVecI32x4']
pub fn splatveci32x4() BinaryenOp

[c:'BinaryenExtractLaneVecI32x4']
pub fn extractlaneveci32x4() BinaryenOp

[c:'BinaryenReplaceLaneVecI32x4']
pub fn replacelaneveci32x4() BinaryenOp

[c:'BinaryenSplatVecI64x2']
pub fn splatveci64x2() BinaryenOp

[c:'BinaryenExtractLaneVecI64x2']
pub fn extractlaneveci64x2() BinaryenOp

[c:'BinaryenReplaceLaneVecI64x2']
pub fn replacelaneveci64x2() BinaryenOp

[c:'BinaryenSplatVecF32x4']
pub fn splatvecf32x4() BinaryenOp

[c:'BinaryenExtractLaneVecF32x4']
pub fn extractlanevecf32x4() BinaryenOp

[c:'BinaryenReplaceLaneVecF32x4']
pub fn replacelanevecf32x4() BinaryenOp

[c:'BinaryenSplatVecF64x2']
pub fn splatvecf64x2() BinaryenOp

[c:'BinaryenExtractLaneVecF64x2']
pub fn extractlanevecf64x2() BinaryenOp

[c:'BinaryenReplaceLaneVecF64x2']
pub fn replacelanevecf64x2() BinaryenOp

[c:'BinaryenEqVecI8x16']
pub fn eqveci8x16() BinaryenOp

[c:'BinaryenNeVecI8x16']
pub fn neveci8x16() BinaryenOp

[c:'BinaryenLtSVecI8x16']
pub fn ltsveci8x16() BinaryenOp

[c:'BinaryenLtUVecI8x16']
pub fn ltuveci8x16() BinaryenOp

[c:'BinaryenGtSVecI8x16']
pub fn gtsveci8x16() BinaryenOp

[c:'BinaryenGtUVecI8x16']
pub fn gtuveci8x16() BinaryenOp

[c:'BinaryenLeSVecI8x16']
pub fn lesveci8x16() BinaryenOp

[c:'BinaryenLeUVecI8x16']
pub fn leuveci8x16() BinaryenOp

[c:'BinaryenGeSVecI8x16']
pub fn gesveci8x16() BinaryenOp

[c:'BinaryenGeUVecI8x16']
pub fn geuveci8x16() BinaryenOp

[c:'BinaryenEqVecI16x8']
pub fn eqveci16x8() BinaryenOp

[c:'BinaryenNeVecI16x8']
pub fn neveci16x8() BinaryenOp

[c:'BinaryenLtSVecI16x8']
pub fn ltsveci16x8() BinaryenOp

[c:'BinaryenLtUVecI16x8']
pub fn ltuveci16x8() BinaryenOp

[c:'BinaryenGtSVecI16x8']
pub fn gtsveci16x8() BinaryenOp

[c:'BinaryenGtUVecI16x8']
pub fn gtuveci16x8() BinaryenOp

[c:'BinaryenLeSVecI16x8']
pub fn lesveci16x8() BinaryenOp

[c:'BinaryenLeUVecI16x8']
pub fn leuveci16x8() BinaryenOp

[c:'BinaryenGeSVecI16x8']
pub fn gesveci16x8() BinaryenOp

[c:'BinaryenGeUVecI16x8']
pub fn geuveci16x8() BinaryenOp

[c:'BinaryenEqVecI32x4']
pub fn eqveci32x4() BinaryenOp

[c:'BinaryenNeVecI32x4']
pub fn neveci32x4() BinaryenOp

[c:'BinaryenLtSVecI32x4']
pub fn ltsveci32x4() BinaryenOp

[c:'BinaryenLtUVecI32x4']
pub fn ltuveci32x4() BinaryenOp

[c:'BinaryenGtSVecI32x4']
pub fn gtsveci32x4() BinaryenOp

[c:'BinaryenGtUVecI32x4']
pub fn gtuveci32x4() BinaryenOp

[c:'BinaryenLeSVecI32x4']
pub fn lesveci32x4() BinaryenOp

[c:'BinaryenLeUVecI32x4']
pub fn leuveci32x4() BinaryenOp

[c:'BinaryenGeSVecI32x4']
pub fn gesveci32x4() BinaryenOp

[c:'BinaryenGeUVecI32x4']
pub fn geuveci32x4() BinaryenOp

[c:'BinaryenEqVecI64x2']
pub fn eqveci64x2() BinaryenOp

[c:'BinaryenNeVecI64x2']
pub fn neveci64x2() BinaryenOp

[c:'BinaryenLtSVecI64x2']
pub fn ltsveci64x2() BinaryenOp

[c:'BinaryenGtSVecI64x2']
pub fn gtsveci64x2() BinaryenOp

[c:'BinaryenLeSVecI64x2']
pub fn lesveci64x2() BinaryenOp

[c:'BinaryenGeSVecI64x2']
pub fn gesveci64x2() BinaryenOp

[c:'BinaryenEqVecF32x4']
pub fn eqvecf32x4() BinaryenOp

[c:'BinaryenNeVecF32x4']
pub fn nevecf32x4() BinaryenOp

[c:'BinaryenLtVecF32x4']
pub fn ltvecf32x4() BinaryenOp

[c:'BinaryenGtVecF32x4']
pub fn gtvecf32x4() BinaryenOp

[c:'BinaryenLeVecF32x4']
pub fn levecf32x4() BinaryenOp

[c:'BinaryenGeVecF32x4']
pub fn gevecf32x4() BinaryenOp

[c:'BinaryenEqVecF64x2']
pub fn eqvecf64x2() BinaryenOp

[c:'BinaryenNeVecF64x2']
pub fn nevecf64x2() BinaryenOp

[c:'BinaryenLtVecF64x2']
pub fn ltvecf64x2() BinaryenOp

[c:'BinaryenGtVecF64x2']
pub fn gtvecf64x2() BinaryenOp

[c:'BinaryenLeVecF64x2']
pub fn levecf64x2() BinaryenOp

[c:'BinaryenGeVecF64x2']
pub fn gevecf64x2() BinaryenOp

[c:'BinaryenNotVec128']
pub fn notvec128() BinaryenOp

[c:'BinaryenAndVec128']
pub fn andvec128() BinaryenOp

[c:'BinaryenOrVec128']
pub fn orvec128() BinaryenOp

[c:'BinaryenXorVec128']
pub fn xorvec128() BinaryenOp

[c:'BinaryenAndNotVec128']
pub fn andnotvec128() BinaryenOp

[c:'BinaryenBitselectVec128']
pub fn bitselectvec128() BinaryenOp

[c:'BinaryenAnyTrueVec128']
pub fn anytruevec128() BinaryenOp

[c:'BinaryenPopcntVecI8x16']
pub fn popcntveci8x16() BinaryenOp

[c:'BinaryenAbsVecI8x16']
pub fn absveci8x16() BinaryenOp

[c:'BinaryenNegVecI8x16']
pub fn negveci8x16() BinaryenOp

[c:'BinaryenAllTrueVecI8x16']
pub fn alltrueveci8x16() BinaryenOp

[c:'BinaryenBitmaskVecI8x16']
pub fn bitmaskveci8x16() BinaryenOp

[c:'BinaryenShlVecI8x16']
pub fn shlveci8x16() BinaryenOp

[c:'BinaryenShrSVecI8x16']
pub fn shrsveci8x16() BinaryenOp

[c:'BinaryenShrUVecI8x16']
pub fn shruveci8x16() BinaryenOp

[c:'BinaryenAddVecI8x16']
pub fn addveci8x16() BinaryenOp

[c:'BinaryenAddSatSVecI8x16']
pub fn addsatsveci8x16() BinaryenOp

[c:'BinaryenAddSatUVecI8x16']
pub fn addsatuveci8x16() BinaryenOp

[c:'BinaryenSubVecI8x16']
pub fn subveci8x16() BinaryenOp

[c:'BinaryenSubSatSVecI8x16']
pub fn subsatsveci8x16() BinaryenOp

[c:'BinaryenSubSatUVecI8x16']
pub fn subsatuveci8x16() BinaryenOp

[c:'BinaryenMinSVecI8x16']
pub fn minsveci8x16() BinaryenOp

[c:'BinaryenMinUVecI8x16']
pub fn minuveci8x16() BinaryenOp

[c:'BinaryenMaxSVecI8x16']
pub fn maxsveci8x16() BinaryenOp

[c:'BinaryenMaxUVecI8x16']
pub fn maxuveci8x16() BinaryenOp

[c:'BinaryenAvgrUVecI8x16']
pub fn avgruveci8x16() BinaryenOp

[c:'BinaryenAbsVecI16x8']
pub fn absveci16x8() BinaryenOp

[c:'BinaryenNegVecI16x8']
pub fn negveci16x8() BinaryenOp

[c:'BinaryenAllTrueVecI16x8']
pub fn alltrueveci16x8() BinaryenOp

[c:'BinaryenBitmaskVecI16x8']
pub fn bitmaskveci16x8() BinaryenOp

[c:'BinaryenShlVecI16x8']
pub fn shlveci16x8() BinaryenOp

[c:'BinaryenShrSVecI16x8']
pub fn shrsveci16x8() BinaryenOp

[c:'BinaryenShrUVecI16x8']
pub fn shruveci16x8() BinaryenOp

[c:'BinaryenAddVecI16x8']
pub fn addveci16x8() BinaryenOp

[c:'BinaryenAddSatSVecI16x8']
pub fn addsatsveci16x8() BinaryenOp

[c:'BinaryenAddSatUVecI16x8']
pub fn addsatuveci16x8() BinaryenOp

[c:'BinaryenSubVecI16x8']
pub fn subveci16x8() BinaryenOp

[c:'BinaryenSubSatSVecI16x8']
pub fn subsatsveci16x8() BinaryenOp

[c:'BinaryenSubSatUVecI16x8']
pub fn subsatuveci16x8() BinaryenOp

[c:'BinaryenMulVecI16x8']
pub fn mulveci16x8() BinaryenOp

[c:'BinaryenMinSVecI16x8']
pub fn minsveci16x8() BinaryenOp

[c:'BinaryenMinUVecI16x8']
pub fn minuveci16x8() BinaryenOp

[c:'BinaryenMaxSVecI16x8']
pub fn maxsveci16x8() BinaryenOp

[c:'BinaryenMaxUVecI16x8']
pub fn maxuveci16x8() BinaryenOp

[c:'BinaryenAvgrUVecI16x8']
pub fn avgruveci16x8() BinaryenOp

[c:'BinaryenQ15MulrSatSVecI16x8']
pub fn q15mulrsatsveci16x8() BinaryenOp

[c:'BinaryenExtMulLowSVecI16x8']
pub fn extmullowsveci16x8() BinaryenOp

[c:'BinaryenExtMulHighSVecI16x8']
pub fn extmulhighsveci16x8() BinaryenOp

[c:'BinaryenExtMulLowUVecI16x8']
pub fn extmullowuveci16x8() BinaryenOp

[c:'BinaryenExtMulHighUVecI16x8']
pub fn extmulhighuveci16x8() BinaryenOp

[c:'BinaryenAbsVecI32x4']
pub fn absveci32x4() BinaryenOp

[c:'BinaryenNegVecI32x4']
pub fn negveci32x4() BinaryenOp

[c:'BinaryenAllTrueVecI32x4']
pub fn alltrueveci32x4() BinaryenOp

[c:'BinaryenBitmaskVecI32x4']
pub fn bitmaskveci32x4() BinaryenOp

[c:'BinaryenShlVecI32x4']
pub fn shlveci32x4() BinaryenOp

[c:'BinaryenShrSVecI32x4']
pub fn shrsveci32x4() BinaryenOp

[c:'BinaryenShrUVecI32x4']
pub fn shruveci32x4() BinaryenOp

[c:'BinaryenAddVecI32x4']
pub fn addveci32x4() BinaryenOp

[c:'BinaryenSubVecI32x4']
pub fn subveci32x4() BinaryenOp

[c:'BinaryenMulVecI32x4']
pub fn mulveci32x4() BinaryenOp

[c:'BinaryenMinSVecI32x4']
pub fn minsveci32x4() BinaryenOp

[c:'BinaryenMinUVecI32x4']
pub fn minuveci32x4() BinaryenOp

[c:'BinaryenMaxSVecI32x4']
pub fn maxsveci32x4() BinaryenOp

[c:'BinaryenMaxUVecI32x4']
pub fn maxuveci32x4() BinaryenOp

[c:'BinaryenDotSVecI16x8ToVecI32x4']
pub fn dotsveci16x8toveci32x4() BinaryenOp

[c:'BinaryenExtMulLowSVecI32x4']
pub fn extmullowsveci32x4() BinaryenOp

[c:'BinaryenExtMulHighSVecI32x4']
pub fn extmulhighsveci32x4() BinaryenOp

[c:'BinaryenExtMulLowUVecI32x4']
pub fn extmullowuveci32x4() BinaryenOp

[c:'BinaryenExtMulHighUVecI32x4']
pub fn extmulhighuveci32x4() BinaryenOp

[c:'BinaryenAbsVecI64x2']
pub fn absveci64x2() BinaryenOp

[c:'BinaryenNegVecI64x2']
pub fn negveci64x2() BinaryenOp

[c:'BinaryenAllTrueVecI64x2']
pub fn alltrueveci64x2() BinaryenOp

[c:'BinaryenBitmaskVecI64x2']
pub fn bitmaskveci64x2() BinaryenOp

[c:'BinaryenShlVecI64x2']
pub fn shlveci64x2() BinaryenOp

[c:'BinaryenShrSVecI64x2']
pub fn shrsveci64x2() BinaryenOp

[c:'BinaryenShrUVecI64x2']
pub fn shruveci64x2() BinaryenOp

[c:'BinaryenAddVecI64x2']
pub fn addveci64x2() BinaryenOp

[c:'BinaryenSubVecI64x2']
pub fn subveci64x2() BinaryenOp

[c:'BinaryenMulVecI64x2']
pub fn mulveci64x2() BinaryenOp

[c:'BinaryenExtMulLowSVecI64x2']
pub fn extmullowsveci64x2() BinaryenOp

[c:'BinaryenExtMulHighSVecI64x2']
pub fn extmulhighsveci64x2() BinaryenOp

[c:'BinaryenExtMulLowUVecI64x2']
pub fn extmullowuveci64x2() BinaryenOp

[c:'BinaryenExtMulHighUVecI64x2']
pub fn extmulhighuveci64x2() BinaryenOp

[c:'BinaryenAbsVecF32x4']
pub fn absvecf32x4() BinaryenOp

[c:'BinaryenNegVecF32x4']
pub fn negvecf32x4() BinaryenOp

[c:'BinaryenSqrtVecF32x4']
pub fn sqrtvecf32x4() BinaryenOp

[c:'BinaryenAddVecF32x4']
pub fn addvecf32x4() BinaryenOp

[c:'BinaryenSubVecF32x4']
pub fn subvecf32x4() BinaryenOp

[c:'BinaryenMulVecF32x4']
pub fn mulvecf32x4() BinaryenOp

[c:'BinaryenDivVecF32x4']
pub fn divvecf32x4() BinaryenOp

[c:'BinaryenMinVecF32x4']
pub fn minvecf32x4() BinaryenOp

[c:'BinaryenMaxVecF32x4']
pub fn maxvecf32x4() BinaryenOp

[c:'BinaryenPMinVecF32x4']
pub fn pminvecf32x4() BinaryenOp

[c:'BinaryenPMaxVecF32x4']
pub fn pmaxvecf32x4() BinaryenOp

[c:'BinaryenCeilVecF32x4']
pub fn ceilvecf32x4() BinaryenOp

[c:'BinaryenFloorVecF32x4']
pub fn floorvecf32x4() BinaryenOp

[c:'BinaryenTruncVecF32x4']
pub fn truncvecf32x4() BinaryenOp

[c:'BinaryenNearestVecF32x4']
pub fn nearestvecf32x4() BinaryenOp

[c:'BinaryenAbsVecF64x2']
pub fn absvecf64x2() BinaryenOp

[c:'BinaryenNegVecF64x2']
pub fn negvecf64x2() BinaryenOp

[c:'BinaryenSqrtVecF64x2']
pub fn sqrtvecf64x2() BinaryenOp

[c:'BinaryenAddVecF64x2']
pub fn addvecf64x2() BinaryenOp

[c:'BinaryenSubVecF64x2']
pub fn subvecf64x2() BinaryenOp

[c:'BinaryenMulVecF64x2']
pub fn mulvecf64x2() BinaryenOp

[c:'BinaryenDivVecF64x2']
pub fn divvecf64x2() BinaryenOp

[c:'BinaryenMinVecF64x2']
pub fn minvecf64x2() BinaryenOp

[c:'BinaryenMaxVecF64x2']
pub fn maxvecf64x2() BinaryenOp

[c:'BinaryenPMinVecF64x2']
pub fn pminvecf64x2() BinaryenOp

[c:'BinaryenPMaxVecF64x2']
pub fn pmaxvecf64x2() BinaryenOp

[c:'BinaryenCeilVecF64x2']
pub fn ceilvecf64x2() BinaryenOp

[c:'BinaryenFloorVecF64x2']
pub fn floorvecf64x2() BinaryenOp

[c:'BinaryenTruncVecF64x2']
pub fn truncvecf64x2() BinaryenOp

[c:'BinaryenNearestVecF64x2']
pub fn nearestvecf64x2() BinaryenOp

[c:'BinaryenExtAddPairwiseSVecI8x16ToI16x8']
pub fn extaddpairwisesveci8x16toi16x8() BinaryenOp

[c:'BinaryenExtAddPairwiseUVecI8x16ToI16x8']
pub fn extaddpairwiseuveci8x16toi16x8() BinaryenOp

[c:'BinaryenExtAddPairwiseSVecI16x8ToI32x4']
pub fn extaddpairwisesveci16x8toi32x4() BinaryenOp

[c:'BinaryenExtAddPairwiseUVecI16x8ToI32x4']
pub fn extaddpairwiseuveci16x8toi32x4() BinaryenOp

[c:'BinaryenTruncSatSVecF32x4ToVecI32x4']
pub fn truncsatsvecf32x4toveci32x4() BinaryenOp

[c:'BinaryenTruncSatUVecF32x4ToVecI32x4']
pub fn truncsatuvecf32x4toveci32x4() BinaryenOp

[c:'BinaryenConvertSVecI32x4ToVecF32x4']
pub fn convertsveci32x4tovecf32x4() BinaryenOp

[c:'BinaryenConvertUVecI32x4ToVecF32x4']
pub fn convertuveci32x4tovecf32x4() BinaryenOp

[c:'BinaryenLoad8SplatVec128']
pub fn load8splatvec128() BinaryenOp

[c:'BinaryenLoad16SplatVec128']
pub fn load16splatvec128() BinaryenOp

[c:'BinaryenLoad32SplatVec128']
pub fn load32splatvec128() BinaryenOp

[c:'BinaryenLoad64SplatVec128']
pub fn load64splatvec128() BinaryenOp

[c:'BinaryenLoad8x8SVec128']
pub fn load8x8svec128() BinaryenOp

[c:'BinaryenLoad8x8UVec128']
pub fn load8x8uvec128() BinaryenOp

[c:'BinaryenLoad16x4SVec128']
pub fn load16x4svec128() BinaryenOp

[c:'BinaryenLoad16x4UVec128']
pub fn load16x4uvec128() BinaryenOp

[c:'BinaryenLoad32x2SVec128']
pub fn load32x2svec128() BinaryenOp

[c:'BinaryenLoad32x2UVec128']
pub fn load32x2uvec128() BinaryenOp

[c:'BinaryenLoad32ZeroVec128']
pub fn load32zerovec128() BinaryenOp

[c:'BinaryenLoad64ZeroVec128']
pub fn load64zerovec128() BinaryenOp

[c:'BinaryenLoad8LaneVec128']
pub fn load8lanevec128() BinaryenOp

[c:'BinaryenLoad16LaneVec128']
pub fn load16lanevec128() BinaryenOp

[c:'BinaryenLoad32LaneVec128']
pub fn load32lanevec128() BinaryenOp

[c:'BinaryenLoad64LaneVec128']
pub fn load64lanevec128() BinaryenOp

[c:'BinaryenStore8LaneVec128']
pub fn store8lanevec128() BinaryenOp

[c:'BinaryenStore16LaneVec128']
pub fn store16lanevec128() BinaryenOp

[c:'BinaryenStore32LaneVec128']
pub fn store32lanevec128() BinaryenOp

[c:'BinaryenStore64LaneVec128']
pub fn store64lanevec128() BinaryenOp

[c:'BinaryenNarrowSVecI16x8ToVecI8x16']
pub fn narrowsveci16x8toveci8x16() BinaryenOp

[c:'BinaryenNarrowUVecI16x8ToVecI8x16']
pub fn narrowuveci16x8toveci8x16() BinaryenOp

[c:'BinaryenNarrowSVecI32x4ToVecI16x8']
pub fn narrowsveci32x4toveci16x8() BinaryenOp

[c:'BinaryenNarrowUVecI32x4ToVecI16x8']
pub fn narrowuveci32x4toveci16x8() BinaryenOp

[c:'BinaryenExtendLowSVecI8x16ToVecI16x8']
pub fn extendlowsveci8x16toveci16x8() BinaryenOp

[c:'BinaryenExtendHighSVecI8x16ToVecI16x8']
pub fn extendhighsveci8x16toveci16x8() BinaryenOp

[c:'BinaryenExtendLowUVecI8x16ToVecI16x8']
pub fn extendlowuveci8x16toveci16x8() BinaryenOp

[c:'BinaryenExtendHighUVecI8x16ToVecI16x8']
pub fn extendhighuveci8x16toveci16x8() BinaryenOp

[c:'BinaryenExtendLowSVecI16x8ToVecI32x4']
pub fn extendlowsveci16x8toveci32x4() BinaryenOp

[c:'BinaryenExtendHighSVecI16x8ToVecI32x4']
pub fn extendhighsveci16x8toveci32x4() BinaryenOp

[c:'BinaryenExtendLowUVecI16x8ToVecI32x4']
pub fn extendlowuveci16x8toveci32x4() BinaryenOp

[c:'BinaryenExtendHighUVecI16x8ToVecI32x4']
pub fn extendhighuveci16x8toveci32x4() BinaryenOp

[c:'BinaryenExtendLowSVecI32x4ToVecI64x2']
pub fn extendlowsveci32x4toveci64x2() BinaryenOp

[c:'BinaryenExtendHighSVecI32x4ToVecI64x2']
pub fn extendhighsveci32x4toveci64x2() BinaryenOp

[c:'BinaryenExtendLowUVecI32x4ToVecI64x2']
pub fn extendlowuveci32x4toveci64x2() BinaryenOp

[c:'BinaryenExtendHighUVecI32x4ToVecI64x2']
pub fn extendhighuveci32x4toveci64x2() BinaryenOp

[c:'BinaryenConvertLowSVecI32x4ToVecF64x2']
pub fn convertlowsveci32x4tovecf64x2() BinaryenOp

[c:'BinaryenConvertLowUVecI32x4ToVecF64x2']
pub fn convertlowuveci32x4tovecf64x2() BinaryenOp

[c:'BinaryenTruncSatZeroSVecF64x2ToVecI32x4']
pub fn truncsatzerosvecf64x2toveci32x4() BinaryenOp

[c:'BinaryenTruncSatZeroUVecF64x2ToVecI32x4']
pub fn truncsatzerouvecf64x2toveci32x4() BinaryenOp

[c:'BinaryenDemoteZeroVecF64x2ToVecF32x4']
pub fn demotezerovecf64x2tovecf32x4() BinaryenOp

[c:'BinaryenPromoteLowVecF32x4ToVecF64x2']
pub fn promotelowvecf32x4tovecf64x2() BinaryenOp

[c:'BinaryenSwizzleVecI8x16']
pub fn swizzleveci8x16() BinaryenOp

[c:'BinaryenRefIsNull']
pub fn refisnull() BinaryenOp

[c:'BinaryenRefIsFunc']
pub fn refisfunc() BinaryenOp

[c:'BinaryenRefIsData']
pub fn refisdata() BinaryenOp

[c:'BinaryenRefIsI31']
pub fn refisi31() BinaryenOp

[c:'BinaryenRefAsNonNull']
pub fn refasnonnull() BinaryenOp

[c:'BinaryenRefAsFunc']
pub fn refasfunc() BinaryenOp

[c:'BinaryenRefAsData']
pub fn refasdata() BinaryenOp

[c:'BinaryenRefAsI31']
pub fn refasi31() BinaryenOp

[c:'BinaryenRefAsExternInternalize']
pub fn refasexterninternalize() BinaryenOp

[c:'BinaryenRefAsExternExternalize']
pub fn refasexternexternalize() BinaryenOp

[c:'BinaryenBrOnNull']
pub fn bronnull() BinaryenOp

[c:'BinaryenBrOnNonNull']
pub fn bronnonnull() BinaryenOp

[c:'BinaryenBrOnCast']
pub fn broncast() BinaryenOp

[c:'BinaryenBrOnCastFail']
pub fn broncastfail() BinaryenOp

[c:'BinaryenBrOnFunc']
pub fn bronfunc() BinaryenOp

[c:'BinaryenBrOnNonFunc']
pub fn bronnonfunc() BinaryenOp

[c:'BinaryenBrOnData']
pub fn brondata() BinaryenOp

[c:'BinaryenBrOnNonData']
pub fn bronnondata() BinaryenOp

[c:'BinaryenBrOnI31']
pub fn broni31() BinaryenOp

[c:'BinaryenBrOnNonI31']
pub fn bronnoni31() BinaryenOp

[c:'BinaryenStringNewUTF8']
pub fn stringnewutf8() BinaryenOp

[c:'BinaryenStringNewWTF8']
pub fn stringnewwtf8() BinaryenOp

[c:'BinaryenStringNewReplace']
pub fn stringnewreplace() BinaryenOp

[c:'BinaryenStringNewWTF16']
pub fn stringnewwtf16() BinaryenOp

[c:'BinaryenStringNewUTF8Array']
pub fn stringnewutf8array() BinaryenOp

[c:'BinaryenStringNewWTF8Array']
pub fn stringnewwtf8array() BinaryenOp

[c:'BinaryenStringNewReplaceArray']
pub fn stringnewreplacearray() BinaryenOp

[c:'BinaryenStringNewWTF16Array']
pub fn stringnewwtf16array() BinaryenOp

[c:'BinaryenStringMeasureUTF8']
pub fn stringmeasureutf8() BinaryenOp

[c:'BinaryenStringMeasureWTF8']
pub fn stringmeasurewtf8() BinaryenOp

[c:'BinaryenStringMeasureWTF16']
pub fn stringmeasurewtf16() BinaryenOp

[c:'BinaryenStringMeasureIsUSV']
pub fn stringmeasureisusv() BinaryenOp

[c:'BinaryenStringMeasureWTF16View']
pub fn stringmeasurewtf16view() BinaryenOp

[c:'BinaryenStringEncodeUTF8']
pub fn stringencodeutf8() BinaryenOp

[c:'BinaryenStringEncodeWTF8']
pub fn stringencodewtf8() BinaryenOp

[c:'BinaryenStringEncodeWTF16']
pub fn stringencodewtf16() BinaryenOp

[c:'BinaryenStringEncodeUTF8Array']
pub fn stringencodeutf8array() BinaryenOp

[c:'BinaryenStringEncodeWTF8Array']
pub fn stringencodewtf8array() BinaryenOp

[c:'BinaryenStringEncodeWTF16Array']
pub fn stringencodewtf16array() BinaryenOp

[c:'BinaryenStringAsWTF8']
pub fn stringaswtf8() BinaryenOp

[c:'BinaryenStringAsWTF16']
pub fn stringaswtf16() BinaryenOp

[c:'BinaryenStringAsIter']
pub fn stringasiter() BinaryenOp

[c:'BinaryenStringIterMoveAdvance']
pub fn stringitermoveadvance() BinaryenOp

[c:'BinaryenStringIterMoveRewind']
pub fn stringitermoverewind() BinaryenOp

[c:'BinaryenStringSliceWTF8']
pub fn stringslicewtf8() BinaryenOp

[c:'BinaryenStringSliceWTF16']
pub fn stringslicewtf16() BinaryenOp

type BinaryenExpressionRef = voidptr
[c:'BinaryenBlock']
pub fn block(module_ BinaryenModuleRef, name &i8, children &BinaryenExpressionRef, numchildren BinaryenIndex, type_ BinaryenType) BinaryenExpressionRef

[c:'BinaryenIf']
pub fn bif(module_ BinaryenModuleRef, condition BinaryenExpressionRef, iftrue BinaryenExpressionRef, iffalse BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenLoop']
pub fn loop(module_ BinaryenModuleRef, in_ &i8, body BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenBreak']
pub fn bbreak(module_ BinaryenModuleRef, name &i8, condition BinaryenExpressionRef, value BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenSwitch']
pub fn switch(module_ BinaryenModuleRef, names &&u8, numnames BinaryenIndex, defaultname &i8, condition BinaryenExpressionRef, value BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenCall']
pub fn call(module_ BinaryenModuleRef, target &i8, operands &BinaryenExpressionRef, numoperands BinaryenIndex, returntype BinaryenType) BinaryenExpressionRef

[c:'BinaryenCallIndirect']
pub fn callindirect(module_ BinaryenModuleRef, table &i8, target BinaryenExpressionRef, operands &BinaryenExpressionRef, numoperands BinaryenIndex, params BinaryenType, results BinaryenType) BinaryenExpressionRef

[c:'BinaryenReturnCall']
pub fn returncall(module_ BinaryenModuleRef, target &i8, operands &BinaryenExpressionRef, numoperands BinaryenIndex, returntype BinaryenType) BinaryenExpressionRef

[c:'BinaryenReturnCallIndirect']
pub fn returncallindirect(module_ BinaryenModuleRef, table &i8, target BinaryenExpressionRef, operands &BinaryenExpressionRef, numoperands BinaryenIndex, params BinaryenType, results BinaryenType) BinaryenExpressionRef

[c:'BinaryenLocalGet']
pub fn localget(module_ BinaryenModuleRef, index BinaryenIndex, type_ BinaryenType) BinaryenExpressionRef

[c:'BinaryenLocalSet']
pub fn localset(module_ BinaryenModuleRef, index BinaryenIndex, value BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenLocalTee']
pub fn localtee(module_ BinaryenModuleRef, index BinaryenIndex, value BinaryenExpressionRef, type_ BinaryenType) BinaryenExpressionRef

[c:'BinaryenGlobalGet']
pub fn globalget(module_ BinaryenModuleRef, name &i8, type_ BinaryenType) BinaryenExpressionRef

[c:'BinaryenGlobalSet']
pub fn globalset(module_ BinaryenModuleRef, name &i8, value BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenLoad']
pub fn load(module_ BinaryenModuleRef, bytes u32, signed_ bool, offset u32, align u32, type_ BinaryenType, ptr BinaryenExpressionRef, memoryname &i8) BinaryenExpressionRef

[c:'BinaryenStore']
pub fn store(module_ BinaryenModuleRef, bytes u32, offset u32, align u32, ptr BinaryenExpressionRef, value BinaryenExpressionRef, type_ BinaryenType, memoryname &i8) BinaryenExpressionRef

[c:'BinaryenConst']
pub fn bconst(module_ BinaryenModuleRef, value BinaryenLiteral) BinaryenExpressionRef

[c:'BinaryenUnary']
pub fn unary(module_ BinaryenModuleRef, op BinaryenOp, value BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenBinary']
pub fn binary(module_ BinaryenModuleRef, op BinaryenOp, left BinaryenExpressionRef, right BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenSelect']
pub fn bselect(module_ BinaryenModuleRef, condition BinaryenExpressionRef, iftrue BinaryenExpressionRef, iffalse BinaryenExpressionRef, type_ BinaryenType) BinaryenExpressionRef

[c:'BinaryenDrop']
pub fn drop(module_ BinaryenModuleRef, value BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenReturn']
pub fn breturn(module_ BinaryenModuleRef, value BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenMemorySize']
pub fn memorysize(module_ BinaryenModuleRef, memoryname &i8, memoryis64 bool) BinaryenExpressionRef

[c:'BinaryenMemoryGrow']
pub fn memorygrow(module_ BinaryenModuleRef, delta BinaryenExpressionRef, memoryname &i8, memoryis64 bool) BinaryenExpressionRef

[c:'BinaryenNop']
pub fn nop(module_ BinaryenModuleRef) BinaryenExpressionRef

[c:'BinaryenUnreachable']
pub fn unreachable(module_ BinaryenModuleRef) BinaryenExpressionRef

[c:'BinaryenAtomicLoad']
pub fn atomicload(module_ BinaryenModuleRef, bytes u32, offset u32, type_ BinaryenType, ptr BinaryenExpressionRef, memoryname &i8) BinaryenExpressionRef

[c:'BinaryenAtomicStore']
pub fn atomicstore(module_ BinaryenModuleRef, bytes u32, offset u32, ptr BinaryenExpressionRef, value BinaryenExpressionRef, type_ BinaryenType, memoryname &i8) BinaryenExpressionRef

[c:'BinaryenAtomicRMW']
pub fn atomicrmw(module_ BinaryenModuleRef, op BinaryenOp, bytes BinaryenIndex, offset BinaryenIndex, ptr BinaryenExpressionRef, value BinaryenExpressionRef, type_ BinaryenType, memoryname &i8) BinaryenExpressionRef

[c:'BinaryenAtomicCmpxchg']
pub fn atomiccmpxchg(module_ BinaryenModuleRef, bytes BinaryenIndex, offset BinaryenIndex, ptr BinaryenExpressionRef, expected BinaryenExpressionRef, replacement BinaryenExpressionRef, type_ BinaryenType, memoryname &i8) BinaryenExpressionRef

[c:'BinaryenAtomicWait']
pub fn atomicwait(module_ BinaryenModuleRef, ptr BinaryenExpressionRef, expected BinaryenExpressionRef, timeout BinaryenExpressionRef, type_ BinaryenType, memoryname &i8) BinaryenExpressionRef

[c:'BinaryenAtomicNotify']
pub fn atomicnotify(module_ BinaryenModuleRef, ptr BinaryenExpressionRef, notifycount BinaryenExpressionRef, memoryname &i8) BinaryenExpressionRef

[c:'BinaryenAtomicFence']
pub fn atomicfence(module_ BinaryenModuleRef) BinaryenExpressionRef

[c:'BinaryenSIMDExtract']
pub fn simdextract(module_ BinaryenModuleRef, op BinaryenOp, vec BinaryenExpressionRef, index u8) BinaryenExpressionRef

[c:'BinaryenSIMDReplace']
pub fn simdreplace(module_ BinaryenModuleRef, op BinaryenOp, vec BinaryenExpressionRef, index u8, value BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenSIMDShuffle']
pub fn simdshuffle(module_ BinaryenModuleRef, left BinaryenExpressionRef, right BinaryenExpressionRef, mask &u8) BinaryenExpressionRef

[c:'BinaryenSIMDTernary']
pub fn simdternary(module_ BinaryenModuleRef, op BinaryenOp, a BinaryenExpressionRef, b BinaryenExpressionRef, c BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenSIMDShift']
pub fn simdshift(module_ BinaryenModuleRef, op BinaryenOp, vec BinaryenExpressionRef, shift BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenSIMDLoad']
pub fn simdload(module_ BinaryenModuleRef, op BinaryenOp, offset u32, align u32, ptr BinaryenExpressionRef, name &i8) BinaryenExpressionRef

[c:'BinaryenSIMDLoadStoreLane']
pub fn simdloadstorelane(module_ BinaryenModuleRef, op BinaryenOp, offset u32, align u32, index u8, ptr BinaryenExpressionRef, vec BinaryenExpressionRef, memoryname &i8) BinaryenExpressionRef

[c:'BinaryenMemoryInit']
pub fn memoryinit(module_ BinaryenModuleRef, segment u32, dest BinaryenExpressionRef, offset BinaryenExpressionRef, size BinaryenExpressionRef, memoryname &i8) BinaryenExpressionRef

[c:'BinaryenDataDrop']
pub fn datadrop(module_ BinaryenModuleRef, segment u32) BinaryenExpressionRef

[c:'BinaryenMemoryCopy']
pub fn memorycopy(module_ BinaryenModuleRef, dest BinaryenExpressionRef, source BinaryenExpressionRef, size BinaryenExpressionRef, destmemory &i8, sourcememory &i8) BinaryenExpressionRef

[c:'BinaryenMemoryFill']
pub fn memoryfill(module_ BinaryenModuleRef, dest BinaryenExpressionRef, value BinaryenExpressionRef, size BinaryenExpressionRef, memoryname &i8) BinaryenExpressionRef

[c:'BinaryenRefNull']
pub fn refnull(module_ BinaryenModuleRef, type_ BinaryenType) BinaryenExpressionRef

[c:'BinaryenRefIs']
pub fn refis(module_ BinaryenModuleRef, op BinaryenOp, value BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenRefAs']
pub fn refas(module_ BinaryenModuleRef, op BinaryenOp, value BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenRefFunc']
pub fn reffunc(module_ BinaryenModuleRef, func &i8, type_ BinaryenType) BinaryenExpressionRef

[c:'BinaryenRefEq']
pub fn refeq(module_ BinaryenModuleRef, left BinaryenExpressionRef, right BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenTableGet']
pub fn tableget(module_ BinaryenModuleRef, name &i8, index BinaryenExpressionRef, type_ BinaryenType) BinaryenExpressionRef

[c:'BinaryenTableSet']
pub fn tableset(module_ BinaryenModuleRef, name &i8, index BinaryenExpressionRef, value BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenTableSize']
pub fn tablesize(module_ BinaryenModuleRef, name &i8) BinaryenExpressionRef

[c:'BinaryenTableGrow']
pub fn tablegrow(module_ BinaryenModuleRef, name &i8, value BinaryenExpressionRef, delta BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenTry']
pub fn try(module_ BinaryenModuleRef, name &i8, body BinaryenExpressionRef, catchtags &&u8, numcatchtags BinaryenIndex, catchbodies &BinaryenExpressionRef, numcatchbodies BinaryenIndex, delegatetarget &i8) BinaryenExpressionRef

[c:'BinaryenThrow']
pub fn throw(module_ BinaryenModuleRef, tag &i8, operands &BinaryenExpressionRef, numoperands BinaryenIndex) BinaryenExpressionRef

[c:'BinaryenRethrow']
pub fn rethrow(module_ BinaryenModuleRef, target &i8) BinaryenExpressionRef

[c:'BinaryenTupleMake']
pub fn tuplemake(module_ BinaryenModuleRef, operands &BinaryenExpressionRef, numoperands BinaryenIndex) BinaryenExpressionRef

[c:'BinaryenTupleExtract']
pub fn tupleextract(module_ BinaryenModuleRef, tuple BinaryenExpressionRef, index BinaryenIndex) BinaryenExpressionRef

[c:'BinaryenPop']
pub fn pop(module_ BinaryenModuleRef, type_ BinaryenType) BinaryenExpressionRef

[c:'BinaryenI31New']
pub fn i31new(module_ BinaryenModuleRef, value BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenI31Get']
pub fn i31get(module_ BinaryenModuleRef, i31 BinaryenExpressionRef, signed_ bool) BinaryenExpressionRef

[c:'BinaryenCallRef']
pub fn callref(module_ BinaryenModuleRef, target BinaryenExpressionRef, operands &BinaryenExpressionRef, numoperands BinaryenIndex, type_ BinaryenType, isreturn bool) BinaryenExpressionRef

[c:'BinaryenRefTest']
pub fn reftest(module_ BinaryenModuleRef, ref BinaryenExpressionRef, intendedtype BinaryenHeapType) BinaryenExpressionRef

[c:'BinaryenRefCast']
pub fn refcast(module_ BinaryenModuleRef, ref BinaryenExpressionRef, intendedtype BinaryenHeapType) BinaryenExpressionRef

[c:'BinaryenBrOn']
pub fn bron(module_ BinaryenModuleRef, op BinaryenOp, name &i8, ref BinaryenExpressionRef, intendedtype BinaryenHeapType) BinaryenExpressionRef

[c:'BinaryenStructNew']
pub fn structnew(module_ BinaryenModuleRef, operands &BinaryenExpressionRef, numoperands BinaryenIndex, type_ BinaryenHeapType) BinaryenExpressionRef

[c:'BinaryenStructGet']
pub fn structget(module_ BinaryenModuleRef, index BinaryenIndex, ref BinaryenExpressionRef, type_ BinaryenType, signed_ bool) BinaryenExpressionRef

[c:'BinaryenStructSet']
pub fn structset(module_ BinaryenModuleRef, index BinaryenIndex, ref BinaryenExpressionRef, value BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenArrayNew']
pub fn arraynew(module_ BinaryenModuleRef, type_ BinaryenHeapType, size BinaryenExpressionRef, init BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenArrayInit']
pub fn arrayinit(module_ BinaryenModuleRef, type_ BinaryenHeapType, values &BinaryenExpressionRef, numvalues BinaryenIndex) BinaryenExpressionRef

[c:'BinaryenArrayGet']
pub fn arrayget(module_ BinaryenModuleRef, ref BinaryenExpressionRef, index BinaryenExpressionRef, type_ BinaryenType, signed_ bool) BinaryenExpressionRef

[c:'BinaryenArraySet']
pub fn arrayset(module_ BinaryenModuleRef, ref BinaryenExpressionRef, index BinaryenExpressionRef, value BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenArrayLen']
pub fn arraylen(module_ BinaryenModuleRef, ref BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenArrayCopy']
pub fn arraycopy(module_ BinaryenModuleRef, destref BinaryenExpressionRef, destindex BinaryenExpressionRef, srcref BinaryenExpressionRef, srcindex BinaryenExpressionRef, length BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringNew']
pub fn stringnew(module_ BinaryenModuleRef, op BinaryenOp, ptr BinaryenExpressionRef, length BinaryenExpressionRef, start BinaryenExpressionRef, end BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringConst']
pub fn stringconst(module_ BinaryenModuleRef, name &i8) BinaryenExpressionRef

[c:'BinaryenStringMeasure']
pub fn stringmeasure(module_ BinaryenModuleRef, op BinaryenOp, ref BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringEncode']
pub fn stringencode(module_ BinaryenModuleRef, op BinaryenOp, ref BinaryenExpressionRef, ptr BinaryenExpressionRef, start BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringConcat']
pub fn stringconcat(module_ BinaryenModuleRef, left BinaryenExpressionRef, right BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringEq']
pub fn stringeq(module_ BinaryenModuleRef, left BinaryenExpressionRef, right BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringAs']
pub fn stringas(module_ BinaryenModuleRef, op BinaryenOp, ref BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringWTF8Advance']
pub fn stringwtf8advance(module_ BinaryenModuleRef, ref BinaryenExpressionRef, pos BinaryenExpressionRef, bytes BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringWTF16Get']
pub fn stringwtf16get(module_ BinaryenModuleRef, ref BinaryenExpressionRef, pos BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringIterNext']
pub fn stringiternext(module_ BinaryenModuleRef, ref BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringIterMove']
pub fn stringitermove(module_ BinaryenModuleRef, op BinaryenOp, ref BinaryenExpressionRef, num BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringSliceWTF']
pub fn stringslicewtf(module_ BinaryenModuleRef, op BinaryenOp, ref BinaryenExpressionRef, start BinaryenExpressionRef, end BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringSliceIter']
pub fn stringsliceiter(module_ BinaryenModuleRef, ref BinaryenExpressionRef, num BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenExpressionGetId']
pub fn expressiongetid(expr BinaryenExpressionRef) BinaryenExpressionId

[c:'BinaryenExpressionGetType']
pub fn expressiongettype(expr BinaryenExpressionRef) BinaryenType

[c:'BinaryenExpressionSetType']
pub fn expressionsettype(expr BinaryenExpressionRef, type_ BinaryenType) 

[c:'BinaryenExpressionPrint']
pub fn expressionprint(expr BinaryenExpressionRef) 

[c:'BinaryenExpressionFinalize']
pub fn expressionfinalize(expr BinaryenExpressionRef) 

[c:'BinaryenExpressionCopy']
pub fn expressioncopy(expr BinaryenExpressionRef, module_ BinaryenModuleRef) BinaryenExpressionRef

[c:'BinaryenBlockGetName']
pub fn blockgetname(expr BinaryenExpressionRef) &i8

[c:'BinaryenBlockSetName']
pub fn blocksetname(expr BinaryenExpressionRef, name &i8) 

[c:'BinaryenBlockGetNumChildren']
pub fn blockgetnumchildren(expr BinaryenExpressionRef) BinaryenIndex

[c:'BinaryenBlockGetChildAt']
pub fn blockgetchildat(expr BinaryenExpressionRef, index BinaryenIndex) BinaryenExpressionRef

[c:'BinaryenBlockSetChildAt']
pub fn blocksetchildat(expr BinaryenExpressionRef, index BinaryenIndex, childexpr BinaryenExpressionRef) 

[c:'BinaryenBlockAppendChild']
pub fn blockappendchild(expr BinaryenExpressionRef, childexpr BinaryenExpressionRef) BinaryenIndex

[c:'BinaryenBlockInsertChildAt']
pub fn blockinsertchildat(expr BinaryenExpressionRef, index BinaryenIndex, childexpr BinaryenExpressionRef) 

[c:'BinaryenBlockRemoveChildAt']
pub fn blockremovechildat(expr BinaryenExpressionRef, index BinaryenIndex) BinaryenExpressionRef

[c:'BinaryenIfGetCondition']
pub fn ifgetcondition(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenIfSetCondition']
pub fn ifsetcondition(expr BinaryenExpressionRef, condexpr BinaryenExpressionRef) 

[c:'BinaryenIfGetIfTrue']
pub fn ifgetiftrue(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenIfSetIfTrue']
pub fn ifsetiftrue(expr BinaryenExpressionRef, iftrueexpr BinaryenExpressionRef) 

[c:'BinaryenIfGetIfFalse']
pub fn ifgetiffalse(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenIfSetIfFalse']
pub fn ifsetiffalse(expr BinaryenExpressionRef, iffalseexpr BinaryenExpressionRef) 

[c:'BinaryenLoopGetName']
pub fn loopgetname(expr BinaryenExpressionRef) &i8

[c:'BinaryenLoopSetName']
pub fn loopsetname(expr BinaryenExpressionRef, name &i8) 

[c:'BinaryenLoopGetBody']
pub fn loopgetbody(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenLoopSetBody']
pub fn loopsetbody(expr BinaryenExpressionRef, bodyexpr BinaryenExpressionRef) 

[c:'BinaryenBreakGetName']
pub fn breakgetname(expr BinaryenExpressionRef) &i8

[c:'BinaryenBreakSetName']
pub fn breaksetname(expr BinaryenExpressionRef, name &i8) 

[c:'BinaryenBreakGetCondition']
pub fn breakgetcondition(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenBreakSetCondition']
pub fn breaksetcondition(expr BinaryenExpressionRef, condexpr BinaryenExpressionRef) 

[c:'BinaryenBreakGetValue']
pub fn breakgetvalue(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenBreakSetValue']
pub fn breaksetvalue(expr BinaryenExpressionRef, valueexpr BinaryenExpressionRef) 

[c:'BinaryenSwitchGetNumNames']
pub fn switchgetnumnames(expr BinaryenExpressionRef) BinaryenIndex

[c:'BinaryenSwitchGetNameAt']
pub fn switchgetnameat(expr BinaryenExpressionRef, index BinaryenIndex) &i8

[c:'BinaryenSwitchSetNameAt']
pub fn switchsetnameat(expr BinaryenExpressionRef, index BinaryenIndex, name &i8) 

[c:'BinaryenSwitchAppendName']
pub fn switchappendname(expr BinaryenExpressionRef, name &i8) BinaryenIndex

[c:'BinaryenSwitchInsertNameAt']
pub fn switchinsertnameat(expr BinaryenExpressionRef, index BinaryenIndex, name &i8) 

[c:'BinaryenSwitchRemoveNameAt']
pub fn switchremovenameat(expr BinaryenExpressionRef, index BinaryenIndex) &i8

[c:'BinaryenSwitchGetDefaultName']
pub fn switchgetdefaultname(expr BinaryenExpressionRef) &i8

[c:'BinaryenSwitchSetDefaultName']
pub fn switchsetdefaultname(expr BinaryenExpressionRef, name &i8) 

[c:'BinaryenSwitchGetCondition']
pub fn switchgetcondition(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenSwitchSetCondition']
pub fn switchsetcondition(expr BinaryenExpressionRef, condexpr BinaryenExpressionRef) 

[c:'BinaryenSwitchGetValue']
pub fn switchgetvalue(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenSwitchSetValue']
pub fn switchsetvalue(expr BinaryenExpressionRef, valueexpr BinaryenExpressionRef) 

[c:'BinaryenCallGetTarget']
pub fn callgettarget(expr BinaryenExpressionRef) &i8

[c:'BinaryenCallSetTarget']
pub fn callsettarget(expr BinaryenExpressionRef, target &i8) 

[c:'BinaryenCallGetNumOperands']
pub fn callgetnumoperands(expr BinaryenExpressionRef) BinaryenIndex

[c:'BinaryenCallGetOperandAt']
pub fn callgetoperandat(expr BinaryenExpressionRef, index BinaryenIndex) BinaryenExpressionRef

[c:'BinaryenCallSetOperandAt']
pub fn callsetoperandat(expr BinaryenExpressionRef, index BinaryenIndex, operandexpr BinaryenExpressionRef) 

[c:'BinaryenCallAppendOperand']
pub fn callappendoperand(expr BinaryenExpressionRef, operandexpr BinaryenExpressionRef) BinaryenIndex

[c:'BinaryenCallInsertOperandAt']
pub fn callinsertoperandat(expr BinaryenExpressionRef, index BinaryenIndex, operandexpr BinaryenExpressionRef) 

[c:'BinaryenCallRemoveOperandAt']
pub fn callremoveoperandat(expr BinaryenExpressionRef, index BinaryenIndex) BinaryenExpressionRef

[c:'BinaryenCallIsReturn']
pub fn callisreturn(expr BinaryenExpressionRef) bool

[c:'BinaryenCallSetReturn']
pub fn callsetreturn(expr BinaryenExpressionRef, isreturn bool) 

[c:'BinaryenCallIndirectGetTarget']
pub fn callindirectgettarget(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenCallIndirectSetTarget']
pub fn callindirectsettarget(expr BinaryenExpressionRef, targetexpr BinaryenExpressionRef) 

[c:'BinaryenCallIndirectGetTable']
pub fn callindirectgettable(expr BinaryenExpressionRef) &i8

[c:'BinaryenCallIndirectSetTable']
pub fn callindirectsettable(expr BinaryenExpressionRef, table &i8) 

[c:'BinaryenCallIndirectGetNumOperands']
pub fn callindirectgetnumoperands(expr BinaryenExpressionRef) BinaryenIndex

[c:'BinaryenCallIndirectGetOperandAt']
pub fn callindirectgetoperandat(expr BinaryenExpressionRef, index BinaryenIndex) BinaryenExpressionRef

[c:'BinaryenCallIndirectSetOperandAt']
pub fn callindirectsetoperandat(expr BinaryenExpressionRef, index BinaryenIndex, operandexpr BinaryenExpressionRef) 

[c:'BinaryenCallIndirectAppendOperand']
pub fn callindirectappendoperand(expr BinaryenExpressionRef, operandexpr BinaryenExpressionRef) BinaryenIndex

[c:'BinaryenCallIndirectInsertOperandAt']
pub fn callindirectinsertoperandat(expr BinaryenExpressionRef, index BinaryenIndex, operandexpr BinaryenExpressionRef) 

[c:'BinaryenCallIndirectRemoveOperandAt']
pub fn callindirectremoveoperandat(expr BinaryenExpressionRef, index BinaryenIndex) BinaryenExpressionRef

[c:'BinaryenCallIndirectIsReturn']
pub fn callindirectisreturn(expr BinaryenExpressionRef) bool

[c:'BinaryenCallIndirectSetReturn']
pub fn callindirectsetreturn(expr BinaryenExpressionRef, isreturn bool) 

[c:'BinaryenCallIndirectGetParams']
pub fn callindirectgetparams(expr BinaryenExpressionRef) BinaryenType

[c:'BinaryenCallIndirectSetParams']
pub fn callindirectsetparams(expr BinaryenExpressionRef, params BinaryenType) 

[c:'BinaryenCallIndirectGetResults']
pub fn callindirectgetresults(expr BinaryenExpressionRef) BinaryenType

[c:'BinaryenCallIndirectSetResults']
pub fn callindirectsetresults(expr BinaryenExpressionRef, params BinaryenType) 

[c:'BinaryenLocalGetGetIndex']
pub fn localgetgetindex(expr BinaryenExpressionRef) BinaryenIndex

[c:'BinaryenLocalGetSetIndex']
pub fn localgetsetindex(expr BinaryenExpressionRef, index BinaryenIndex) 

[c:'BinaryenLocalSetIsTee']
pub fn localsetistee(expr BinaryenExpressionRef) bool

[c:'BinaryenLocalSetGetIndex']
pub fn localsetgetindex(expr BinaryenExpressionRef) BinaryenIndex

[c:'BinaryenLocalSetSetIndex']
pub fn localsetsetindex(expr BinaryenExpressionRef, index BinaryenIndex) 

[c:'BinaryenLocalSetGetValue']
pub fn localsetgetvalue(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenLocalSetSetValue']
pub fn localsetsetvalue(expr BinaryenExpressionRef, valueexpr BinaryenExpressionRef) 

[c:'BinaryenGlobalGetGetName']
pub fn globalgetgetname(expr BinaryenExpressionRef) &i8

[c:'BinaryenGlobalGetSetName']
pub fn globalgetsetname(expr BinaryenExpressionRef, name &i8) 

[c:'BinaryenGlobalSetGetName']
pub fn globalsetgetname(expr BinaryenExpressionRef) &i8

[c:'BinaryenGlobalSetSetName']
pub fn globalsetsetname(expr BinaryenExpressionRef, name &i8) 

[c:'BinaryenGlobalSetGetValue']
pub fn globalsetgetvalue(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenGlobalSetSetValue']
pub fn globalsetsetvalue(expr BinaryenExpressionRef, valueexpr BinaryenExpressionRef) 

[c:'BinaryenTableGetGetTable']
pub fn tablegetgettable(expr BinaryenExpressionRef) &i8

[c:'BinaryenTableGetSetTable']
pub fn tablegetsettable(expr BinaryenExpressionRef, table &i8) 

[c:'BinaryenTableGetGetIndex']
pub fn tablegetgetindex(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenTableGetSetIndex']
pub fn tablegetsetindex(expr BinaryenExpressionRef, indexexpr BinaryenExpressionRef) 

[c:'BinaryenTableSetGetTable']
pub fn tablesetgettable(expr BinaryenExpressionRef) &i8

[c:'BinaryenTableSetSetTable']
pub fn tablesetsettable(expr BinaryenExpressionRef, table &i8) 

[c:'BinaryenTableSetGetIndex']
pub fn tablesetgetindex(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenTableSetSetIndex']
pub fn tablesetsetindex(expr BinaryenExpressionRef, indexexpr BinaryenExpressionRef) 

[c:'BinaryenTableSetGetValue']
pub fn tablesetgetvalue(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenTableSetSetValue']
pub fn tablesetsetvalue(expr BinaryenExpressionRef, valueexpr BinaryenExpressionRef) 

[c:'BinaryenTableSizeGetTable']
pub fn tablesizegettable(expr BinaryenExpressionRef) &i8

[c:'BinaryenTableSizeSetTable']
pub fn tablesizesettable(expr BinaryenExpressionRef, table &i8) 

[c:'BinaryenTableGrowGetTable']
pub fn tablegrowgettable(expr BinaryenExpressionRef) &i8

[c:'BinaryenTableGrowSetTable']
pub fn tablegrowsettable(expr BinaryenExpressionRef, table &i8) 

[c:'BinaryenTableGrowGetValue']
pub fn tablegrowgetvalue(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenTableGrowSetValue']
pub fn tablegrowsetvalue(expr BinaryenExpressionRef, valueexpr BinaryenExpressionRef) 

[c:'BinaryenTableGrowGetDelta']
pub fn tablegrowgetdelta(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenTableGrowSetDelta']
pub fn tablegrowsetdelta(expr BinaryenExpressionRef, deltaexpr BinaryenExpressionRef) 

[c:'BinaryenMemoryGrowGetDelta']
pub fn memorygrowgetdelta(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenMemoryGrowSetDelta']
pub fn memorygrowsetdelta(expr BinaryenExpressionRef, deltaexpr BinaryenExpressionRef) 

[c:'BinaryenLoadIsAtomic']
pub fn loadisatomic(expr BinaryenExpressionRef) bool

[c:'BinaryenLoadSetAtomic']
pub fn loadsetatomic(expr BinaryenExpressionRef, isatomic bool) 

[c:'BinaryenLoadIsSigned']
pub fn loadissigned(expr BinaryenExpressionRef) bool

[c:'BinaryenLoadSetSigned']
pub fn loadsetsigned(expr BinaryenExpressionRef, issigned bool) 

[c:'BinaryenLoadGetOffset']
pub fn loadgetoffset(expr BinaryenExpressionRef) u32

[c:'BinaryenLoadSetOffset']
pub fn loadsetoffset(expr BinaryenExpressionRef, offset u32) 

[c:'BinaryenLoadGetBytes']
pub fn loadgetbytes(expr BinaryenExpressionRef) u32

[c:'BinaryenLoadSetBytes']
pub fn loadsetbytes(expr BinaryenExpressionRef, bytes u32) 

[c:'BinaryenLoadGetAlign']
pub fn loadgetalign(expr BinaryenExpressionRef) u32

[c:'BinaryenLoadSetAlign']
pub fn loadsetalign(expr BinaryenExpressionRef, align u32) 

[c:'BinaryenLoadGetPtr']
pub fn loadgetptr(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenLoadSetPtr']
pub fn loadsetptr(expr BinaryenExpressionRef, ptrexpr BinaryenExpressionRef) 

[c:'BinaryenStoreIsAtomic']
pub fn storeisatomic(expr BinaryenExpressionRef) bool

[c:'BinaryenStoreSetAtomic']
pub fn storesetatomic(expr BinaryenExpressionRef, isatomic bool) 

[c:'BinaryenStoreGetBytes']
pub fn storegetbytes(expr BinaryenExpressionRef) u32

[c:'BinaryenStoreSetBytes']
pub fn storesetbytes(expr BinaryenExpressionRef, bytes u32) 

[c:'BinaryenStoreGetOffset']
pub fn storegetoffset(expr BinaryenExpressionRef) u32

[c:'BinaryenStoreSetOffset']
pub fn storesetoffset(expr BinaryenExpressionRef, offset u32) 

[c:'BinaryenStoreGetAlign']
pub fn storegetalign(expr BinaryenExpressionRef) u32

[c:'BinaryenStoreSetAlign']
pub fn storesetalign(expr BinaryenExpressionRef, align u32) 

[c:'BinaryenStoreGetPtr']
pub fn storegetptr(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStoreSetPtr']
pub fn storesetptr(expr BinaryenExpressionRef, ptrexpr BinaryenExpressionRef) 

[c:'BinaryenStoreGetValue']
pub fn storegetvalue(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStoreSetValue']
pub fn storesetvalue(expr BinaryenExpressionRef, valueexpr BinaryenExpressionRef) 

[c:'BinaryenStoreGetValueType']
pub fn storegetvaluetype(expr BinaryenExpressionRef) BinaryenType

[c:'BinaryenStoreSetValueType']
pub fn storesetvaluetype(expr BinaryenExpressionRef, valuetype BinaryenType) 

[c:'BinaryenConstGetValueI32']
pub fn constgetvaluei32(expr BinaryenExpressionRef) int

[c:'BinaryenConstSetValueI32']
pub fn constsetvaluei32(expr BinaryenExpressionRef, value int) 

[c:'BinaryenConstGetValueI64']
pub fn constgetvaluei64(expr BinaryenExpressionRef) i64

[c:'BinaryenConstSetValueI64']
pub fn constsetvaluei64(expr BinaryenExpressionRef, value i64) 

[c:'BinaryenConstGetValueI64Low']
pub fn constgetvaluei64low(expr BinaryenExpressionRef) int

[c:'BinaryenConstSetValueI64Low']
pub fn constsetvaluei64low(expr BinaryenExpressionRef, valuelow int) 

[c:'BinaryenConstGetValueI64High']
pub fn constgetvaluei64high(expr BinaryenExpressionRef) int

[c:'BinaryenConstSetValueI64High']
pub fn constsetvaluei64high(expr BinaryenExpressionRef, valuehigh int) 

[c:'BinaryenConstGetValueF32']
pub fn constgetvaluef32(expr BinaryenExpressionRef) f32

[c:'BinaryenConstSetValueF32']
pub fn constsetvaluef32(expr BinaryenExpressionRef, value f32) 

[c:'BinaryenConstGetValueF64']
pub fn constgetvaluef64(expr BinaryenExpressionRef) f64

[c:'BinaryenConstSetValueF64']
pub fn constsetvaluef64(expr BinaryenExpressionRef, value f64) 

[c:'BinaryenConstGetValueV128']
pub fn constgetvaluev128(expr BinaryenExpressionRef, out &u8) 

[c:'BinaryenConstSetValueV128']
pub fn constsetvaluev128(expr BinaryenExpressionRef, value &u8) 

[c:'BinaryenUnaryGetOp']
pub fn unarygetop(expr BinaryenExpressionRef) BinaryenOp

[c:'BinaryenUnarySetOp']
pub fn unarysetop(expr BinaryenExpressionRef, op BinaryenOp) 

[c:'BinaryenUnaryGetValue']
pub fn unarygetvalue(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenUnarySetValue']
pub fn unarysetvalue(expr BinaryenExpressionRef, valueexpr BinaryenExpressionRef) 

[c:'BinaryenBinaryGetOp']
pub fn binarygetop(expr BinaryenExpressionRef) BinaryenOp

[c:'BinaryenBinarySetOp']
pub fn binarysetop(expr BinaryenExpressionRef, op BinaryenOp) 

[c:'BinaryenBinaryGetLeft']
pub fn binarygetleft(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenBinarySetLeft']
pub fn binarysetleft(expr BinaryenExpressionRef, leftexpr BinaryenExpressionRef) 

[c:'BinaryenBinaryGetRight']
pub fn binarygetright(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenBinarySetRight']
pub fn binarysetright(expr BinaryenExpressionRef, rightexpr BinaryenExpressionRef) 

[c:'BinaryenSelectGetIfTrue']
pub fn selectgetiftrue(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenSelectSetIfTrue']
pub fn selectsetiftrue(expr BinaryenExpressionRef, iftrueexpr BinaryenExpressionRef) 

[c:'BinaryenSelectGetIfFalse']
pub fn selectgetiffalse(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenSelectSetIfFalse']
pub fn selectsetiffalse(expr BinaryenExpressionRef, iffalseexpr BinaryenExpressionRef) 

[c:'BinaryenSelectGetCondition']
pub fn selectgetcondition(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenSelectSetCondition']
pub fn selectsetcondition(expr BinaryenExpressionRef, condexpr BinaryenExpressionRef) 

[c:'BinaryenDropGetValue']
pub fn dropgetvalue(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenDropSetValue']
pub fn dropsetvalue(expr BinaryenExpressionRef, valueexpr BinaryenExpressionRef) 

[c:'BinaryenReturnGetValue']
pub fn returngetvalue(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenReturnSetValue']
pub fn returnsetvalue(expr BinaryenExpressionRef, valueexpr BinaryenExpressionRef) 

[c:'BinaryenAtomicRMWGetOp']
pub fn atomicrmwgetop(expr BinaryenExpressionRef) BinaryenOp

[c:'BinaryenAtomicRMWSetOp']
pub fn atomicrmwsetop(expr BinaryenExpressionRef, op BinaryenOp) 

[c:'BinaryenAtomicRMWGetBytes']
pub fn atomicrmwgetbytes(expr BinaryenExpressionRef) u32

[c:'BinaryenAtomicRMWSetBytes']
pub fn atomicrmwsetbytes(expr BinaryenExpressionRef, bytes u32) 

[c:'BinaryenAtomicRMWGetOffset']
pub fn atomicrmwgetoffset(expr BinaryenExpressionRef) u32

[c:'BinaryenAtomicRMWSetOffset']
pub fn atomicrmwsetoffset(expr BinaryenExpressionRef, offset u32) 

[c:'BinaryenAtomicRMWGetPtr']
pub fn atomicrmwgetptr(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenAtomicRMWSetPtr']
pub fn atomicrmwsetptr(expr BinaryenExpressionRef, ptrexpr BinaryenExpressionRef) 

[c:'BinaryenAtomicRMWGetValue']
pub fn atomicrmwgetvalue(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenAtomicRMWSetValue']
pub fn atomicrmwsetvalue(expr BinaryenExpressionRef, valueexpr BinaryenExpressionRef) 

[c:'BinaryenAtomicCmpxchgGetBytes']
pub fn atomiccmpxchggetbytes(expr BinaryenExpressionRef) u32

[c:'BinaryenAtomicCmpxchgSetBytes']
pub fn atomiccmpxchgsetbytes(expr BinaryenExpressionRef, bytes u32) 

[c:'BinaryenAtomicCmpxchgGetOffset']
pub fn atomiccmpxchggetoffset(expr BinaryenExpressionRef) u32

[c:'BinaryenAtomicCmpxchgSetOffset']
pub fn atomiccmpxchgsetoffset(expr BinaryenExpressionRef, offset u32) 

[c:'BinaryenAtomicCmpxchgGetPtr']
pub fn atomiccmpxchggetptr(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenAtomicCmpxchgSetPtr']
pub fn atomiccmpxchgsetptr(expr BinaryenExpressionRef, ptrexpr BinaryenExpressionRef) 

[c:'BinaryenAtomicCmpxchgGetExpected']
pub fn atomiccmpxchggetexpected(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenAtomicCmpxchgSetExpected']
pub fn atomiccmpxchgsetexpected(expr BinaryenExpressionRef, expectedexpr BinaryenExpressionRef) 

[c:'BinaryenAtomicCmpxchgGetReplacement']
pub fn atomiccmpxchggetreplacement(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenAtomicCmpxchgSetReplacement']
pub fn atomiccmpxchgsetreplacement(expr BinaryenExpressionRef, replacementexpr BinaryenExpressionRef) 

[c:'BinaryenAtomicWaitGetPtr']
pub fn atomicwaitgetptr(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenAtomicWaitSetPtr']
pub fn atomicwaitsetptr(expr BinaryenExpressionRef, ptrexpr BinaryenExpressionRef) 

[c:'BinaryenAtomicWaitGetExpected']
pub fn atomicwaitgetexpected(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenAtomicWaitSetExpected']
pub fn atomicwaitsetexpected(expr BinaryenExpressionRef, expectedexpr BinaryenExpressionRef) 

[c:'BinaryenAtomicWaitGetTimeout']
pub fn atomicwaitgettimeout(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenAtomicWaitSetTimeout']
pub fn atomicwaitsettimeout(expr BinaryenExpressionRef, timeoutexpr BinaryenExpressionRef) 

[c:'BinaryenAtomicWaitGetExpectedType']
pub fn atomicwaitgetexpectedtype(expr BinaryenExpressionRef) BinaryenType

[c:'BinaryenAtomicWaitSetExpectedType']
pub fn atomicwaitsetexpectedtype(expr BinaryenExpressionRef, expectedtype BinaryenType) 

[c:'BinaryenAtomicNotifyGetPtr']
pub fn atomicnotifygetptr(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenAtomicNotifySetPtr']
pub fn atomicnotifysetptr(expr BinaryenExpressionRef, ptrexpr BinaryenExpressionRef) 

[c:'BinaryenAtomicNotifyGetNotifyCount']
pub fn atomicnotifygetnotifycount(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenAtomicNotifySetNotifyCount']
pub fn atomicnotifysetnotifycount(expr BinaryenExpressionRef, notifycountexpr BinaryenExpressionRef) 

[c:'BinaryenAtomicFenceGetOrder']
pub fn atomicfencegetorder(expr BinaryenExpressionRef) u8

[c:'BinaryenAtomicFenceSetOrder']
pub fn atomicfencesetorder(expr BinaryenExpressionRef, order u8) 

[c:'BinaryenSIMDExtractGetOp']
pub fn simdextractgetop(expr BinaryenExpressionRef) BinaryenOp

[c:'BinaryenSIMDExtractSetOp']
pub fn simdextractsetop(expr BinaryenExpressionRef, op BinaryenOp) 

[c:'BinaryenSIMDExtractGetVec']
pub fn simdextractgetvec(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenSIMDExtractSetVec']
pub fn simdextractsetvec(expr BinaryenExpressionRef, vecexpr BinaryenExpressionRef) 

[c:'BinaryenSIMDExtractGetIndex']
pub fn simdextractgetindex(expr BinaryenExpressionRef) u8

[c:'BinaryenSIMDExtractSetIndex']
pub fn simdextractsetindex(expr BinaryenExpressionRef, index u8) 

[c:'BinaryenSIMDReplaceGetOp']
pub fn simdreplacegetop(expr BinaryenExpressionRef) BinaryenOp

[c:'BinaryenSIMDReplaceSetOp']
pub fn simdreplacesetop(expr BinaryenExpressionRef, op BinaryenOp) 

[c:'BinaryenSIMDReplaceGetVec']
pub fn simdreplacegetvec(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenSIMDReplaceSetVec']
pub fn simdreplacesetvec(expr BinaryenExpressionRef, vecexpr BinaryenExpressionRef) 

[c:'BinaryenSIMDReplaceGetIndex']
pub fn simdreplacegetindex(expr BinaryenExpressionRef) u8

[c:'BinaryenSIMDReplaceSetIndex']
pub fn simdreplacesetindex(expr BinaryenExpressionRef, index u8) 

[c:'BinaryenSIMDReplaceGetValue']
pub fn simdreplacegetvalue(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenSIMDReplaceSetValue']
pub fn simdreplacesetvalue(expr BinaryenExpressionRef, valueexpr BinaryenExpressionRef) 

[c:'BinaryenSIMDShuffleGetLeft']
pub fn simdshufflegetleft(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenSIMDShuffleSetLeft']
pub fn simdshufflesetleft(expr BinaryenExpressionRef, leftexpr BinaryenExpressionRef) 

[c:'BinaryenSIMDShuffleGetRight']
pub fn simdshufflegetright(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenSIMDShuffleSetRight']
pub fn simdshufflesetright(expr BinaryenExpressionRef, rightexpr BinaryenExpressionRef) 

[c:'BinaryenSIMDShuffleGetMask']
pub fn simdshufflegetmask(expr BinaryenExpressionRef, mask &u8) 

[c:'BinaryenSIMDShuffleSetMask']
pub fn simdshufflesetmask(expr BinaryenExpressionRef, mask &u8) 

[c:'BinaryenSIMDTernaryGetOp']
pub fn simdternarygetop(expr BinaryenExpressionRef) BinaryenOp

[c:'BinaryenSIMDTernarySetOp']
pub fn simdternarysetop(expr BinaryenExpressionRef, op BinaryenOp) 

[c:'BinaryenSIMDTernaryGetA']
pub fn simdternarygeta(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenSIMDTernarySetA']
pub fn simdternaryseta(expr BinaryenExpressionRef, aexpr BinaryenExpressionRef) 

[c:'BinaryenSIMDTernaryGetB']
pub fn simdternarygetb(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenSIMDTernarySetB']
pub fn simdternarysetb(expr BinaryenExpressionRef, bexpr BinaryenExpressionRef) 

[c:'BinaryenSIMDTernaryGetC']
pub fn simdternarygetc(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenSIMDTernarySetC']
pub fn simdternarysetc(expr BinaryenExpressionRef, cexpr BinaryenExpressionRef) 

[c:'BinaryenSIMDShiftGetOp']
pub fn simdshiftgetop(expr BinaryenExpressionRef) BinaryenOp

[c:'BinaryenSIMDShiftSetOp']
pub fn simdshiftsetop(expr BinaryenExpressionRef, op BinaryenOp) 

[c:'BinaryenSIMDShiftGetVec']
pub fn simdshiftgetvec(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenSIMDShiftSetVec']
pub fn simdshiftsetvec(expr BinaryenExpressionRef, vecexpr BinaryenExpressionRef) 

[c:'BinaryenSIMDShiftGetShift']
pub fn simdshiftgetshift(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenSIMDShiftSetShift']
pub fn simdshiftsetshift(expr BinaryenExpressionRef, shiftexpr BinaryenExpressionRef) 

[c:'BinaryenSIMDLoadGetOp']
pub fn simdloadgetop(expr BinaryenExpressionRef) BinaryenOp

[c:'BinaryenSIMDLoadSetOp']
pub fn simdloadsetop(expr BinaryenExpressionRef, op BinaryenOp) 

[c:'BinaryenSIMDLoadGetOffset']
pub fn simdloadgetoffset(expr BinaryenExpressionRef) u32

[c:'BinaryenSIMDLoadSetOffset']
pub fn simdloadsetoffset(expr BinaryenExpressionRef, offset u32) 

[c:'BinaryenSIMDLoadGetAlign']
pub fn simdloadgetalign(expr BinaryenExpressionRef) u32

[c:'BinaryenSIMDLoadSetAlign']
pub fn simdloadsetalign(expr BinaryenExpressionRef, align u32) 

[c:'BinaryenSIMDLoadGetPtr']
pub fn simdloadgetptr(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenSIMDLoadSetPtr']
pub fn simdloadsetptr(expr BinaryenExpressionRef, ptrexpr BinaryenExpressionRef) 

[c:'BinaryenSIMDLoadStoreLaneGetOp']
pub fn simdloadstorelanegetop(expr BinaryenExpressionRef) BinaryenOp

[c:'BinaryenSIMDLoadStoreLaneSetOp']
pub fn simdloadstorelanesetop(expr BinaryenExpressionRef, op BinaryenOp) 

[c:'BinaryenSIMDLoadStoreLaneGetOffset']
pub fn simdloadstorelanegetoffset(expr BinaryenExpressionRef) u32

[c:'BinaryenSIMDLoadStoreLaneSetOffset']
pub fn simdloadstorelanesetoffset(expr BinaryenExpressionRef, offset u32) 

[c:'BinaryenSIMDLoadStoreLaneGetAlign']
pub fn simdloadstorelanegetalign(expr BinaryenExpressionRef) u32

[c:'BinaryenSIMDLoadStoreLaneSetAlign']
pub fn simdloadstorelanesetalign(expr BinaryenExpressionRef, align u32) 

[c:'BinaryenSIMDLoadStoreLaneGetIndex']
pub fn simdloadstorelanegetindex(expr BinaryenExpressionRef) u8

[c:'BinaryenSIMDLoadStoreLaneSetIndex']
pub fn simdloadstorelanesetindex(expr BinaryenExpressionRef, index u8) 

[c:'BinaryenSIMDLoadStoreLaneGetPtr']
pub fn simdloadstorelanegetptr(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenSIMDLoadStoreLaneSetPtr']
pub fn simdloadstorelanesetptr(expr BinaryenExpressionRef, ptrexpr BinaryenExpressionRef) 

[c:'BinaryenSIMDLoadStoreLaneGetVec']
pub fn simdloadstorelanegetvec(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenSIMDLoadStoreLaneSetVec']
pub fn simdloadstorelanesetvec(expr BinaryenExpressionRef, vecexpr BinaryenExpressionRef) 

[c:'BinaryenSIMDLoadStoreLaneIsStore']
pub fn simdloadstorelaneisstore(expr BinaryenExpressionRef) bool

[c:'BinaryenMemoryInitGetSegment']
pub fn memoryinitgetsegment(expr BinaryenExpressionRef) u32

[c:'BinaryenMemoryInitSetSegment']
pub fn memoryinitsetsegment(expr BinaryenExpressionRef, segmentindex u32) 

[c:'BinaryenMemoryInitGetDest']
pub fn memoryinitgetdest(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenMemoryInitSetDest']
pub fn memoryinitsetdest(expr BinaryenExpressionRef, destexpr BinaryenExpressionRef) 

[c:'BinaryenMemoryInitGetOffset']
pub fn memoryinitgetoffset(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenMemoryInitSetOffset']
pub fn memoryinitsetoffset(expr BinaryenExpressionRef, offsetexpr BinaryenExpressionRef) 

[c:'BinaryenMemoryInitGetSize']
pub fn memoryinitgetsize(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenMemoryInitSetSize']
pub fn memoryinitsetsize(expr BinaryenExpressionRef, sizeexpr BinaryenExpressionRef) 

[c:'BinaryenDataDropGetSegment']
pub fn datadropgetsegment(expr BinaryenExpressionRef) u32

[c:'BinaryenDataDropSetSegment']
pub fn datadropsetsegment(expr BinaryenExpressionRef, segmentindex u32) 

[c:'BinaryenMemoryCopyGetDest']
pub fn memorycopygetdest(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenMemoryCopySetDest']
pub fn memorycopysetdest(expr BinaryenExpressionRef, destexpr BinaryenExpressionRef) 

[c:'BinaryenMemoryCopyGetSource']
pub fn memorycopygetsource(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenMemoryCopySetSource']
pub fn memorycopysetsource(expr BinaryenExpressionRef, sourceexpr BinaryenExpressionRef) 

[c:'BinaryenMemoryCopyGetSize']
pub fn memorycopygetsize(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenMemoryCopySetSize']
pub fn memorycopysetsize(expr BinaryenExpressionRef, sizeexpr BinaryenExpressionRef) 

[c:'BinaryenMemoryFillGetDest']
pub fn memoryfillgetdest(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenMemoryFillSetDest']
pub fn memoryfillsetdest(expr BinaryenExpressionRef, destexpr BinaryenExpressionRef) 

[c:'BinaryenMemoryFillGetValue']
pub fn memoryfillgetvalue(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenMemoryFillSetValue']
pub fn memoryfillsetvalue(expr BinaryenExpressionRef, valueexpr BinaryenExpressionRef) 

[c:'BinaryenMemoryFillGetSize']
pub fn memoryfillgetsize(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenMemoryFillSetSize']
pub fn memoryfillsetsize(expr BinaryenExpressionRef, sizeexpr BinaryenExpressionRef) 

[c:'BinaryenRefIsGetOp']
pub fn refisgetop(expr BinaryenExpressionRef) BinaryenOp

[c:'BinaryenRefIsSetOp']
pub fn refissetop(expr BinaryenExpressionRef, op BinaryenOp) 

[c:'BinaryenRefIsGetValue']
pub fn refisgetvalue(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenRefIsSetValue']
pub fn refissetvalue(expr BinaryenExpressionRef, valueexpr BinaryenExpressionRef) 

[c:'BinaryenRefAsGetOp']
pub fn refasgetop(expr BinaryenExpressionRef) BinaryenOp

[c:'BinaryenRefAsSetOp']
pub fn refassetop(expr BinaryenExpressionRef, op BinaryenOp) 

[c:'BinaryenRefAsGetValue']
pub fn refasgetvalue(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenRefAsSetValue']
pub fn refassetvalue(expr BinaryenExpressionRef, valueexpr BinaryenExpressionRef) 

[c:'BinaryenRefFuncGetFunc']
pub fn reffuncgetfunc(expr BinaryenExpressionRef) &i8

[c:'BinaryenRefFuncSetFunc']
pub fn reffuncsetfunc(expr BinaryenExpressionRef, funcname &i8) 

[c:'BinaryenRefEqGetLeft']
pub fn refeqgetleft(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenRefEqSetLeft']
pub fn refeqsetleft(expr BinaryenExpressionRef, left BinaryenExpressionRef) 

[c:'BinaryenRefEqGetRight']
pub fn refeqgetright(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenRefEqSetRight']
pub fn refeqsetright(expr BinaryenExpressionRef, right BinaryenExpressionRef) 

[c:'BinaryenTryGetName']
pub fn trygetname(expr BinaryenExpressionRef) &i8

[c:'BinaryenTrySetName']
pub fn trysetname(expr BinaryenExpressionRef, name &i8) 

[c:'BinaryenTryGetBody']
pub fn trygetbody(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenTrySetBody']
pub fn trysetbody(expr BinaryenExpressionRef, bodyexpr BinaryenExpressionRef) 

[c:'BinaryenTryGetNumCatchTags']
pub fn trygetnumcatchtags(expr BinaryenExpressionRef) BinaryenIndex

[c:'BinaryenTryGetNumCatchBodies']
pub fn trygetnumcatchbodies(expr BinaryenExpressionRef) BinaryenIndex

[c:'BinaryenTryGetCatchTagAt']
pub fn trygetcatchtagat(expr BinaryenExpressionRef, index BinaryenIndex) &i8

[c:'BinaryenTrySetCatchTagAt']
pub fn trysetcatchtagat(expr BinaryenExpressionRef, index BinaryenIndex, catchtag &i8) 

[c:'BinaryenTryAppendCatchTag']
pub fn tryappendcatchtag(expr BinaryenExpressionRef, catchtag &i8) BinaryenIndex

[c:'BinaryenTryInsertCatchTagAt']
pub fn tryinsertcatchtagat(expr BinaryenExpressionRef, index BinaryenIndex, catchtag &i8) 

[c:'BinaryenTryRemoveCatchTagAt']
pub fn tryremovecatchtagat(expr BinaryenExpressionRef, index BinaryenIndex) &i8

[c:'BinaryenTryGetCatchBodyAt']
pub fn trygetcatchbodyat(expr BinaryenExpressionRef, index BinaryenIndex) BinaryenExpressionRef

[c:'BinaryenTrySetCatchBodyAt']
pub fn trysetcatchbodyat(expr BinaryenExpressionRef, index BinaryenIndex, catchexpr BinaryenExpressionRef) 

[c:'BinaryenTryAppendCatchBody']
pub fn tryappendcatchbody(expr BinaryenExpressionRef, catchexpr BinaryenExpressionRef) BinaryenIndex

[c:'BinaryenTryInsertCatchBodyAt']
pub fn tryinsertcatchbodyat(expr BinaryenExpressionRef, index BinaryenIndex, catchexpr BinaryenExpressionRef) 

[c:'BinaryenTryRemoveCatchBodyAt']
pub fn tryremovecatchbodyat(expr BinaryenExpressionRef, index BinaryenIndex) BinaryenExpressionRef

[c:'BinaryenTryHasCatchAll']
pub fn tryhascatchall(expr BinaryenExpressionRef) bool

[c:'BinaryenTryGetDelegateTarget']
pub fn trygetdelegatetarget(expr BinaryenExpressionRef) &i8

[c:'BinaryenTrySetDelegateTarget']
pub fn trysetdelegatetarget(expr BinaryenExpressionRef, delegatetarget &i8) 

[c:'BinaryenTryIsDelegate']
pub fn tryisdelegate(expr BinaryenExpressionRef) bool

[c:'BinaryenThrowGetTag']
pub fn throwgettag(expr BinaryenExpressionRef) &i8

[c:'BinaryenThrowSetTag']
pub fn throwsettag(expr BinaryenExpressionRef, tagname &i8) 

[c:'BinaryenThrowGetNumOperands']
pub fn throwgetnumoperands(expr BinaryenExpressionRef) BinaryenIndex

[c:'BinaryenThrowGetOperandAt']
pub fn throwgetoperandat(expr BinaryenExpressionRef, index BinaryenIndex) BinaryenExpressionRef

[c:'BinaryenThrowSetOperandAt']
pub fn throwsetoperandat(expr BinaryenExpressionRef, index BinaryenIndex, operandexpr BinaryenExpressionRef) 

[c:'BinaryenThrowAppendOperand']
pub fn throwappendoperand(expr BinaryenExpressionRef, operandexpr BinaryenExpressionRef) BinaryenIndex

[c:'BinaryenThrowInsertOperandAt']
pub fn throwinsertoperandat(expr BinaryenExpressionRef, index BinaryenIndex, operandexpr BinaryenExpressionRef) 

[c:'BinaryenThrowRemoveOperandAt']
pub fn throwremoveoperandat(expr BinaryenExpressionRef, index BinaryenIndex) BinaryenExpressionRef

[c:'BinaryenRethrowGetTarget']
pub fn rethrowgettarget(expr BinaryenExpressionRef) &i8

[c:'BinaryenRethrowSetTarget']
pub fn rethrowsettarget(expr BinaryenExpressionRef, target &i8) 

[c:'BinaryenTupleMakeGetNumOperands']
pub fn tuplemakegetnumoperands(expr BinaryenExpressionRef) BinaryenIndex

[c:'BinaryenTupleMakeGetOperandAt']
pub fn tuplemakegetoperandat(expr BinaryenExpressionRef, index BinaryenIndex) BinaryenExpressionRef

[c:'BinaryenTupleMakeSetOperandAt']
pub fn tuplemakesetoperandat(expr BinaryenExpressionRef, index BinaryenIndex, operandexpr BinaryenExpressionRef) 

[c:'BinaryenTupleMakeAppendOperand']
pub fn tuplemakeappendoperand(expr BinaryenExpressionRef, operandexpr BinaryenExpressionRef) BinaryenIndex

[c:'BinaryenTupleMakeInsertOperandAt']
pub fn tuplemakeinsertoperandat(expr BinaryenExpressionRef, index BinaryenIndex, operandexpr BinaryenExpressionRef) 

[c:'BinaryenTupleMakeRemoveOperandAt']
pub fn tuplemakeremoveoperandat(expr BinaryenExpressionRef, index BinaryenIndex) BinaryenExpressionRef

[c:'BinaryenTupleExtractGetTuple']
pub fn tupleextractgettuple(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenTupleExtractSetTuple']
pub fn tupleextractsettuple(expr BinaryenExpressionRef, tupleexpr BinaryenExpressionRef) 

[c:'BinaryenTupleExtractGetIndex']
pub fn tupleextractgetindex(expr BinaryenExpressionRef) BinaryenIndex

[c:'BinaryenTupleExtractSetIndex']
pub fn tupleextractsetindex(expr BinaryenExpressionRef, index BinaryenIndex) 

[c:'BinaryenI31NewGetValue']
pub fn i31newgetvalue(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenI31NewSetValue']
pub fn i31newsetvalue(expr BinaryenExpressionRef, valueexpr BinaryenExpressionRef) 

[c:'BinaryenI31GetGetI31']
pub fn i31getgeti31(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenI31GetSetI31']
pub fn i31getseti31(expr BinaryenExpressionRef, i31expr BinaryenExpressionRef) 

[c:'BinaryenI31GetIsSigned']
pub fn i31getissigned(expr BinaryenExpressionRef) bool

[c:'BinaryenI31GetSetSigned']
pub fn i31getsetsigned(expr BinaryenExpressionRef, signed_ bool) 

[c:'BinaryenCallRefGetNumOperands']
pub fn callrefgetnumoperands(expr BinaryenExpressionRef) BinaryenIndex

[c:'BinaryenCallRefGetOperandAt']
pub fn callrefgetoperandat(expr BinaryenExpressionRef, index BinaryenIndex) BinaryenExpressionRef

[c:'BinaryenCallRefSetOperandAt']
pub fn callrefsetoperandat(expr BinaryenExpressionRef, index BinaryenIndex, operandexpr BinaryenExpressionRef) 

[c:'BinaryenCallRefAppendOperand']
pub fn callrefappendoperand(expr BinaryenExpressionRef, operandexpr BinaryenExpressionRef) BinaryenIndex

[c:'BinaryenCallRefInsertOperandAt']
pub fn callrefinsertoperandat(expr BinaryenExpressionRef, index BinaryenIndex, operandexpr BinaryenExpressionRef) 

[c:'BinaryenCallRefRemoveOperandAt']
pub fn callrefremoveoperandat(expr BinaryenExpressionRef, index BinaryenIndex) BinaryenExpressionRef

[c:'BinaryenCallRefGetTarget']
pub fn callrefgettarget(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenCallRefSetTarget']
pub fn callrefsettarget(expr BinaryenExpressionRef, targetexpr BinaryenExpressionRef) 

[c:'BinaryenCallRefIsReturn']
pub fn callrefisreturn(expr BinaryenExpressionRef) bool

[c:'BinaryenCallRefSetReturn']
pub fn callrefsetreturn(expr BinaryenExpressionRef, isreturn bool) 

[c:'BinaryenRefTestGetRef']
pub fn reftestgetref(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenRefTestSetRef']
pub fn reftestsetref(expr BinaryenExpressionRef, refexpr BinaryenExpressionRef) 

[c:'BinaryenRefTestGetIntendedType']
pub fn reftestgetintendedtype(expr BinaryenExpressionRef) BinaryenHeapType

[c:'BinaryenRefTestSetIntendedType']
pub fn reftestsetintendedtype(expr BinaryenExpressionRef, intendedtype BinaryenHeapType) 

[c:'BinaryenRefCastGetRef']
pub fn refcastgetref(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenRefCastSetRef']
pub fn refcastsetref(expr BinaryenExpressionRef, refexpr BinaryenExpressionRef) 

[c:'BinaryenRefCastGetIntendedType']
pub fn refcastgetintendedtype(expr BinaryenExpressionRef) BinaryenHeapType

[c:'BinaryenRefCastSetIntendedType']
pub fn refcastsetintendedtype(expr BinaryenExpressionRef, intendedtype BinaryenHeapType) 

[c:'BinaryenBrOnGetOp']
pub fn brongetop(expr BinaryenExpressionRef) BinaryenOp

[c:'BinaryenBrOnSetOp']
pub fn bronsetop(expr BinaryenExpressionRef, op BinaryenOp) 

[c:'BinaryenBrOnGetName']
pub fn brongetname(expr BinaryenExpressionRef) &i8

[c:'BinaryenBrOnSetName']
pub fn bronsetname(expr BinaryenExpressionRef, namestr &i8) 

[c:'BinaryenBrOnGetRef']
pub fn brongetref(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenBrOnSetRef']
pub fn bronsetref(expr BinaryenExpressionRef, refexpr BinaryenExpressionRef) 

[c:'BinaryenBrOnGetIntendedType']
pub fn brongetintendedtype(expr BinaryenExpressionRef) BinaryenHeapType

[c:'BinaryenBrOnSetIntendedType']
pub fn bronsetintendedtype(expr BinaryenExpressionRef, intendedtype BinaryenHeapType) 

[c:'BinaryenStructNewGetNumOperands']
pub fn structnewgetnumoperands(expr BinaryenExpressionRef) BinaryenIndex

[c:'BinaryenStructNewGetOperandAt']
pub fn structnewgetoperandat(expr BinaryenExpressionRef, index BinaryenIndex) BinaryenExpressionRef

[c:'BinaryenStructNewSetOperandAt']
pub fn structnewsetoperandat(expr BinaryenExpressionRef, index BinaryenIndex, operandexpr BinaryenExpressionRef) 

[c:'BinaryenStructNewAppendOperand']
pub fn structnewappendoperand(expr BinaryenExpressionRef, operandexpr BinaryenExpressionRef) BinaryenIndex

[c:'BinaryenStructNewInsertOperandAt']
pub fn structnewinsertoperandat(expr BinaryenExpressionRef, index BinaryenIndex, operandexpr BinaryenExpressionRef) 

[c:'BinaryenStructNewRemoveOperandAt']
pub fn structnewremoveoperandat(expr BinaryenExpressionRef, index BinaryenIndex) BinaryenExpressionRef

[c:'BinaryenStructGetGetIndex']
pub fn structgetgetindex(expr BinaryenExpressionRef) BinaryenIndex

[c:'BinaryenStructGetSetIndex']
pub fn structgetsetindex(expr BinaryenExpressionRef, index BinaryenIndex) 

[c:'BinaryenStructGetGetRef']
pub fn structgetgetref(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStructGetSetRef']
pub fn structgetsetref(expr BinaryenExpressionRef, refexpr BinaryenExpressionRef) 

[c:'BinaryenStructGetIsSigned']
pub fn structgetissigned(expr BinaryenExpressionRef) bool

[c:'BinaryenStructGetSetSigned']
pub fn structgetsetsigned(expr BinaryenExpressionRef, signed_ bool) 

[c:'BinaryenStructSetGetIndex']
pub fn structsetgetindex(expr BinaryenExpressionRef) BinaryenIndex

[c:'BinaryenStructSetSetIndex']
pub fn structsetsetindex(expr BinaryenExpressionRef, index BinaryenIndex) 

[c:'BinaryenStructSetGetRef']
pub fn structsetgetref(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStructSetSetRef']
pub fn structsetsetref(expr BinaryenExpressionRef, refexpr BinaryenExpressionRef) 

[c:'BinaryenStructSetGetValue']
pub fn structsetgetvalue(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStructSetSetValue']
pub fn structsetsetvalue(expr BinaryenExpressionRef, valueexpr BinaryenExpressionRef) 

[c:'BinaryenArrayNewGetInit']
pub fn arraynewgetinit(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenArrayNewSetInit']
pub fn arraynewsetinit(expr BinaryenExpressionRef, initexpr BinaryenExpressionRef) 

[c:'BinaryenArrayNewGetSize']
pub fn arraynewgetsize(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenArrayNewSetSize']
pub fn arraynewsetsize(expr BinaryenExpressionRef, sizeexpr BinaryenExpressionRef) 

[c:'BinaryenArrayInitGetNumValues']
pub fn arrayinitgetnumvalues(expr BinaryenExpressionRef) BinaryenIndex

[c:'BinaryenArrayInitGetValueAt']
pub fn arrayinitgetvalueat(expr BinaryenExpressionRef, index BinaryenIndex) BinaryenExpressionRef

[c:'BinaryenArrayInitSetValueAt']
pub fn arrayinitsetvalueat(expr BinaryenExpressionRef, index BinaryenIndex, valueexpr BinaryenExpressionRef) 

[c:'BinaryenArrayInitAppendValue']
pub fn arrayinitappendvalue(expr BinaryenExpressionRef, valueexpr BinaryenExpressionRef) BinaryenIndex

[c:'BinaryenArrayInitInsertValueAt']
pub fn arrayinitinsertvalueat(expr BinaryenExpressionRef, index BinaryenIndex, valueexpr BinaryenExpressionRef) 

[c:'BinaryenArrayInitRemoveValueAt']
pub fn arrayinitremovevalueat(expr BinaryenExpressionRef, index BinaryenIndex) BinaryenExpressionRef

[c:'BinaryenArrayGetGetRef']
pub fn arraygetgetref(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenArrayGetSetRef']
pub fn arraygetsetref(expr BinaryenExpressionRef, refexpr BinaryenExpressionRef) 

[c:'BinaryenArrayGetGetIndex']
pub fn arraygetgetindex(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenArrayGetSetIndex']
pub fn arraygetsetindex(expr BinaryenExpressionRef, indexexpr BinaryenExpressionRef) 

[c:'BinaryenArrayGetIsSigned']
pub fn arraygetissigned(expr BinaryenExpressionRef) bool

[c:'BinaryenArrayGetSetSigned']
pub fn arraygetsetsigned(expr BinaryenExpressionRef, signed_ bool) 

[c:'BinaryenArraySetGetRef']
pub fn arraysetgetref(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenArraySetSetRef']
pub fn arraysetsetref(expr BinaryenExpressionRef, refexpr BinaryenExpressionRef) 

[c:'BinaryenArraySetGetIndex']
pub fn arraysetgetindex(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenArraySetSetIndex']
pub fn arraysetsetindex(expr BinaryenExpressionRef, indexexpr BinaryenExpressionRef) 

[c:'BinaryenArraySetGetValue']
pub fn arraysetgetvalue(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenArraySetSetValue']
pub fn arraysetsetvalue(expr BinaryenExpressionRef, valueexpr BinaryenExpressionRef) 

[c:'BinaryenArrayLenGetRef']
pub fn arraylengetref(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenArrayLenSetRef']
pub fn arraylensetref(expr BinaryenExpressionRef, refexpr BinaryenExpressionRef) 

[c:'BinaryenArrayCopyGetDestRef']
pub fn arraycopygetdestref(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenArrayCopySetDestRef']
pub fn arraycopysetdestref(expr BinaryenExpressionRef, destrefexpr BinaryenExpressionRef) 

[c:'BinaryenArrayCopyGetDestIndex']
pub fn arraycopygetdestindex(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenArrayCopySetDestIndex']
pub fn arraycopysetdestindex(expr BinaryenExpressionRef, destindexexpr BinaryenExpressionRef) 

[c:'BinaryenArrayCopyGetSrcRef']
pub fn arraycopygetsrcref(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenArrayCopySetSrcRef']
pub fn arraycopysetsrcref(expr BinaryenExpressionRef, srcrefexpr BinaryenExpressionRef) 

[c:'BinaryenArrayCopyGetSrcIndex']
pub fn arraycopygetsrcindex(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenArrayCopySetSrcIndex']
pub fn arraycopysetsrcindex(expr BinaryenExpressionRef, srcindexexpr BinaryenExpressionRef) 

[c:'BinaryenArrayCopyGetLength']
pub fn arraycopygetlength(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenArrayCopySetLength']
pub fn arraycopysetlength(expr BinaryenExpressionRef, lengthexpr BinaryenExpressionRef) 

[c:'BinaryenStringNewGetOp']
pub fn stringnewgetop(expr BinaryenExpressionRef) BinaryenOp

[c:'BinaryenStringNewSetOp']
pub fn stringnewsetop(expr BinaryenExpressionRef, op BinaryenOp) 

[c:'BinaryenStringNewGetPtr']
pub fn stringnewgetptr(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringNewSetPtr']
pub fn stringnewsetptr(expr BinaryenExpressionRef, ptrexpr BinaryenExpressionRef) 

[c:'BinaryenStringNewGetLength']
pub fn stringnewgetlength(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringNewSetLength']
pub fn stringnewsetlength(expr BinaryenExpressionRef, lengthexpr BinaryenExpressionRef) 

[c:'BinaryenStringNewGetStart']
pub fn stringnewgetstart(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringNewSetStart']
pub fn stringnewsetstart(expr BinaryenExpressionRef, startexpr BinaryenExpressionRef) 

[c:'BinaryenStringNewGetEnd']
pub fn stringnewgetend(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringNewSetEnd']
pub fn stringnewsetend(expr BinaryenExpressionRef, endexpr BinaryenExpressionRef) 

[c:'BinaryenStringConstGetString']
pub fn stringconstgetstring(expr BinaryenExpressionRef) &i8

[c:'BinaryenStringConstSetString']
pub fn stringconstsetstring(expr BinaryenExpressionRef, stringstr &i8) 

[c:'BinaryenStringMeasureGetOp']
pub fn stringmeasuregetop(expr BinaryenExpressionRef) BinaryenOp

[c:'BinaryenStringMeasureSetOp']
pub fn stringmeasuresetop(expr BinaryenExpressionRef, op BinaryenOp) 

[c:'BinaryenStringMeasureGetRef']
pub fn stringmeasuregetref(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringMeasureSetRef']
pub fn stringmeasuresetref(expr BinaryenExpressionRef, refexpr BinaryenExpressionRef) 

[c:'BinaryenStringEncodeGetOp']
pub fn stringencodegetop(expr BinaryenExpressionRef) BinaryenOp

[c:'BinaryenStringEncodeSetOp']
pub fn stringencodesetop(expr BinaryenExpressionRef, op BinaryenOp) 

[c:'BinaryenStringEncodeGetRef']
pub fn stringencodegetref(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringEncodeSetRef']
pub fn stringencodesetref(expr BinaryenExpressionRef, refexpr BinaryenExpressionRef) 

[c:'BinaryenStringEncodeGetPtr']
pub fn stringencodegetptr(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringEncodeSetPtr']
pub fn stringencodesetptr(expr BinaryenExpressionRef, ptrexpr BinaryenExpressionRef) 

[c:'BinaryenStringEncodeGetStart']
pub fn stringencodegetstart(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringEncodeSetStart']
pub fn stringencodesetstart(expr BinaryenExpressionRef, startexpr BinaryenExpressionRef) 

[c:'BinaryenStringConcatGetLeft']
pub fn stringconcatgetleft(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringConcatSetLeft']
pub fn stringconcatsetleft(expr BinaryenExpressionRef, leftexpr BinaryenExpressionRef) 

[c:'BinaryenStringConcatGetRight']
pub fn stringconcatgetright(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringConcatSetRight']
pub fn stringconcatsetright(expr BinaryenExpressionRef, rightexpr BinaryenExpressionRef) 

[c:'BinaryenStringEqGetLeft']
pub fn stringeqgetleft(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringEqSetLeft']
pub fn stringeqsetleft(expr BinaryenExpressionRef, leftexpr BinaryenExpressionRef) 

[c:'BinaryenStringEqGetRight']
pub fn stringeqgetright(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringEqSetRight']
pub fn stringeqsetright(expr BinaryenExpressionRef, rightexpr BinaryenExpressionRef) 

[c:'BinaryenStringAsGetOp']
pub fn stringasgetop(expr BinaryenExpressionRef) BinaryenOp

[c:'BinaryenStringAsSetOp']
pub fn stringassetop(expr BinaryenExpressionRef, op BinaryenOp) 

[c:'BinaryenStringAsGetRef']
pub fn stringasgetref(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringAsSetRef']
pub fn stringassetref(expr BinaryenExpressionRef, refexpr BinaryenExpressionRef) 

[c:'BinaryenStringWTF8AdvanceGetRef']
pub fn stringwtf8advancegetref(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringWTF8AdvanceSetRef']
pub fn stringwtf8advancesetref(expr BinaryenExpressionRef, refexpr BinaryenExpressionRef) 

[c:'BinaryenStringWTF8AdvanceGetPos']
pub fn stringwtf8advancegetpos(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringWTF8AdvanceSetPos']
pub fn stringwtf8advancesetpos(expr BinaryenExpressionRef, posexpr BinaryenExpressionRef) 

[c:'BinaryenStringWTF8AdvanceGetBytes']
pub fn stringwtf8advancegetbytes(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringWTF8AdvanceSetBytes']
pub fn stringwtf8advancesetbytes(expr BinaryenExpressionRef, bytesexpr BinaryenExpressionRef) 

[c:'BinaryenStringWTF16GetGetRef']
pub fn stringwtf16getgetref(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringWTF16GetSetRef']
pub fn stringwtf16getsetref(expr BinaryenExpressionRef, refexpr BinaryenExpressionRef) 

[c:'BinaryenStringWTF16GetGetPos']
pub fn stringwtf16getgetpos(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringWTF16GetSetPos']
pub fn stringwtf16getsetpos(expr BinaryenExpressionRef, posexpr BinaryenExpressionRef) 

[c:'BinaryenStringIterNextGetRef']
pub fn stringiternextgetref(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringIterNextSetRef']
pub fn stringiternextsetref(expr BinaryenExpressionRef, refexpr BinaryenExpressionRef) 

[c:'BinaryenStringIterMoveGetOp']
pub fn stringitermovegetop(expr BinaryenExpressionRef) BinaryenOp

[c:'BinaryenStringIterMoveSetOp']
pub fn stringitermovesetop(expr BinaryenExpressionRef, op BinaryenOp) 

[c:'BinaryenStringIterMoveGetRef']
pub fn stringitermovegetref(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringIterMoveSetRef']
pub fn stringitermovesetref(expr BinaryenExpressionRef, refexpr BinaryenExpressionRef) 

[c:'BinaryenStringIterMoveGetNum']
pub fn stringitermovegetnum(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringIterMoveSetNum']
pub fn stringitermovesetnum(expr BinaryenExpressionRef, numexpr BinaryenExpressionRef) 

[c:'BinaryenStringSliceWTFGetOp']
pub fn stringslicewtfgetop(expr BinaryenExpressionRef) BinaryenOp

[c:'BinaryenStringSliceWTFSetOp']
pub fn stringslicewtfsetop(expr BinaryenExpressionRef, op BinaryenOp) 

[c:'BinaryenStringSliceWTFGetRef']
pub fn stringslicewtfgetref(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringSliceWTFSetRef']
pub fn stringslicewtfsetref(expr BinaryenExpressionRef, refexpr BinaryenExpressionRef) 

[c:'BinaryenStringSliceWTFGetStart']
pub fn stringslicewtfgetstart(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringSliceWTFSetStart']
pub fn stringslicewtfsetstart(expr BinaryenExpressionRef, startexpr BinaryenExpressionRef) 

[c:'BinaryenStringSliceWTFGetEnd']
pub fn stringslicewtfgetend(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringSliceWTFSetEnd']
pub fn stringslicewtfsetend(expr BinaryenExpressionRef, endexpr BinaryenExpressionRef) 

[c:'BinaryenStringSliceIterGetRef']
pub fn stringsliceitergetref(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringSliceIterSetRef']
pub fn stringsliceitersetref(expr BinaryenExpressionRef, refexpr BinaryenExpressionRef) 

[c:'BinaryenStringSliceIterGetNum']
pub fn stringsliceitergetnum(expr BinaryenExpressionRef) BinaryenExpressionRef

[c:'BinaryenStringSliceIterSetNum']
pub fn stringsliceitersetnum(expr BinaryenExpressionRef, numexpr BinaryenExpressionRef) 

type BinaryenFunctionRef = voidptr
[c:'BinaryenAddFunction']
pub fn addfunction(module_ BinaryenModuleRef, name &i8, params BinaryenType, results BinaryenType, vartypes &BinaryenType, numvartypes BinaryenIndex, body BinaryenExpressionRef) BinaryenFunctionRef

[c:'BinaryenGetFunction']
pub fn getfunction(module_ BinaryenModuleRef, name &i8) BinaryenFunctionRef

[c:'BinaryenRemoveFunction']
pub fn removefunction(module_ BinaryenModuleRef, name &i8) 

[c:'BinaryenGetNumFunctions']
pub fn getnumfunctions(module_ BinaryenModuleRef) BinaryenIndex

[c:'BinaryenGetFunctionByIndex']
pub fn getfunctionbyindex(module_ BinaryenModuleRef, index BinaryenIndex) BinaryenFunctionRef

[c:'BinaryenAddFunctionImport']
pub fn addfunctionimport(module_ BinaryenModuleRef, internalname &i8, externalmodulename &i8, externalbasename &i8, params BinaryenType, results BinaryenType) 

[c:'BinaryenAddTableImport']
pub fn addtableimport(module_ BinaryenModuleRef, internalname &i8, externalmodulename &i8, externalbasename &i8) 

[c:'BinaryenAddMemoryImport']
pub fn addmemoryimport(module_ BinaryenModuleRef, internalname &i8, externalmodulename &i8, externalbasename &i8, shared_ u8) 

[c:'BinaryenAddGlobalImport']
pub fn addglobalimport(module_ BinaryenModuleRef, internalname &i8, externalmodulename &i8, externalbasename &i8, globaltype BinaryenType, mutable_ bool) 

[c:'BinaryenAddTagImport']
pub fn addtagimport(module_ BinaryenModuleRef, internalname &i8, externalmodulename &i8, externalbasename &i8, params BinaryenType, results BinaryenType) 

type BinaryenMemoryRef = voidptr
type BinaryenExportRef = voidptr
[c:'BinaryenAddExport']
pub fn addexport(module_ BinaryenModuleRef, internalname &i8, externalname &i8) BinaryenExportRef

[c:'BinaryenAddFunctionExport']
pub fn addfunctionexport(module_ BinaryenModuleRef, internalname &i8, externalname &i8) BinaryenExportRef

[c:'BinaryenAddTableExport']
pub fn addtableexport(module_ BinaryenModuleRef, internalname &i8, externalname &i8) BinaryenExportRef

[c:'BinaryenAddMemoryExport']
pub fn addmemoryexport(module_ BinaryenModuleRef, internalname &i8, externalname &i8) BinaryenExportRef

[c:'BinaryenAddGlobalExport']
pub fn addglobalexport(module_ BinaryenModuleRef, internalname &i8, externalname &i8) BinaryenExportRef

[c:'BinaryenAddTagExport']
pub fn addtagexport(module_ BinaryenModuleRef, internalname &i8, externalname &i8) BinaryenExportRef

[c:'BinaryenGetExport']
pub fn getexport(module_ BinaryenModuleRef, externalname &i8) BinaryenExportRef

[c:'BinaryenRemoveExport']
pub fn removeexport(module_ BinaryenModuleRef, externalname &i8) 

[c:'BinaryenGetNumExports']
pub fn getnumexports(module_ BinaryenModuleRef) BinaryenIndex

[c:'BinaryenGetExportByIndex']
pub fn getexportbyindex(module_ BinaryenModuleRef, index BinaryenIndex) BinaryenExportRef

type BinaryenGlobalRef = voidptr
[c:'BinaryenAddGlobal']
pub fn addglobal(module_ BinaryenModuleRef, name &i8, type_ BinaryenType, mutable_ bool, init BinaryenExpressionRef) BinaryenGlobalRef

[c:'BinaryenGetGlobal']
pub fn getglobal(module_ BinaryenModuleRef, name &i8) BinaryenGlobalRef

[c:'BinaryenRemoveGlobal']
pub fn removeglobal(module_ BinaryenModuleRef, name &i8) 

[c:'BinaryenGetNumGlobals']
pub fn getnumglobals(module_ BinaryenModuleRef) BinaryenIndex

[c:'BinaryenGetGlobalByIndex']
pub fn getglobalbyindex(module_ BinaryenModuleRef, index BinaryenIndex) BinaryenGlobalRef

type BinaryenTagRef = voidptr
[c:'BinaryenAddTag']
pub fn addtag(module_ BinaryenModuleRef, name &i8, params BinaryenType, results BinaryenType) BinaryenTagRef

[c:'BinaryenGetTag']
pub fn gettag(module_ BinaryenModuleRef, name &i8) BinaryenTagRef

[c:'BinaryenRemoveTag']
pub fn removetag(module_ BinaryenModuleRef, name &i8) 

type BinaryenTableRef = voidptr
[c:'BinaryenAddTable']
pub fn addtable(module_ BinaryenModuleRef, table &i8, initial BinaryenIndex, maximum BinaryenIndex, tabletype BinaryenType) BinaryenTableRef

[c:'BinaryenRemoveTable']
pub fn removetable(module_ BinaryenModuleRef, table &i8) 

[c:'BinaryenGetNumTables']
pub fn getnumtables(module_ BinaryenModuleRef) BinaryenIndex

[c:'BinaryenGetTable']
pub fn gettable(module_ BinaryenModuleRef, name &i8) BinaryenTableRef

[c:'BinaryenGetTableByIndex']
pub fn gettablebyindex(module_ BinaryenModuleRef, index BinaryenIndex) BinaryenTableRef

type BinaryenElementSegmentRef = voidptr
[c:'BinaryenAddActiveElementSegment']
pub fn addactiveelementsegment(module_ BinaryenModuleRef, table &i8, name &i8, funcnames &&u8, numfuncnames BinaryenIndex, offset BinaryenExpressionRef) BinaryenElementSegmentRef

[c:'BinaryenAddPassiveElementSegment']
pub fn addpassiveelementsegment(module_ BinaryenModuleRef, name &i8, funcnames &&u8, numfuncnames BinaryenIndex) BinaryenElementSegmentRef

[c:'BinaryenRemoveElementSegment']
pub fn removeelementsegment(module_ BinaryenModuleRef, name &i8) 

[c:'BinaryenGetNumElementSegments']
pub fn getnumelementsegments(module_ BinaryenModuleRef) BinaryenIndex

[c:'BinaryenGetElementSegment']
pub fn getelementsegment(module_ BinaryenModuleRef, name &i8) BinaryenElementSegmentRef

[c:'BinaryenGetElementSegmentByIndex']
pub fn getelementsegmentbyindex(module_ BinaryenModuleRef, index BinaryenIndex) BinaryenElementSegmentRef

[c:'BinaryenSetMemory']
pub fn setmemory(module_ BinaryenModuleRef, initial BinaryenIndex, maximum BinaryenIndex, exportname &i8, segments &&u8, segmentpassive &bool, segmentoffsets &BinaryenExpressionRef, segmentsizes &BinaryenIndex, numsegments BinaryenIndex, shared_ bool, memory64 bool, name &i8) 

[c:'BinaryenHasMemory']
pub fn hasmemory(module_ BinaryenModuleRef) bool

[c:'BinaryenMemoryGetInitial']
pub fn memorygetinitial(module_ BinaryenModuleRef, name &i8) BinaryenIndex

[c:'BinaryenMemoryHasMax']
pub fn memoryhasmax(module_ BinaryenModuleRef, name &i8) bool

[c:'BinaryenMemoryGetMax']
pub fn memorygetmax(module_ BinaryenModuleRef, name &i8) BinaryenIndex

[c:'BinaryenMemoryImportGetModule']
pub fn memoryimportgetmodule(module_ BinaryenModuleRef, name &i8) &i8

[c:'BinaryenMemoryImportGetBase']
pub fn memoryimportgetbase(module_ BinaryenModuleRef, name &i8) &i8

[c:'BinaryenMemoryIsshared_']
pub fn memoryisshared_(module_ BinaryenModuleRef, name &i8) bool

[c:'BinaryenMemoryIs64']
pub fn memoryis64(module_ BinaryenModuleRef, name &i8) bool

[c:'BinaryenGetNumMemorySegments']
pub fn getnummemorysegments(module_ BinaryenModuleRef) u32

[c:'BinaryenGetMemorySegmentByteOffset']
pub fn getmemorysegmentbyteoffset(module_ BinaryenModuleRef, id BinaryenIndex) u32

[c:'BinaryenGetMemorySegmentByteLength']
pub fn getmemorysegmentbytelength(module_ BinaryenModuleRef, id BinaryenIndex) usize

[c:'BinaryenGetMemorySegmentPassive']
pub fn getmemorysegmentpassive(module_ BinaryenModuleRef, id BinaryenIndex) bool

[c:'BinaryenCopyMemorySegmentData']
pub fn copymemorysegmentdata(module_ BinaryenModuleRef, id BinaryenIndex, buffer &i8) 

[c:'BinaryenSetStart']
pub fn setstart(module_ BinaryenModuleRef, start BinaryenFunctionRef) 

[c:'BinaryenModuleGetFeatures']
pub fn modulegetfeatures(module_ BinaryenModuleRef) BinaryenFeatures

[c:'BinaryenModuleSetFeatures']
pub fn modulesetfeatures(module_ BinaryenModuleRef, features BinaryenFeatures) 

[c:'BinaryenModuleParse']
pub fn moduleparse(text &i8) BinaryenModuleRef

[c:'BinaryenModulePrint']
pub fn moduleprint(module_ BinaryenModuleRef) 

[c:'BinaryenModulePrintStackIR']
pub fn moduleprintstackir(module_ BinaryenModuleRef, optimize bool) 

[c:'BinaryenModulePrintAsmjs']
pub fn moduleprintasmjs(module_ BinaryenModuleRef) 

[c:'BinaryenModuleValidate']
pub fn modulevalidate(module_ BinaryenModuleRef) bool

[c:'BinaryenModuleOptimize']
pub fn moduleoptimize(module_ BinaryenModuleRef) 

[c:'BinaryenModuleUpdateMaps']
pub fn moduleupdatemaps(module_ BinaryenModuleRef) 

[c:'BinaryenGetOptimizeLevel']
pub fn getoptimizelevel() int

[c:'BinaryenSetOptimizeLevel']
pub fn setoptimizelevel(level int) 

[c:'BinaryenGetShrinkLevel']
pub fn getshrinklevel() int

[c:'BinaryenSetShrinkLevel']
pub fn setshrinklevel(level int) 

[c:'BinaryenGetDebugInfo']
pub fn getdebuginfo() bool

[c:'BinaryenSetDebugInfo']
pub fn setdebuginfo(on bool) 

[c:'BinaryenGetLowMemoryUnused']
pub fn getlowmemoryunused() bool

[c:'BinaryenSetLowMemoryUnused']
pub fn setlowmemoryunused(on bool) 

[c:'BinaryenGetZeroFilledMemory']
pub fn getzerofilledmemory() bool

[c:'BinaryenSetZeroFilledMemory']
pub fn setzerofilledmemory(on bool) 

[c:'BinaryenGetFastMath']
pub fn getfastmath() bool

[c:'BinaryenSetFastMath']
pub fn setfastmath(value bool) 

[c:'BinaryenGetPassArgument']
pub fn getpassargument(name &i8) &i8

[c:'BinaryenSetPassArgument']
pub fn setpassargument(name &i8, value &i8) 

[c:'BinaryenClearPassArguments']
pub fn clearpassarguments() 

[c:'BinaryenGetAlwaysInlineMaxSize']
pub fn getalwaysinlinemaxsize() BinaryenIndex

[c:'BinaryenSetAlwaysInlineMaxSize']
pub fn setalwaysinlinemaxsize(size BinaryenIndex) 

[c:'BinaryenGetFlexibleInlineMaxSize']
pub fn getflexibleinlinemaxsize() BinaryenIndex

[c:'BinaryenSetFlexibleInlineMaxSize']
pub fn setflexibleinlinemaxsize(size BinaryenIndex) 

[c:'BinaryenGetOneCallerInlineMaxSize']
pub fn getonecallerinlinemaxsize() BinaryenIndex

[c:'BinaryenSetOneCallerInlineMaxSize']
pub fn setonecallerinlinemaxsize(size BinaryenIndex) 

[c:'BinaryenGetAllowInliningFunctionsWithLoops']
pub fn getallowinliningfunctionswithloops() bool

[c:'BinaryenSetAllowInliningFunctionsWithLoops']
pub fn setallowinliningfunctionswithloops(enabled bool) 

[c:'BinaryenModuleRunPasses']
pub fn modulerunpasses(module_ BinaryenModuleRef, passes &&u8, numpasses BinaryenIndex) 

[c:'BinaryenModuleAutoDrop']
pub fn moduleautodrop(module_ BinaryenModuleRef) 

[c:'BinaryenModuleWrite']
pub fn modulewrite(module_ BinaryenModuleRef, output &i8, outputsize usize) usize

[c:'BinaryenModuleWriteText']
pub fn modulewritetext(module_ BinaryenModuleRef, output &i8, outputsize usize) usize

[c:'BinaryenModuleWriteStackIR']
pub fn modulewritestackir(module_ BinaryenModuleRef, output &i8, outputsize usize, optimize bool) usize

struct BinaryenBufferSizes { 
	outputBytes usize
	sourceMapBytes usize
}
[c:'BinaryenModuleWriteWithSourceMap']
pub fn modulewritewithsourcemap(module_ BinaryenModuleRef, url &i8, output &i8, outputsize usize, sourcemap &i8, sourcemapsize usize) BinaryenBufferSizes

struct BinaryenModuleAllocateAndWriteResult { 
	binary voidptr
	binaryBytes usize
	sourceMap &i8
}
[c:'BinaryenModuleAllocateAndWrite']
pub fn moduleallocateandwrite(module_ BinaryenModuleRef, sourcemapurl &i8) BinaryenModuleAllocateAndWriteResult

[c:'BinaryenModuleAllocateAndWriteText']
pub fn moduleallocateandwritetext(module_ BinaryenModuleRef) &i8

[c:'BinaryenModuleAllocateAndWriteStackIR']
pub fn moduleallocateandwritestackir(module_ BinaryenModuleRef, optimize bool) &i8

[c:'BinaryenModuleRead']
pub fn moduleread(input &i8, inputsize usize) BinaryenModuleRef

[c:'BinaryenModuleInterpret']
pub fn moduleinterpret(module_ BinaryenModuleRef) 

[c:'BinaryenModuleAddDebugInfoFileName']
pub fn moduleadddebuginfofilename(module_ BinaryenModuleRef, filename &i8) BinaryenIndex

[c:'BinaryenModuleGetDebugInfoFileName']
pub fn modulegetdebuginfofilename(module_ BinaryenModuleRef, index BinaryenIndex) &i8

[c:'BinaryenFunctionGetName']
pub fn functiongetname(func BinaryenFunctionRef) &i8

[c:'BinaryenFunctionGetParams']
pub fn functiongetparams(func BinaryenFunctionRef) BinaryenType

[c:'BinaryenFunctionGetResults']
pub fn functiongetresults(func BinaryenFunctionRef) BinaryenType

[c:'BinaryenFunctionGetNumVars']
pub fn functiongetnumvars(func BinaryenFunctionRef) BinaryenIndex

[c:'BinaryenFunctionGetVar']
pub fn functiongetvar(func BinaryenFunctionRef, index BinaryenIndex) BinaryenType

[c:'BinaryenFunctionGetNumLocals']
pub fn functiongetnumlocals(func BinaryenFunctionRef) BinaryenIndex

[c:'BinaryenFunctionHasLocalName']
pub fn functionhaslocalname(func BinaryenFunctionRef, index BinaryenIndex) bool

[c:'BinaryenFunctionGetLocalName']
pub fn functiongetlocalname(func BinaryenFunctionRef, index BinaryenIndex) &i8

[c:'BinaryenFunctionSetLocalName']
pub fn functionsetlocalname(func BinaryenFunctionRef, index BinaryenIndex, name &i8) 

[c:'BinaryenFunctionGetBody']
pub fn functiongetbody(func BinaryenFunctionRef) BinaryenExpressionRef

[c:'BinaryenFunctionSetBody']
pub fn functionsetbody(func BinaryenFunctionRef, body BinaryenExpressionRef) 

[c:'BinaryenFunctionOptimize']
pub fn functionoptimize(func BinaryenFunctionRef, module_ BinaryenModuleRef) 

[c:'BinaryenFunctionRunPasses']
pub fn functionrunpasses(func BinaryenFunctionRef, module_ BinaryenModuleRef, passes &&u8, numpasses BinaryenIndex) 

[c:'BinaryenFunctionSetDebugLocation']
pub fn functionsetdebuglocation(func BinaryenFunctionRef, expr BinaryenExpressionRef, fileindex BinaryenIndex, linenumber BinaryenIndex, columnnumber BinaryenIndex) 

[c:'BinaryenTableGetName']
pub fn tablegetname(table BinaryenTableRef) &i8

[c:'BinaryenTableSetName']
pub fn tablesetname(table BinaryenTableRef, name &i8) 

[c:'BinaryenTableGetInitial']
pub fn tablegetinitial(table BinaryenTableRef) BinaryenIndex

[c:'BinaryenTableSetInitial']
pub fn tablesetinitial(table BinaryenTableRef, initial BinaryenIndex) 

[c:'BinaryenTableHasMax']
pub fn tablehasmax(table BinaryenTableRef) bool

[c:'BinaryenTableGetMax']
pub fn tablegetmax(table BinaryenTableRef) BinaryenIndex

[c:'BinaryenTableSetMax']
pub fn tablesetmax(table BinaryenTableRef, max BinaryenIndex) 

[c:'BinaryenElementSegmentGetName']
pub fn elementsegmentgetname(elem BinaryenElementSegmentRef) &i8

[c:'BinaryenElementSegmentSetName']
pub fn elementsegmentsetname(elem BinaryenElementSegmentRef, name &i8) 

[c:'BinaryenElementSegmentGetTable']
pub fn elementsegmentgettable(elem BinaryenElementSegmentRef) &i8

[c:'BinaryenElementSegmentSetTable']
pub fn elementsegmentsettable(elem BinaryenElementSegmentRef, table &i8) 

[c:'BinaryenElementSegmentGetOffset']
pub fn elementsegmentgetoffset(elem BinaryenElementSegmentRef) BinaryenExpressionRef

[c:'BinaryenElementSegmentGetLength']
pub fn elementsegmentgetlength(elem BinaryenElementSegmentRef) BinaryenIndex

[c:'BinaryenElementSegmentGetData']
pub fn elementsegmentgetdata(elem BinaryenElementSegmentRef, dataid BinaryenIndex) &i8

[c:'BinaryenElementSegmentIsPassive']
pub fn elementsegmentispassive(elem BinaryenElementSegmentRef) bool

[c:'BinaryenGlobalGetName']
pub fn globalgetname(global BinaryenGlobalRef) &i8

[c:'BinaryenGlobalGetType']
pub fn globalgettype(global BinaryenGlobalRef) BinaryenType

[c:'BinaryenGlobalIsMutable']
pub fn globalismutable(global BinaryenGlobalRef) bool

[c:'BinaryenGlobalGetInitExpr']
pub fn globalgetinitexpr(global BinaryenGlobalRef) BinaryenExpressionRef

[c:'BinaryenTagGetName']
pub fn taggetname(tag BinaryenTagRef) &i8

[c:'BinaryenTagGetParams']
pub fn taggetparams(tag BinaryenTagRef) BinaryenType

[c:'BinaryenTagGetResults']
pub fn taggetresults(tag BinaryenTagRef) BinaryenType

[c:'BinaryenFunctionImportGetModule']
pub fn functionimportgetmodule(import_ BinaryenFunctionRef) &i8

[c:'BinaryenTableImportGetModule']
pub fn tableimportgetmodule(import_ BinaryenTableRef) &i8

[c:'BinaryenGlobalImportGetModule']
pub fn globalimportgetmodule(import_ BinaryenGlobalRef) &i8

[c:'BinaryenTagImportGetModule']
pub fn tagimportgetmodule(import_ BinaryenTagRef) &i8

[c:'BinaryenFunctionImportGetBase']
pub fn functionimportgetbase(import_ BinaryenFunctionRef) &i8

[c:'BinaryenTableImportGetBase']
pub fn tableimportgetbase(import_ BinaryenTableRef) &i8

[c:'BinaryenGlobalImportGetBase']
pub fn globalimportgetbase(import_ BinaryenGlobalRef) &i8

[c:'BinaryenTagImportGetBase']
pub fn tagimportgetbase(import_ BinaryenTagRef) &i8

[c:'BinaryenExportGetKind']
pub fn exportgetkind(export_ BinaryenExportRef) BinaryenExternalKind

[c:'BinaryenExportGetName']
pub fn exportgetname(export_ BinaryenExportRef) &i8

[c:'BinaryenExportGetValue']
pub fn exportgetvalue(export_ BinaryenExportRef) &i8

[c:'BinaryenAddCustomSection']
pub fn addcustomsection(module_ BinaryenModuleRef, name &i8, contents &i8, contentssize BinaryenIndex) 

type BinaryenSideEffects = u32
[c:'BinaryenSideEffectNone']
pub fn sideeffectnone() BinaryenSideEffects

[c:'BinaryenSideEffectBranches']
pub fn sideeffectbranches() BinaryenSideEffects

[c:'BinaryenSideEffectCalls']
pub fn sideeffectcalls() BinaryenSideEffects

[c:'BinaryenSideEffectReadsLocal']
pub fn sideeffectreadslocal() BinaryenSideEffects

[c:'BinaryenSideEffectWritesLocal']
pub fn sideeffectwriteslocal() BinaryenSideEffects

[c:'BinaryenSideEffectReadsGlobal']
pub fn sideeffectreadsglobal() BinaryenSideEffects

[c:'BinaryenSideEffectWritesGlobal']
pub fn sideeffectwritesglobal() BinaryenSideEffects

[c:'BinaryenSideEffectReadsMemory']
pub fn sideeffectreadsmemory() BinaryenSideEffects

[c:'BinaryenSideEffectWritesMemory']
pub fn sideeffectwritesmemory() BinaryenSideEffects

[c:'BinaryenSideEffectReadsTable']
pub fn sideeffectreadstable() BinaryenSideEffects

[c:'BinaryenSideEffectWritesTable']
pub fn sideeffectwritestable() BinaryenSideEffects

[c:'BinaryenSideEffectImplicitTrap']
pub fn sideeffectimplicittrap() BinaryenSideEffects

[c:'BinaryenSideEffectTrapsNeverHappen']
pub fn sideeffecttrapsneverhappen() BinaryenSideEffects

[c:'BinaryenSideEffectIsAtomic']
pub fn sideeffectisatomic() BinaryenSideEffects

[c:'BinaryenSideEffectThrows']
pub fn sideeffectthrows() BinaryenSideEffects

[c:'BinaryenSideEffectDanglingPop']
pub fn sideeffectdanglingpop() BinaryenSideEffects

[c:'BinaryenSideEffectAny']
pub fn sideeffectany() BinaryenSideEffects

[c:'BinaryenExpressionGetSideEffects']
pub fn expressiongetsideeffects(expr BinaryenExpressionRef, module_ BinaryenModuleRef) BinaryenSideEffects

type RelooperRef = voidptr
type RelooperBlockRef = voidptr
[c:'RelooperCreate']
pub fn reloopercreate(module_ BinaryenModuleRef) RelooperRef

[c:'RelooperAddBlock']
pub fn relooperaddblock(relooper RelooperRef, code BinaryenExpressionRef) RelooperBlockRef

[c:'RelooperAddBranch']
pub fn relooperaddbranch(from RelooperBlockRef, to RelooperBlockRef, condition BinaryenExpressionRef, code BinaryenExpressionRef) 

[c:'RelooperAddBlockWithSwitch']
pub fn relooperaddblockwithswitch(relooper RelooperRef, code BinaryenExpressionRef, condition BinaryenExpressionRef) RelooperBlockRef

[c:'RelooperAddBranchForSwitch']
pub fn relooperaddbranchforswitch(from RelooperBlockRef, to RelooperBlockRef, indexes &BinaryenIndex, numindexes BinaryenIndex, code BinaryenExpressionRef) 

[c:'RelooperRenderAndDispose']
pub fn relooperrenderanddispose(relooper RelooperRef, entry RelooperBlockRef, labelhelper BinaryenIndex) BinaryenExpressionRef

type ExpressionRunnerRef = voidptr
type ExpressionRunnerFlags = u32
[c:'ExpressionRunnerFlagsDefault']
pub fn expressionrunnerflagsdefault() ExpressionRunnerFlags

[c:'ExpressionRunnerFlagsPreserveSideeffects']
pub fn expressionrunnerflagspreservesideeffects() ExpressionRunnerFlags

[c:'ExpressionRunnerFlagsTraverseCalls']
pub fn expressionrunnerflagstraversecalls() ExpressionRunnerFlags

[c:'ExpressionRunnerCreate']
pub fn expressionrunnercreate(module_ BinaryenModuleRef, flags ExpressionRunnerFlags, maxdepth BinaryenIndex, maxloopiterations BinaryenIndex) ExpressionRunnerRef

[c:'ExpressionRunnerSetLocalValue']
pub fn expressionrunnersetlocalvalue(runner ExpressionRunnerRef, index BinaryenIndex, value BinaryenExpressionRef) bool

[c:'ExpressionRunnerSetGlobalValue']
pub fn expressionrunnersetglobalvalue(runner ExpressionRunnerRef, name &i8, value BinaryenExpressionRef) bool

[c:'ExpressionRunnerRunAndDispose']
pub fn expressionrunnerrunanddispose(runner ExpressionRunnerRef, expr BinaryenExpressionRef) BinaryenExpressionRef

type TypeBuilderRef = voidptr
type TypeBuilderErrorReason = u32
[c:'TypeBuilderErrorReasonSelfSupertype']
pub fn typebuildererrorreasonselfsupertype() TypeBuilderErrorReason

[c:'TypeBuilderErrorReasonInvalidSupertype']
pub fn typebuildererrorreasoninvalidsupertype() TypeBuilderErrorReason

[c:'TypeBuilderErrorReasonForwardSupertypeReference']
pub fn typebuildererrorreasonforwardsupertypereference() TypeBuilderErrorReason

[c:'TypeBuilderErrorReasonForwardChildReference']
pub fn typebuildererrorreasonforwardchildreference() TypeBuilderErrorReason

type BinaryenBasicHeapType = u32
[c:'TypeBuilderCreate']
pub fn typebuildercreate(size BinaryenIndex) TypeBuilderRef

[c:'TypeBuilderGrow']
pub fn typebuildergrow(builder TypeBuilderRef, count BinaryenIndex) 

[c:'TypeBuilderGetSize']
pub fn typebuildergetsize(builder TypeBuilderRef) BinaryenIndex

[c:'TypeBuilderSetBasicHeapType']
pub fn typebuildersetbasicheaptype(builder TypeBuilderRef, index BinaryenIndex, basicheaptype BinaryenBasicHeapType) 

[c:'TypeBuilderSetSignatureType']
pub fn typebuildersetsignaturetype(builder TypeBuilderRef, index BinaryenIndex, paramtypes BinaryenType, resulttypes BinaryenType) 

[c:'TypeBuilderSetStructType']
pub fn typebuildersetstructtype(builder TypeBuilderRef, index BinaryenIndex, fieldtypes &BinaryenType, fieldpackedtypes &BinaryenPackedType, fieldmutables &bool, numfields int) 

[c:'TypeBuilderSetArrayType']
pub fn typebuildersetarraytype(builder TypeBuilderRef, index BinaryenIndex, elementtype BinaryenType, elementpackedtype BinaryenPackedType, elementmutable int) 

[c:'TypeBuilderIsBasic']
pub fn typebuilderisbasic(builder TypeBuilderRef, index BinaryenIndex) bool

[c:'TypeBuilderGetBasic']
pub fn typebuildergetbasic(builder TypeBuilderRef, index BinaryenIndex) BinaryenBasicHeapType

[c:'TypeBuilderGetTempHeapType']
pub fn typebuildergettempheaptype(builder TypeBuilderRef, index BinaryenIndex) BinaryenHeapType

[c:'TypeBuilderGetTempTupleType']
pub fn typebuildergettemptupletype(builder TypeBuilderRef, types &BinaryenType, numtypes BinaryenIndex) BinaryenType

[c:'TypeBuilderGetTempRefType']
pub fn typebuildergettempreftype(builder TypeBuilderRef, heaptype BinaryenHeapType, nullable int) BinaryenType

[c:'TypeBuilderSetSubType']
pub fn typebuildersetsubtype(builder TypeBuilderRef, index BinaryenIndex, supertype BinaryenHeapType) 

[c:'TypeBuilderCreateRecGroup']
pub fn typebuildercreaterecgroup(builder TypeBuilderRef, index BinaryenIndex, length BinaryenIndex) 

[c:'TypeBuilderBuildAndDispose']
pub fn typebuilderbuildanddispose(builder TypeBuilderRef, heaptypes &BinaryenHeapType, errorindex &BinaryenIndex, errorreason &TypeBuilderErrorReason) bool

[c:'BinaryenModuleSetTypeName']
pub fn modulesettypename(module_ BinaryenModuleRef, heaptype BinaryenHeapType, name &i8) 

[c:'BinaryenModuleSetFieldName']
pub fn modulesetfieldname(module_ BinaryenModuleRef, heaptype BinaryenHeapType, index BinaryenIndex, name &i8) 

[c:'BinaryenSetColorsEnabled']
pub fn setcolorsenabled(enabled bool) 

[c:'BinaryenAreColorsEnabled']
pub fn arecolorsenabled() bool

