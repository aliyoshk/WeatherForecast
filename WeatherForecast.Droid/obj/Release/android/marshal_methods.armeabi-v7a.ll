; ModuleID = 'obj/Release/android/marshal_methods.armeabi-v7a.ll'
source_filename = "obj/Release/android/marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [102 x i32] [
	i32 34715100, ; 0: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 43
	i32 39109920, ; 1: Newtonsoft.Json.dll => 0x254c520 => 9
	i32 219437799, ; 2: WeatherForecast.ViewModel.dll => 0xd145ae7 => 28
	i32 230752869, ; 3: Microsoft.CSharp.dll => 0xdc10265 => 6
	i32 304048146, ; 4: WeatherForecast.Service.Contract => 0x121f6812 => 24
	i32 318968648, ; 5: Xamarin.AndroidX.Activity.dll => 0x13031348 => 29
	i32 321597661, ; 6: System.Numerics => 0x132b30dd => 19
	i32 342366114, ; 7: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 36
	i32 346219089, ; 8: Autofac => 0x14a2e251 => 1
	i32 347068432, ; 9: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 13
	i32 388779843, ; 10: WeatherForecast.Domain.dll => 0x172c4f43 => 23
	i32 442521989, ; 11: Xamarin.Essentials => 0x1a605985 => 41
	i32 450948140, ; 12: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 35
	i32 465846621, ; 13: mscorlib => 0x1bc4415d => 8
	i32 469710990, ; 14: System.dll => 0x1bff388e => 18
	i32 627609679, ; 15: Xamarin.AndroidX.CustomView => 0x2568904f => 33
	i32 632672795, ; 16: WeatherForecast.Service.Mock => 0x25b5d21b => 27
	i32 690569205, ; 17: System.Xml.Linq.dll => 0x29293ff5 => 48
	i32 748832960, ; 18: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 11
	i32 780687131, ; 19: WeatherForecast.Droid => 0x2e88571b => 0
	i32 928116545, ; 20: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 43
	i32 955402788, ; 21: Newtonsoft.Json => 0x38f24a24 => 9
	i32 967690846, ; 22: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 36
	i32 1012816738, ; 23: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 40
	i32 1035644815, ; 24: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 30
	i32 1052210849, ; 25: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 38
	i32 1098259244, ; 26: System => 0x41761b2c => 18
	i32 1206968157, ; 27: WeatherForecast.Service.Implementation.dll => 0x47f0df5d => 26
	i32 1292207520, ; 28: SQLitePCLRaw.core.dll => 0x4d0585a0 => 12
	i32 1293217323, ; 29: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 34
	i32 1303372583, ; 30: WeatherForecast.Config.dll => 0x4dafe327 => 22
	i32 1376866003, ; 31: Xamarin.AndroidX.SavedState => 0x52114ed3 => 40
	i32 1406073936, ; 32: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 31
	i32 1411638395, ; 33: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 20
	i32 1473453042, ; 34: WeatherForecast.Service.Factory => 0x57d31bf2 => 25
	i32 1592978981, ; 35: System.Runtime.Serialization.dll => 0x5ef2ee25 => 47
	i32 1600625611, ; 36: WeatherForecast.ViewModel => 0x5f679bcb => 28
	i32 1622152042, ; 37: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 39
	i32 1639515021, ; 38: System.Net.Http.dll => 0x61b9038d => 46
	i32 1658251792, ; 39: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 42
	i32 1711441057, ; 40: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 13
	i32 1776026572, ; 41: System.Core.dll => 0x69dc03cc => 16
	i32 1788241197, ; 42: Xamarin.AndroidX.Fragment => 0x6a96652d => 35
	i32 1808609942, ; 43: Xamarin.AndroidX.Loader => 0x6bcd3296 => 39
	i32 1813201214, ; 44: Xamarin.Google.Android.Material => 0x6c13413e => 42
	i32 1867746548, ; 45: Xamarin.Essentials.dll => 0x6f538cf4 => 41
	i32 1878656554, ; 46: WeatherForecast.Droid.dll => 0x6ffa062a => 0
	i32 1987243864, ; 47: FluentValidation => 0x7672ef58 => 2
	i32 2011961780, ; 48: System.Buffers.dll => 0x77ec19b4 => 15
	i32 2019465201, ; 49: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 38
	i32 2055257422, ; 50: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 37
	i32 2103459038, ; 51: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 14
	i32 2201231467, ; 52: System.Net.Http => 0x8334206b => 46
	i32 2298805832, ; 53: WeatherForecast.Service.Implementation => 0x8904fe48 => 26
	i32 2465273461, ; 54: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 11
	i32 2475788418, ; 55: Java.Interop.dll => 0x93918882 => 5
	i32 2520842319, ; 56: WeatherForecast.Service.Mock.dll => 0x9641004f => 27
	i32 2562349572, ; 57: Microsoft.CSharp => 0x98ba5a04 => 6
	i32 2608100695, ; 58: Flurl.Http.dll => 0x9b747557 => 4
	i32 2732626843, ; 59: Xamarin.AndroidX.Activity => 0xa2e0939b => 29
	i32 2765824710, ; 60: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 49
	i32 2810250172, ; 61: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 31
	i32 2819470561, ; 62: System.Xml.dll => 0xa80db4e1 => 21
	i32 2883242794, ; 63: WeatherForecast.Service.Contract.dll => 0xabdacb2a => 24
	i32 2903344695, ; 64: System.ComponentModel.Composition => 0xad0d8637 => 45
	i32 2905242038, ; 65: mscorlib.dll => 0xad2a79b6 => 8
	i32 2978675010, ; 66: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 34
	i32 3004688005, ; 67: WeatherForecast.Domain => 0xb317e685 => 23
	i32 3111772706, ; 68: System.Runtime.Serialization => 0xb979e222 => 47
	i32 3144447155, ; 69: Autofac.dll => 0xbb6c74b3 => 1
	i32 3204380047, ; 70: System.Data.dll => 0xbefef58f => 44
	i32 3247949154, ; 71: Mono.Security => 0xc197c562 => 50
	i32 3286872994, ; 72: SQLite-net.dll => 0xc3e9b3a2 => 10
	i32 3317135071, ; 73: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 33
	i32 3317144872, ; 74: System.Data => 0xc5b79d28 => 44
	i32 3360279109, ; 75: SQLitePCLRaw.core => 0xc849ca45 => 12
	i32 3362522851, ; 76: Xamarin.AndroidX.Core => 0xc86c06e3 => 32
	i32 3366347497, ; 77: Java.Interop => 0xc8a662e9 => 5
	i32 3388768240, ; 78: WeatherForecast.Service.Factory.dll => 0xc9fc7ff0 => 25
	i32 3395150330, ; 79: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 20
	i32 3429136800, ; 80: System.Xml => 0xcc6479a0 => 21
	i32 3476120550, ; 81: Mono.Android => 0xcf3163e6 => 7
	i32 3509114376, ; 82: System.Xml.Linq => 0xd128d608 => 48
	i32 3567349600, ; 83: System.ComponentModel.Composition.dll => 0xd4a16f60 => 45
	i32 3583527548, ; 84: WeatherForecast.Config => 0xd5984a7c => 22
	i32 3623953038, ; 85: FluentValidation.dll => 0xd801228e => 2
	i32 3641597786, ; 86: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 37
	i32 3672681054, ; 87: Mono.Android.dll => 0xdae8aa5e => 7
	i32 3748608112, ; 88: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 17
	i32 3754567612, ; 89: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 14
	i32 3829621856, ; 90: System.Numerics.dll => 0xe4436460 => 19
	i32 3876362041, ; 91: SQLite-net => 0xe70c9739 => 10
	i32 3896760992, ; 92: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 32
	i32 3953953790, ; 93: System.Text.Encoding.CodePages => 0xebac8bfe => 49
	i32 3955647286, ; 94: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 30
	i32 4039220540, ; 95: Flurl.Http => 0xf0c19d3c => 4
	i32 4105002889, ; 96: Mono.Security.dll => 0xf4ad5f89 => 50
	i32 4151237749, ; 97: System.Core => 0xf76edc75 => 16
	i32 4213026141, ; 98: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 17
	i32 4222374112, ; 99: Flurl.dll => 0xfbac50e0 => 3
	i32 4260525087, ; 100: System.Buffers => 0xfdf2741f => 15
	i32 4270498656 ; 101: Flurl => 0xfe8aa360 => 3
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [102 x i32] [
	i32 43, i32 9, i32 28, i32 6, i32 24, i32 29, i32 19, i32 36, ; 0..7
	i32 1, i32 13, i32 23, i32 41, i32 35, i32 8, i32 18, i32 33, ; 8..15
	i32 27, i32 48, i32 11, i32 0, i32 43, i32 9, i32 36, i32 40, ; 16..23
	i32 30, i32 38, i32 18, i32 26, i32 12, i32 34, i32 22, i32 40, ; 24..31
	i32 31, i32 20, i32 25, i32 47, i32 28, i32 39, i32 46, i32 42, ; 32..39
	i32 13, i32 16, i32 35, i32 39, i32 42, i32 41, i32 0, i32 2, ; 40..47
	i32 15, i32 38, i32 37, i32 14, i32 46, i32 26, i32 11, i32 5, ; 48..55
	i32 27, i32 6, i32 4, i32 29, i32 49, i32 31, i32 21, i32 24, ; 56..63
	i32 45, i32 8, i32 34, i32 23, i32 47, i32 1, i32 44, i32 50, ; 64..71
	i32 10, i32 33, i32 44, i32 12, i32 32, i32 5, i32 25, i32 20, ; 72..79
	i32 21, i32 7, i32 48, i32 45, i32 22, i32 2, i32 37, i32 7, ; 80..87
	i32 17, i32 14, i32 19, i32 10, i32 32, i32 49, i32 30, i32 4, ; 88..95
	i32 50, i32 16, i32 17, i32 3, i32 15, i32 3 ; 96..101
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ a8a26c7b003e2524cc98acb2c2ffc2ddea0f6692"}
!llvm.linker.options = !{}
