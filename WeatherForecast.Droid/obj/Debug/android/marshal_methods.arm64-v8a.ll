; ModuleID = 'obj/Debug/android/marshal_methods.arm64-v8a.ll'
source_filename = "obj/Debug/android/marshal_methods.arm64-v8a.ll"
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
@assembly_image_cache_hashes = local_unnamed_addr constant [194 x i64] [
	i64 120698629574877762, ; 0: Mono.Android => 0x1accec39cafe242 => 13
	i64 210515253464952879, ; 1: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 47
	i64 232391251801502327, ; 2: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 68
	i64 295915112840604065, ; 3: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 69
	i64 634308326490598313, ; 4: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 60
	i64 702024105029695270, ; 5: System.Drawing.Common => 0x9be17343c0e7726 => 82
	i64 720058930071658100, ; 6: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 56
	i64 870603111519317375, ; 7: SQLitePCLRaw.lib.e_sqlite3.android => 0xc1500ead2756d7f => 19
	i64 872800313462103108, ; 8: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 53
	i64 940822596282819491, ; 9: System.Transactions => 0xd0e792aa81923a3 => 80
	i64 1000557547492888992, ; 10: Mono.Security.dll => 0xde2b1c9cba651a0 => 96
	i64 1082286091792029997, ; 11: WeatherForecast.Service.Implementation => 0xf050d775e9c192d => 35
	i64 1120440138749646132, ; 12: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 77
	i64 1301485588176585670, ; 13: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 18
	i64 1315114680217950157, ; 14: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 42
	i64 1425944114962822056, ; 15: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 87
	i64 1518315023656898250, ; 16: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 20
	i64 1624659445732251991, ; 17: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 40
	i64 1628611045998245443, ; 18: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 62
	i64 1636321030536304333, ; 19: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 57
	i64 1691834813727836995, ; 20: WeatherForecast.ViewModel.dll => 0x177a9acca2e30b43 => 37
	i64 1731380447121279447, ; 21: Newtonsoft.Json => 0x18071957e9b889d7 => 15
	i64 1743969030606105336, ; 22: System.Memory.dll => 0x1833d297e88f2af8 => 25
	i64 1795316252682057001, ; 23: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 41
	i64 1836611346387731153, ; 24: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 68
	i64 1875917498431009007, ; 25: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 39
	i64 1981742497975770890, ; 26: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 61
	i64 2133195048986300728, ; 27: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 15
	i64 2136356949452311481, ; 28: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 65
	i64 2165725771938924357, ; 29: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 45
	i64 2262844636196693701, ; 30: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 53
	i64 2284400282711631002, ; 31: System.Web.Services => 0x1fb3d1f42fd4249a => 89
	i64 2287834202362508563, ; 32: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 3
	i64 2329709569556905518, ; 33: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 59
	i64 2337758774805907496, ; 34: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 28
	i64 2470498323731680442, ; 35: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 48
	i64 2479423007379663237, ; 36: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 72
	i64 2497223385847772520, ; 37: System.Runtime => 0x22a7eb7046413568 => 29
	i64 2547086958574651984, ; 38: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 38
	i64 2592350477072141967, ; 39: System.Xml.dll => 0x23f9e10627330e8f => 30
	i64 2624866290265602282, ; 40: mscorlib.dll => 0x246d65fbde2db8ea => 14
	i64 2705679071211637370, ; 41: WeatherForecast.Service.Mock.dll => 0x258c80c7abc74a7a => 36
	i64 2783046991838674048, ; 42: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 28
	i64 2979466917122954881, ; 43: WeatherForecast.ViewModel => 0x295931600f245681 => 37
	i64 3017704767998173186, ; 44: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 77
	i64 3289520064315143713, ; 45: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 58
	i64 3311221304742556517, ; 46: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 27
	i64 3380777203843065839, ; 47: Autofac => 0x2eeaeef46bcde7ef => 7
	i64 3522470458906976663, ; 48: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 70
	i64 3531994851595924923, ; 49: System.Numerics => 0x31042a9aade235bb => 26
	i64 3571415421602489686, ; 50: System.Runtime.dll => 0x319037675df7e556 => 29
	i64 3716579019761409177, ; 51: netstandard.dll => 0x3393f0ed5c8c5c99 => 1
	i64 3723840125652208717, ; 52: WeatherForecast.Service.Factory.dll => 0x33adbcdd51d88c4d => 34
	i64 3727469159507183293, ; 53: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 67
	i64 3857097924448767961, ; 54: WeatherForecast.Droid => 0x35872a2062aa4fd9 => 0
	i64 3966267475168208030, ; 55: System.Memory => 0x370b03412596249e => 25
	i64 4138230823277296240, ; 56: WeatherForecast.Droid.dll => 0x396df3022c03fa70 => 0
	i64 4337444564132831293, ; 57: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 17
	i64 4525561845656915374, ; 58: System.ServiceModel.Internals => 0x3ece06856b710dae => 88
	i64 4636684751163556186, ; 59: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 74
	i64 4647796558262377539, ; 60: Flurl.dll => 0x40804a583b831c43 => 9
	i64 4782108999019072045, ; 61: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 44
	i64 4794310189461587505, ; 62: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 38
	i64 4795410492532947900, ; 63: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 70
	i64 4984589564328971462, ; 64: FluentValidation => 0x452cd1cc9cf28cc6 => 8
	i64 5081566143765835342, ; 65: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 2
	i64 5099468265966638712, ; 66: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 2
	i64 5203618020066742981, ; 67: Xamarin.Essentials => 0x4836f704f0e652c5 => 76
	i64 5205316157927637098, ; 68: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 64
	i64 5376510917114486089, ; 69: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 72
	i64 5404556524862317797, ; 70: FluentValidation.dll => 0x4b00d78658f024e5 => 8
	i64 5408338804355907810, ; 71: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 71
	i64 5446034149219586269, ; 72: System.Diagnostics.Debug => 0x4b94333452e150dd => 6
	i64 5507995362134886206, ; 73: System.Core.dll => 0x4c705499688c873e => 22
	i64 5814793921162055375, ; 74: Flurl.Http.dll => 0x50b24c4360f70ecf => 10
	i64 6183170893902868313, ; 75: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 17
	i64 6319713645133255417, ; 76: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 60
	i64 6401687960814735282, ; 77: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 59
	i64 6504860066809920875, ; 78: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 45
	i64 6507111896991992533, ; 79: WeatherForecast.Config => 0x5a4de7cb4ded0ad5 => 31
	i64 6548213210057960872, ; 80: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 51
	i64 6591024623626361694, ; 81: System.Web.Services.dll => 0x5b7805f9751a1b5e => 89
	i64 6617685658146568858, ; 82: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 91
	i64 6638933136459670863, ; 83: WeatherForecast.Service.Implementation.dll => 0x5c223a83563fa54f => 35
	i64 6659513131007730089, ; 84: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 56
	i64 6876862101832370452, ; 85: System.Xml.Linq => 0x5f6f85a57d108914 => 90
	i64 6894844156784520562, ; 86: System.Numerics.Vectors => 0x5faf683aead1ad72 => 27
	i64 7103753931438454322, ; 87: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 55
	i64 7326607596592359058, ; 88: WeatherForecast.Config.dll => 0x65ad56ca8390e692 => 31
	i64 7338192458477945005, ; 89: System.Reflection => 0x65d67f295d0740ad => 94
	i64 7488575175965059935, ; 90: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 90
	i64 7637365915383206639, ; 91: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 76
	i64 7654504624184590948, ; 92: System.Net.Http => 0x6a3a4366801b8264 => 86
	i64 7735176074855944702, ; 93: Microsoft.CSharp => 0x6b58dda848e391fe => 12
	i64 7820441508502274321, ; 94: System.Data => 0x6c87ca1e14ff8111 => 79
	i64 7836164640616011524, ; 95: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 40
	i64 8044118961405839122, ; 96: System.ComponentModel.Composition => 0x6fa2739369944712 => 85
	i64 8064050204834738623, ; 97: System.Collections.dll => 0x6fe942efa61731bf => 4
	i64 8083354569033831015, ; 98: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 58
	i64 8087206902342787202, ; 99: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 23
	i64 8103644804370223335, ; 100: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 81
	i64 8167236081217502503, ; 101: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 11
	i64 8185542183669246576, ; 102: System.Collections => 0x7198e33f4794aa70 => 4
	i64 8290740647658429042, ; 103: System.Runtime.Extensions => 0x730ea0b15c929a72 => 95
	i64 8601935802264776013, ; 104: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 71
	i64 8626175481042262068, ; 105: Java.Interop => 0x77b654e585b55834 => 11
	i64 8638972117149407195, ; 106: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 12
	i64 8684531736582871431, ; 107: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 84
	i64 8725526185868997716, ; 108: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 23
	i64 9324707631942237306, ; 109: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 41
	i64 9662334977499516867, ; 110: System.Numerics.dll => 0x8617827802b0cfc3 => 26
	i64 9678050649315576968, ; 111: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 48
	i64 9808709177481450983, ; 112: Mono.Android.dll => 0x881f890734e555e7 => 13
	i64 9834056768316610435, ; 113: System.Transactions.dll => 0x8879968718899783 => 80
	i64 9998632235833408227, ; 114: Mono.Security => 0x8ac2470b209ebae3 => 96
	i64 10038780035334861115, ; 115: System.Net.Http.dll => 0x8b50e941206af13b => 86
	i64 10098755056672017518, ; 116: WeatherForecast.Domain => 0x8c25fc37f29d8c6e => 32
	i64 10229024438826829339, ; 117: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 51
	i64 10430153318873392755, ; 118: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 49
	i64 10714184849103829812, ; 119: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 95
	i64 10847732767863316357, ; 120: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 42
	i64 10922724071211577087, ; 121: Autofac.dll => 0x97954fabf42caeff => 7
	i64 10964653383833615866, ; 122: System.Diagnostics.Tracing => 0x982a4628ccaffdfa => 93
	i64 11023048688141570732, ; 123: System.Core => 0x98f9bc61168392ac => 22
	i64 11037814507248023548, ; 124: System.Xml => 0x992e31d0412bf7fc => 30
	i64 11162124722117608902, ; 125: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 75
	i64 11340910727871153756, ; 126: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 50
	i64 11392833485892708388, ; 127: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 66
	i64 11485890710487134646, ; 128: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 92
	i64 11529969570048099689, ; 129: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 75
	i64 11580057168383206117, ; 130: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 39
	i64 11597940890313164233, ; 131: netstandard => 0xa0f429ca8d1805c9 => 1
	i64 11672361001936329215, ; 132: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 55
	i64 11739066727115742305, ; 133: SQLite-net.dll => 0xa2e98afdf8575c61 => 16
	i64 11806260347154423189, ; 134: SQLite-net => 0xa3d8433bc5eb5d95 => 16
	i64 12102847907131387746, ; 135: System.Buffers => 0xa7f5f40c43256f62 => 21
	i64 12137774235383566651, ; 136: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 73
	i64 12279246230491828964, ; 137: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 20
	i64 12350364943561294840, ; 138: Flurl => 0xab654f7b2b6883f8 => 9
	i64 12451044538927396471, ; 139: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 54
	i64 12466513435562512481, ; 140: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 63
	i64 12487638416075308985, ; 141: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 52
	i64 12538491095302438457, ; 142: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 46
	i64 12550732019250633519, ; 143: System.IO.Compression => 0xae2d28465e8e1b2f => 83
	i64 12700543734426720211, ; 144: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 47
	i64 12800337691398482530, ; 145: WeatherForecast.Service.Contract.dll => 0xb1a3ef4facd9aa62 => 33
	i64 12963446364377008305, ; 146: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 82
	i64 13370592475155966277, ; 147: System.Runtime.Serialization => 0xb98de304062ea945 => 87
	i64 13401370062847626945, ; 148: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 73
	i64 13454009404024712428, ; 149: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 78
	i64 13491513212026656886, ; 150: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 43
	i64 13572454107664307259, ; 151: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 67
	i64 13647894001087880694, ; 152: System.Data.dll => 0xbd670f48cb071df6 => 79
	i64 13737534230787271062, ; 153: WeatherForecast.Service.Contract => 0xbea586992bd82996 => 33
	i64 13959074834287824816, ; 154: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 54
	i64 14124974489674258913, ; 155: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 46
	i64 14125464355221830302, ; 156: System.Threading.dll => 0xc407bafdbc707a9e => 5
	i64 14172845254133543601, ; 157: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 65
	i64 14261073672896646636, ; 158: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 66
	i64 14327695147300244862, ; 159: System.Reflection.dll => 0xc6d632d338eb4d7e => 94
	i64 14626636157077593891, ; 160: Flurl.Http => 0xcafc4016f17e9f23 => 10
	i64 14644440854989303794, ; 161: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 64
	i64 14792063746108907174, ; 162: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 78
	i64 14852515768018889994, ; 163: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 50
	i64 14935719434541007538, ; 164: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 91
	i64 14987728460634540364, ; 165: System.IO.Compression.dll => 0xcfff1ba06622494c => 83
	i64 14988210264188246988, ; 166: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 52
	i64 15370334346939861994, ; 167: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 49
	i64 15582737692548360875, ; 168: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 62
	i64 15609085926864131306, ; 169: System.dll => 0xd89e9cf3334914ea => 24
	i64 15777549416145007739, ; 170: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 69
	i64 15833606710762714020, ; 171: WeatherForecast.Service.Factory => 0xdbbc4569d440b3a4 => 34
	i64 16154507427712707110, ; 172: System => 0xe03056ea4e39aa26 => 24
	i64 16565028646146589191, ; 173: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 85
	i64 16755018182064898362, ; 174: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 18
	i64 16822611501064131242, ; 175: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 81
	i64 16833383113903931215, ; 176: mscorlib => 0xe99c30c1484d7f4f => 14
	i64 17037200463775726619, ; 177: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 57
	i64 17246169942238899427, ; 178: WeatherForecast.Domain.dll => 0xef56b430372b2ce3 => 32
	i64 17333249706306540043, ; 179: System.Diagnostics.Tracing.dll => 0xf08c12c5bb8b920b => 93
	i64 17544493274320527064, ; 180: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 44
	i64 17685921127322830888, ; 181: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 6
	i64 17704177640604968747, ; 182: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 63
	i64 17710060891934109755, ; 183: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 61
	i64 17712670374920797664, ; 184: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 92
	i64 17838668724098252521, ; 185: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 21
	i64 17928294245072900555, ; 186: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 84
	i64 18025913125965088385, ; 187: System.Threading => 0xfa28e87b91334681 => 5
	i64 18033286150095693206, ; 188: WeatherForecast.Service.Mock => 0xfa431a35856ce596 => 36
	i64 18116111925905154859, ; 189: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 43
	i64 18129453464017766560, ; 190: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 88
	i64 18245806341561545090, ; 191: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 3
	i64 18370042311372477656, ; 192: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0xfeef80274e4094d8 => 19
	i64 18380184030268848184 ; 193: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 74
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [194 x i32] [
	i32 13, i32 47, i32 68, i32 69, i32 60, i32 82, i32 56, i32 19, ; 0..7
	i32 53, i32 80, i32 96, i32 35, i32 77, i32 18, i32 42, i32 87, ; 8..15
	i32 20, i32 40, i32 62, i32 57, i32 37, i32 15, i32 25, i32 41, ; 16..23
	i32 68, i32 39, i32 61, i32 15, i32 65, i32 45, i32 53, i32 89, ; 24..31
	i32 3, i32 59, i32 28, i32 48, i32 72, i32 29, i32 38, i32 30, ; 32..39
	i32 14, i32 36, i32 28, i32 37, i32 77, i32 58, i32 27, i32 7, ; 40..47
	i32 70, i32 26, i32 29, i32 1, i32 34, i32 67, i32 0, i32 25, ; 48..55
	i32 0, i32 17, i32 88, i32 74, i32 9, i32 44, i32 38, i32 70, ; 56..63
	i32 8, i32 2, i32 2, i32 76, i32 64, i32 72, i32 8, i32 71, ; 64..71
	i32 6, i32 22, i32 10, i32 17, i32 60, i32 59, i32 45, i32 31, ; 72..79
	i32 51, i32 89, i32 91, i32 35, i32 56, i32 90, i32 27, i32 55, ; 80..87
	i32 31, i32 94, i32 90, i32 76, i32 86, i32 12, i32 79, i32 40, ; 88..95
	i32 85, i32 4, i32 58, i32 23, i32 81, i32 11, i32 4, i32 95, ; 96..103
	i32 71, i32 11, i32 12, i32 84, i32 23, i32 41, i32 26, i32 48, ; 104..111
	i32 13, i32 80, i32 96, i32 86, i32 32, i32 51, i32 49, i32 95, ; 112..119
	i32 42, i32 7, i32 93, i32 22, i32 30, i32 75, i32 50, i32 66, ; 120..127
	i32 92, i32 75, i32 39, i32 1, i32 55, i32 16, i32 16, i32 21, ; 128..135
	i32 73, i32 20, i32 9, i32 54, i32 63, i32 52, i32 46, i32 83, ; 136..143
	i32 47, i32 33, i32 82, i32 87, i32 73, i32 78, i32 43, i32 67, ; 144..151
	i32 79, i32 33, i32 54, i32 46, i32 5, i32 65, i32 66, i32 94, ; 152..159
	i32 10, i32 64, i32 78, i32 50, i32 91, i32 83, i32 52, i32 49, ; 160..167
	i32 62, i32 24, i32 69, i32 34, i32 24, i32 85, i32 18, i32 81, ; 168..175
	i32 14, i32 57, i32 32, i32 93, i32 44, i32 6, i32 63, i32 61, ; 176..183
	i32 92, i32 21, i32 84, i32 5, i32 36, i32 43, i32 88, i32 3, ; 184..191
	i32 19, i32 74 ; 192..193
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
