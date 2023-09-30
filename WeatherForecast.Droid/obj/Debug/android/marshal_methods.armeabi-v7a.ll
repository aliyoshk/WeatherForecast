; ModuleID = 'obj/Debug/android/marshal_methods.armeabi-v7a.ll'
source_filename = "obj/Debug/android/marshal_methods.armeabi-v7a.ll"
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
@assembly_image_cache_hashes = local_unnamed_addr constant [194 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 60
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 78
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 15
	i32 101534019, ; 3: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 69
	i32 117431740, ; 4: System.Runtime.InteropServices => 0x6ffddbc => 92
	i32 120558881, ; 5: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 69
	i32 165246403, ; 6: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 47
	i32 182336117, ; 7: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 70
	i32 209399409, ; 8: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 45
	i32 219437799, ; 9: WeatherForecast.ViewModel.dll => 0xd145ae7 => 37
	i32 220171995, ; 10: System.Diagnostics.Debug => 0xd1f8edb => 6
	i32 230216969, ; 11: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 57
	i32 230752869, ; 12: Microsoft.CSharp.dll => 0xdc10265 => 12
	i32 232815796, ; 13: System.Web.Services => 0xde07cb4 => 89
	i32 280482487, ; 14: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 55
	i32 304048146, ; 15: WeatherForecast.Service.Contract => 0x121f6812 => 33
	i32 318968648, ; 16: Xamarin.AndroidX.Activity.dll => 0x13031348 => 38
	i32 321597661, ; 17: System.Numerics => 0x132b30dd => 26
	i32 342366114, ; 18: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 58
	i32 346219089, ; 19: Autofac => 0x14a2e251 => 7
	i32 347068432, ; 20: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 19
	i32 385762202, ; 21: System.Memory.dll => 0x16fe439a => 25
	i32 388779843, ; 22: WeatherForecast.Domain.dll => 0x172c4f43 => 32
	i32 442521989, ; 23: Xamarin.Essentials => 0x1a605985 => 76
	i32 442565967, ; 24: System.Collections => 0x1a61054f => 4
	i32 450948140, ; 25: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 54
	i32 465846621, ; 26: mscorlib => 0x1bc4415d => 14
	i32 469710990, ; 27: System.dll => 0x1bff388e => 24
	i32 476646585, ; 28: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 55
	i32 486930444, ; 29: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 64
	i32 526420162, ; 30: System.Transactions.dll => 0x1f6088c2 => 80
	i32 545304856, ; 31: System.Runtime.Extensions => 0x2080b118 => 95
	i32 605376203, ; 32: System.IO.Compression.FileSystem => 0x24154ecb => 84
	i32 627609679, ; 33: Xamarin.AndroidX.CustomView => 0x2568904f => 51
	i32 632672795, ; 34: WeatherForecast.Service.Mock => 0x25b5d21b => 36
	i32 663517072, ; 35: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 74
	i32 666292255, ; 36: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 42
	i32 672442732, ; 37: System.Collections.Concurrent => 0x2814a96c => 3
	i32 690569205, ; 38: System.Xml.Linq.dll => 0x29293ff5 => 90
	i32 748832960, ; 39: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 17
	i32 775507847, ; 40: System.IO.Compression => 0x2e394f87 => 83
	i32 780687131, ; 41: WeatherForecast.Droid => 0x2e88571b => 0
	i32 809851609, ; 42: System.Drawing.Common.dll => 0x30455ad9 => 82
	i32 843511501, ; 43: Xamarin.AndroidX.Print => 0x3246f6cd => 66
	i32 928116545, ; 44: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 78
	i32 955402788, ; 45: Newtonsoft.Json => 0x38f24a24 => 15
	i32 967690846, ; 46: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 58
	i32 975236339, ; 47: System.Diagnostics.Tracing => 0x3a20ecf3 => 93
	i32 992768348, ; 48: System.Collections.dll => 0x3b2c715c => 4
	i32 1012816738, ; 49: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 68
	i32 1035644815, ; 50: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 41
	i32 1052210849, ; 51: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 61
	i32 1098259244, ; 52: System => 0x41761b2c => 24
	i32 1175144683, ; 53: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 72
	i32 1204270330, ; 54: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 42
	i32 1206968157, ; 55: WeatherForecast.Service.Implementation.dll => 0x47f0df5d => 35
	i32 1267360935, ; 56: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 73
	i32 1292207520, ; 57: SQLitePCLRaw.core.dll => 0x4d0585a0 => 18
	i32 1293217323, ; 58: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 53
	i32 1303372583, ; 59: WeatherForecast.Config.dll => 0x4dafe327 => 31
	i32 1365406463, ; 60: System.ServiceModel.Internals.dll => 0x516272ff => 88
	i32 1376866003, ; 61: Xamarin.AndroidX.SavedState => 0x52114ed3 => 68
	i32 1379779777, ; 62: System.Resources.ResourceManager => 0x523dc4c1 => 2
	i32 1406073936, ; 63: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 48
	i32 1411638395, ; 64: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 28
	i32 1457743152, ; 65: System.Runtime.Extensions.dll => 0x56e36530 => 95
	i32 1462112819, ; 66: System.IO.Compression.dll => 0x57261233 => 83
	i32 1469204771, ; 67: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 40
	i32 1473453042, ; 68: WeatherForecast.Service.Factory => 0x57d31bf2 => 34
	i32 1582372066, ; 69: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 52
	i32 1592978981, ; 70: System.Runtime.Serialization.dll => 0x5ef2ee25 => 87
	i32 1600625611, ; 71: WeatherForecast.ViewModel => 0x5f679bcb => 37
	i32 1622152042, ; 72: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 63
	i32 1636350590, ; 73: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 50
	i32 1639515021, ; 74: System.Net.Http.dll => 0x61b9038d => 86
	i32 1657153582, ; 75: System.Runtime => 0x62c6282e => 29
	i32 1658251792, ; 76: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 77
	i32 1701541528, ; 77: System.Diagnostics.Debug.dll => 0x656b7698 => 6
	i32 1711441057, ; 78: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 19
	i32 1726116996, ; 79: System.Reflection.dll => 0x66e27484 => 94
	i32 1729485958, ; 80: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 46
	i32 1766324549, ; 81: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 70
	i32 1776026572, ; 82: System.Core.dll => 0x69dc03cc => 22
	i32 1788241197, ; 83: Xamarin.AndroidX.Fragment => 0x6a96652d => 54
	i32 1808609942, ; 84: Xamarin.AndroidX.Loader => 0x6bcd3296 => 63
	i32 1813201214, ; 85: Xamarin.Google.Android.Material => 0x6c13413e => 77
	i32 1867746548, ; 86: Xamarin.Essentials.dll => 0x6f538cf4 => 76
	i32 1878656554, ; 87: WeatherForecast.Droid.dll => 0x6ffa062a => 0
	i32 1885316902, ; 88: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 43
	i32 1900610850, ; 89: System.Resources.ResourceManager.dll => 0x71490522 => 2
	i32 1919157823, ; 90: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 65
	i32 1987243864, ; 91: FluentValidation => 0x7672ef58 => 8
	i32 2011961780, ; 92: System.Buffers.dll => 0x77ec19b4 => 21
	i32 2019465201, ; 93: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 61
	i32 2055257422, ; 94: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 59
	i32 2079903147, ; 95: System.Runtime.dll => 0x7bf8cdab => 29
	i32 2090596640, ; 96: System.Numerics.Vectors => 0x7c9bf920 => 27
	i32 2097448633, ; 97: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 56
	i32 2103459038, ; 98: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 20
	i32 2201231467, ; 99: System.Net.Http => 0x8334206b => 86
	i32 2217644978, ; 100: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 72
	i32 2244775296, ; 101: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 64
	i32 2256548716, ; 102: Xamarin.AndroidX.MultiDex => 0x8680336c => 65
	i32 2279755925, ; 103: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 67
	i32 2298805832, ; 104: WeatherForecast.Service.Implementation => 0x8904fe48 => 35
	i32 2315684594, ; 105: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 39
	i32 2465273461, ; 106: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 17
	i32 2471841756, ; 107: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 108: Java.Interop.dll => 0x93918882 => 11
	i32 2501346920, ; 109: System.Data.DataSetExtensions => 0x95178668 => 81
	i32 2505896520, ; 110: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 60
	i32 2520842319, ; 111: WeatherForecast.Service.Mock.dll => 0x9641004f => 36
	i32 2562349572, ; 112: Microsoft.CSharp => 0x98ba5a04 => 12
	i32 2581819634, ; 113: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 73
	i32 2608100695, ; 114: Flurl.Http.dll => 0x9b747557 => 10
	i32 2620871830, ; 115: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 50
	i32 2732626843, ; 116: Xamarin.AndroidX.Activity => 0xa2e0939b => 38
	i32 2737747696, ; 117: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 40
	i32 2765824710, ; 118: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 91
	i32 2778768386, ; 119: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 75
	i32 2810250172, ; 120: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 48
	i32 2819470561, ; 121: System.Xml.dll => 0xa80db4e1 => 30
	i32 2853208004, ; 122: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 75
	i32 2855708567, ; 123: Xamarin.AndroidX.Transition => 0xaa36a797 => 71
	i32 2883242794, ; 124: WeatherForecast.Service.Contract.dll => 0xabdacb2a => 33
	i32 2901442782, ; 125: System.Reflection => 0xacf080de => 94
	i32 2903344695, ; 126: System.ComponentModel.Composition => 0xad0d8637 => 85
	i32 2905242038, ; 127: mscorlib.dll => 0xad2a79b6 => 14
	i32 2919462931, ; 128: System.Numerics.Vectors.dll => 0xae037813 => 27
	i32 2978675010, ; 129: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 53
	i32 3004688005, ; 130: WeatherForecast.Domain => 0xb317e685 => 32
	i32 3024354802, ; 131: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 57
	i32 3111772706, ; 132: System.Runtime.Serialization => 0xb979e222 => 87
	i32 3144447155, ; 133: Autofac.dll => 0xbb6c74b3 => 7
	i32 3147165239, ; 134: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 93
	i32 3204380047, ; 135: System.Data.dll => 0xbefef58f => 79
	i32 3211777861, ; 136: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 52
	i32 3220365878, ; 137: System.Threading => 0xbff2e236 => 5
	i32 3247949154, ; 138: Mono.Security => 0xc197c562 => 96
	i32 3258312781, ; 139: Xamarin.AndroidX.CardView => 0xc235e84d => 46
	i32 3267021929, ; 140: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 44
	i32 3286872994, ; 141: SQLite-net.dll => 0xc3e9b3a2 => 16
	i32 3317135071, ; 142: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 51
	i32 3317144872, ; 143: System.Data => 0xc5b79d28 => 79
	i32 3340431453, ; 144: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 43
	i32 3353484488, ; 145: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 56
	i32 3360279109, ; 146: SQLitePCLRaw.core => 0xc849ca45 => 18
	i32 3362522851, ; 147: Xamarin.AndroidX.Core => 0xc86c06e3 => 49
	i32 3366347497, ; 148: Java.Interop => 0xc8a662e9 => 11
	i32 3374999561, ; 149: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 67
	i32 3388768240, ; 150: WeatherForecast.Service.Factory.dll => 0xc9fc7ff0 => 34
	i32 3395150330, ; 151: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 28
	i32 3404865022, ; 152: System.ServiceModel.Internals => 0xcaf21dfe => 88
	i32 3429136800, ; 153: System.Xml => 0xcc6479a0 => 30
	i32 3430777524, ; 154: netstandard => 0xcc7d82b4 => 1
	i32 3476120550, ; 155: Mono.Android => 0xcf3163e6 => 13
	i32 3486566296, ; 156: System.Transactions => 0xcfd0c798 => 80
	i32 3501239056, ; 157: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 44
	i32 3509114376, ; 158: System.Xml.Linq => 0xd128d608 => 90
	i32 3567349600, ; 159: System.ComponentModel.Composition.dll => 0xd4a16f60 => 85
	i32 3583527548, ; 160: WeatherForecast.Config => 0xd5984a7c => 31
	i32 3623953038, ; 161: FluentValidation.dll => 0xd801228e => 8
	i32 3627220390, ; 162: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 66
	i32 3641597786, ; 163: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 59
	i32 3672681054, ; 164: Mono.Android.dll => 0xdae8aa5e => 13
	i32 3676310014, ; 165: System.Web.Services.dll => 0xdb2009fe => 89
	i32 3682565725, ; 166: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 45
	i32 3689375977, ; 167: System.Drawing.Common => 0xdbe768e9 => 82
	i32 3718780102, ; 168: Xamarin.AndroidX.Annotation => 0xdda814c6 => 39
	i32 3748608112, ; 169: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 23
	i32 3754567612, ; 170: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 20
	i32 3786282454, ; 171: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 47
	i32 3829621856, ; 172: System.Numerics.dll => 0xe4436460 => 26
	i32 3849253459, ; 173: System.Runtime.InteropServices.dll => 0xe56ef253 => 92
	i32 3876362041, ; 174: SQLite-net => 0xe70c9739 => 16
	i32 3885922214, ; 175: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 71
	i32 3896106733, ; 176: System.Collections.Concurrent.dll => 0xe839deed => 3
	i32 3896760992, ; 177: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 49
	i32 3920810846, ; 178: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 84
	i32 3921031405, ; 179: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 74
	i32 3945713374, ; 180: System.Data.DataSetExtensions.dll => 0xeb2ecede => 81
	i32 3953953790, ; 181: System.Text.Encoding.CodePages => 0xebac8bfe => 91
	i32 3955647286, ; 182: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 41
	i32 4025784931, ; 183: System.Memory => 0xeff49a63 => 25
	i32 4039220540, ; 184: Flurl.Http => 0xf0c19d3c => 10
	i32 4073602200, ; 185: System.Threading.dll => 0xf2ce3c98 => 5
	i32 4105002889, ; 186: Mono.Security.dll => 0xf4ad5f89 => 96
	i32 4151237749, ; 187: System.Core => 0xf76edc75 => 22
	i32 4182413190, ; 188: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 62
	i32 4213026141, ; 189: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 23
	i32 4222374112, ; 190: Flurl.dll => 0xfbac50e0 => 9
	i32 4260525087, ; 191: System.Buffers => 0xfdf2741f => 21
	i32 4270498656, ; 192: Flurl => 0xfe8aa360 => 9
	i32 4292120959 ; 193: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 62
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [194 x i32] [
	i32 60, i32 78, i32 15, i32 69, i32 92, i32 69, i32 47, i32 70, ; 0..7
	i32 45, i32 37, i32 6, i32 57, i32 12, i32 89, i32 55, i32 33, ; 8..15
	i32 38, i32 26, i32 58, i32 7, i32 19, i32 25, i32 32, i32 76, ; 16..23
	i32 4, i32 54, i32 14, i32 24, i32 55, i32 64, i32 80, i32 95, ; 24..31
	i32 84, i32 51, i32 36, i32 74, i32 42, i32 3, i32 90, i32 17, ; 32..39
	i32 83, i32 0, i32 82, i32 66, i32 78, i32 15, i32 58, i32 93, ; 40..47
	i32 4, i32 68, i32 41, i32 61, i32 24, i32 72, i32 42, i32 35, ; 48..55
	i32 73, i32 18, i32 53, i32 31, i32 88, i32 68, i32 2, i32 48, ; 56..63
	i32 28, i32 95, i32 83, i32 40, i32 34, i32 52, i32 87, i32 37, ; 64..71
	i32 63, i32 50, i32 86, i32 29, i32 77, i32 6, i32 19, i32 94, ; 72..79
	i32 46, i32 70, i32 22, i32 54, i32 63, i32 77, i32 76, i32 0, ; 80..87
	i32 43, i32 2, i32 65, i32 8, i32 21, i32 61, i32 59, i32 29, ; 88..95
	i32 27, i32 56, i32 20, i32 86, i32 72, i32 64, i32 65, i32 67, ; 96..103
	i32 35, i32 39, i32 17, i32 1, i32 11, i32 81, i32 60, i32 36, ; 104..111
	i32 12, i32 73, i32 10, i32 50, i32 38, i32 40, i32 91, i32 75, ; 112..119
	i32 48, i32 30, i32 75, i32 71, i32 33, i32 94, i32 85, i32 14, ; 120..127
	i32 27, i32 53, i32 32, i32 57, i32 87, i32 7, i32 93, i32 79, ; 128..135
	i32 52, i32 5, i32 96, i32 46, i32 44, i32 16, i32 51, i32 79, ; 136..143
	i32 43, i32 56, i32 18, i32 49, i32 11, i32 67, i32 34, i32 28, ; 144..151
	i32 88, i32 30, i32 1, i32 13, i32 80, i32 44, i32 90, i32 85, ; 152..159
	i32 31, i32 8, i32 66, i32 59, i32 13, i32 89, i32 45, i32 82, ; 160..167
	i32 39, i32 23, i32 20, i32 47, i32 26, i32 92, i32 16, i32 71, ; 168..175
	i32 3, i32 49, i32 84, i32 74, i32 81, i32 91, i32 41, i32 25, ; 176..183
	i32 10, i32 5, i32 96, i32 22, i32 62, i32 23, i32 9, i32 21, ; 184..191
	i32 9, i32 62 ; 192..193
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
