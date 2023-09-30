; ModuleID = 'obj/Release/android/marshal_methods.arm64-v8a.ll'
source_filename = "obj/Release/android/marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [102 x i64] [
	i64 120698629574877762, ; 0: Mono.Android => 0x1accec39cafe242 => 7
	i64 232391251801502327, ; 1: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 40
	i64 870603111519317375, ; 2: SQLitePCLRaw.lib.e_sqlite3.android => 0xc1500ead2756d7f => 13
	i64 872800313462103108, ; 3: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 34
	i64 1000557547492888992, ; 4: Mono.Security.dll => 0xde2b1c9cba651a0 => 50
	i64 1082286091792029997, ; 5: WeatherForecast.Service.Implementation => 0xf050d775e9c192d => 26
	i64 1120440138749646132, ; 6: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 42
	i64 1301485588176585670, ; 7: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 12
	i64 1425944114962822056, ; 8: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 47
	i64 1518315023656898250, ; 9: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 14
	i64 1691834813727836995, ; 10: WeatherForecast.ViewModel.dll => 0x177a9acca2e30b43 => 28
	i64 1731380447121279447, ; 11: Newtonsoft.Json => 0x18071957e9b889d7 => 9
	i64 1795316252682057001, ; 12: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 30
	i64 1836611346387731153, ; 13: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 40
	i64 1981742497975770890, ; 14: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 38
	i64 2133195048986300728, ; 15: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 9
	i64 2262844636196693701, ; 16: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 34
	i64 2329709569556905518, ; 17: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 37
	i64 2337758774805907496, ; 18: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 20
	i64 2470498323731680442, ; 19: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 31
	i64 2547086958574651984, ; 20: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 29
	i64 2592350477072141967, ; 21: System.Xml.dll => 0x23f9e10627330e8f => 21
	i64 2624866290265602282, ; 22: mscorlib.dll => 0x246d65fbde2db8ea => 8
	i64 2705679071211637370, ; 23: WeatherForecast.Service.Mock.dll => 0x258c80c7abc74a7a => 27
	i64 2783046991838674048, ; 24: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 20
	i64 2979466917122954881, ; 25: WeatherForecast.ViewModel => 0x295931600f245681 => 28
	i64 3017704767998173186, ; 26: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 42
	i64 3289520064315143713, ; 27: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 36
	i64 3380777203843065839, ; 28: Autofac => 0x2eeaeef46bcde7ef => 1
	i64 3531994851595924923, ; 29: System.Numerics => 0x31042a9aade235bb => 19
	i64 3723840125652208717, ; 30: WeatherForecast.Service.Factory.dll => 0x33adbcdd51d88c4d => 25
	i64 3857097924448767961, ; 31: WeatherForecast.Droid => 0x35872a2062aa4fd9 => 0
	i64 4138230823277296240, ; 32: WeatherForecast.Droid.dll => 0x396df3022c03fa70 => 0
	i64 4337444564132831293, ; 33: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 11
	i64 4647796558262377539, ; 34: Flurl.dll => 0x40804a583b831c43 => 3
	i64 4794310189461587505, ; 35: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 29
	i64 4984589564328971462, ; 36: FluentValidation => 0x452cd1cc9cf28cc6 => 2
	i64 5203618020066742981, ; 37: Xamarin.Essentials => 0x4836f704f0e652c5 => 41
	i64 5404556524862317797, ; 38: FluentValidation.dll => 0x4b00d78658f024e5 => 2
	i64 5507995362134886206, ; 39: System.Core.dll => 0x4c705499688c873e => 16
	i64 5814793921162055375, ; 40: Flurl.Http.dll => 0x50b24c4360f70ecf => 4
	i64 6183170893902868313, ; 41: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 11
	i64 6401687960814735282, ; 42: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 37
	i64 6507111896991992533, ; 43: WeatherForecast.Config => 0x5a4de7cb4ded0ad5 => 22
	i64 6548213210057960872, ; 44: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 33
	i64 6617685658146568858, ; 45: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 49
	i64 6638933136459670863, ; 46: WeatherForecast.Service.Implementation.dll => 0x5c223a83563fa54f => 26
	i64 6876862101832370452, ; 47: System.Xml.Linq => 0x5f6f85a57d108914 => 48
	i64 7326607596592359058, ; 48: WeatherForecast.Config.dll => 0x65ad56ca8390e692 => 22
	i64 7488575175965059935, ; 49: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 48
	i64 7637365915383206639, ; 50: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 41
	i64 7654504624184590948, ; 51: System.Net.Http => 0x6a3a4366801b8264 => 46
	i64 7735176074855944702, ; 52: Microsoft.CSharp => 0x6b58dda848e391fe => 6
	i64 7820441508502274321, ; 53: System.Data => 0x6c87ca1e14ff8111 => 44
	i64 8044118961405839122, ; 54: System.ComponentModel.Composition => 0x6fa2739369944712 => 45
	i64 8083354569033831015, ; 55: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 36
	i64 8087206902342787202, ; 56: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 17
	i64 8167236081217502503, ; 57: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 5
	i64 8626175481042262068, ; 58: Java.Interop => 0x77b654e585b55834 => 5
	i64 8638972117149407195, ; 59: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 6
	i64 8725526185868997716, ; 60: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 17
	i64 9324707631942237306, ; 61: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 30
	i64 9662334977499516867, ; 62: System.Numerics.dll => 0x8617827802b0cfc3 => 19
	i64 9678050649315576968, ; 63: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 31
	i64 9808709177481450983, ; 64: Mono.Android.dll => 0x881f890734e555e7 => 7
	i64 9998632235833408227, ; 65: Mono.Security => 0x8ac2470b209ebae3 => 50
	i64 10038780035334861115, ; 66: System.Net.Http.dll => 0x8b50e941206af13b => 46
	i64 10098755056672017518, ; 67: WeatherForecast.Domain => 0x8c25fc37f29d8c6e => 23
	i64 10229024438826829339, ; 68: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 33
	i64 10430153318873392755, ; 69: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 32
	i64 10922724071211577087, ; 70: Autofac.dll => 0x97954fabf42caeff => 1
	i64 11023048688141570732, ; 71: System.Core => 0x98f9bc61168392ac => 16
	i64 11037814507248023548, ; 72: System.Xml => 0x992e31d0412bf7fc => 21
	i64 11739066727115742305, ; 73: SQLite-net.dll => 0xa2e98afdf8575c61 => 10
	i64 11806260347154423189, ; 74: SQLite-net => 0xa3d8433bc5eb5d95 => 10
	i64 12102847907131387746, ; 75: System.Buffers => 0xa7f5f40c43256f62 => 15
	i64 12279246230491828964, ; 76: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 14
	i64 12350364943561294840, ; 77: Flurl => 0xab654f7b2b6883f8 => 3
	i64 12451044538927396471, ; 78: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 35
	i64 12466513435562512481, ; 79: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 39
	i64 12800337691398482530, ; 80: WeatherForecast.Service.Contract.dll => 0xb1a3ef4facd9aa62 => 24
	i64 13370592475155966277, ; 81: System.Runtime.Serialization => 0xb98de304062ea945 => 47
	i64 13454009404024712428, ; 82: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 43
	i64 13647894001087880694, ; 83: System.Data.dll => 0xbd670f48cb071df6 => 44
	i64 13737534230787271062, ; 84: WeatherForecast.Service.Contract => 0xbea586992bd82996 => 24
	i64 13959074834287824816, ; 85: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 35
	i64 14626636157077593891, ; 86: Flurl.Http => 0xcafc4016f17e9f23 => 4
	i64 14792063746108907174, ; 87: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 43
	i64 14935719434541007538, ; 88: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 49
	i64 15370334346939861994, ; 89: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 32
	i64 15609085926864131306, ; 90: System.dll => 0xd89e9cf3334914ea => 18
	i64 15833606710762714020, ; 91: WeatherForecast.Service.Factory => 0xdbbc4569d440b3a4 => 25
	i64 16154507427712707110, ; 92: System => 0xe03056ea4e39aa26 => 18
	i64 16565028646146589191, ; 93: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 45
	i64 16755018182064898362, ; 94: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 12
	i64 16833383113903931215, ; 95: mscorlib => 0xe99c30c1484d7f4f => 8
	i64 17246169942238899427, ; 96: WeatherForecast.Domain.dll => 0xef56b430372b2ce3 => 23
	i64 17704177640604968747, ; 97: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 39
	i64 17710060891934109755, ; 98: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 38
	i64 17838668724098252521, ; 99: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 15
	i64 18033286150095693206, ; 100: WeatherForecast.Service.Mock => 0xfa431a35856ce596 => 27
	i64 18370042311372477656 ; 101: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0xfeef80274e4094d8 => 13
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [102 x i32] [
	i32 7, i32 40, i32 13, i32 34, i32 50, i32 26, i32 42, i32 12, ; 0..7
	i32 47, i32 14, i32 28, i32 9, i32 30, i32 40, i32 38, i32 9, ; 8..15
	i32 34, i32 37, i32 20, i32 31, i32 29, i32 21, i32 8, i32 27, ; 16..23
	i32 20, i32 28, i32 42, i32 36, i32 1, i32 19, i32 25, i32 0, ; 24..31
	i32 0, i32 11, i32 3, i32 29, i32 2, i32 41, i32 2, i32 16, ; 32..39
	i32 4, i32 11, i32 37, i32 22, i32 33, i32 49, i32 26, i32 48, ; 40..47
	i32 22, i32 48, i32 41, i32 46, i32 6, i32 44, i32 45, i32 36, ; 48..55
	i32 17, i32 5, i32 5, i32 6, i32 17, i32 30, i32 19, i32 31, ; 56..63
	i32 7, i32 50, i32 46, i32 23, i32 33, i32 32, i32 1, i32 16, ; 64..71
	i32 21, i32 10, i32 10, i32 15, i32 14, i32 3, i32 35, i32 39, ; 72..79
	i32 24, i32 47, i32 43, i32 44, i32 24, i32 35, i32 4, i32 43, ; 80..87
	i32 49, i32 32, i32 18, i32 25, i32 18, i32 45, i32 12, i32 8, ; 88..95
	i32 23, i32 39, i32 38, i32 15, i32 27, i32 13 ; 96..101
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="non-leaf" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ a8a26c7b003e2524cc98acb2c2ffc2ddea0f6692"}
!llvm.linker.options = !{}
