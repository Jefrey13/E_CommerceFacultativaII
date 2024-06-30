; ModuleID = 'obj\Debug\130\android\marshal_methods.arm64-v8a.ll'
source_filename = "obj\Debug\130\android\marshal_methods.arm64-v8a.ll"
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
@assembly_image_cache_hashes = local_unnamed_addr constant [324 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 80
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 25
	i64 196720943101637631, ; 2: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 155
	i64 210515253464952879, ; 3: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 69
	i64 232391251801502327, ; 4: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 107
	i64 263803244706540312, ; 5: Rg.Plugins.Popup.dll => 0x3a937a743542b18 => 32
	i64 295915112840604065, ; 6: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 108
	i64 316157742385208084, ; 7: Xamarin.AndroidX.Core.Core.Ktx.dll => 0x46337caa7dc1b14 => 74
	i64 464346026994987652, ; 8: System.Reactive.dll => 0x671b04057e67284 => 51
	i64 484766683456698147, ; 9: GalaSoft.MvvmLight.Extras.dll => 0x6ba3cbaee617723 => 17
	i64 634308326490598313, ; 10: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 92
	i64 702024105029695270, ; 11: System.Drawing.Common => 0x9be17343c0e7726 => 139
	i64 720058930071658100, ; 12: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 85
	i64 747784810460684022, ; 13: Xamarin.PayPal.Android.dll => 0xa60aa52bbf11ef6 => 134
	i64 799765834175365804, ; 14: System.ComponentModel.dll => 0xb1956c9f18442ac => 6
	i64 870603111519317375, ; 15: SQLitePCLRaw.lib.e_sqlite3.android => 0xc1500ead2756d7f => 39
	i64 872800313462103108, ; 16: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 79
	i64 940822596282819491, ; 17: System.Transactions => 0xd0e792aa81923a3 => 137
	i64 996343623809489702, ; 18: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 122
	i64 1000557547492888992, ; 19: Mono.Security.dll => 0xde2b1c9cba651a0 => 161
	i64 1109734286729302717, ; 20: PayPal.Forms.dll => 0xf669174439252bd => 29
	i64 1120440138749646132, ; 21: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 124
	i64 1301485588176585670, ; 22: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 38
	i64 1315114680217950157, ; 23: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 64
	i64 1425944114962822056, ; 24: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 9
	i64 1518315023656898250, ; 25: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 40
	i64 1624659445732251991, ; 26: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 62
	i64 1628611045998245443, ; 27: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 94
	i64 1636321030536304333, ; 28: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 86
	i64 1731380447121279447, ; 29: Newtonsoft.Json => 0x18071957e9b889d7 => 27
	i64 1743969030606105336, ; 30: System.Memory.dll => 0x1833d297e88f2af8 => 48
	i64 1795316252682057001, ; 31: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 63
	i64 1805568393567229058, ; 32: eCommerce.Android => 0x190eaae33c3f5482 => 0
	i64 1836611346387731153, ; 33: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 107
	i64 1865037103900624886, ; 34: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 22
	i64 1875917498431009007, ; 35: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 60
	i64 1981742497975770890, ; 36: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 93
	i64 1982045842314265362, ; 37: Stripe.net => 0x1b81a43137ae8312 => 43
	i64 2040001226662520565, ; 38: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 7
	i64 2064708342624596306, ; 39: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 129
	i64 2133195048986300728, ; 40: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 27
	i64 2136356949452311481, ; 41: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 98
	i64 2165725771938924357, ; 42: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 67
	i64 2262844636196693701, ; 43: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 79
	i64 2284400282711631002, ; 44: System.Web.Services => 0x1fb3d1f42fd4249a => 143
	i64 2287887973817120656, ; 45: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 144
	i64 2304837677853103545, ; 46: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0x1ffc6da80d5ed5b9 => 106
	i64 2329709569556905518, ; 47: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 89
	i64 2337758774805907496, ; 48: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 52
	i64 2470498323731680442, ; 49: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 73
	i64 2479423007379663237, ; 50: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 113
	i64 2497223385847772520, ; 51: System.Runtime => 0x22a7eb7046413568 => 53
	i64 2547086958574651984, ; 52: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 59
	i64 2592350477072141967, ; 53: System.Xml.dll => 0x23f9e10627330e8f => 57
	i64 2624866290265602282, ; 54: mscorlib.dll => 0x246d65fbde2db8ea => 26
	i64 2625416601812051405, ; 55: GalaSoft.MvvmLight.dll => 0x246f5a7d426ba5cd => 16
	i64 2656907746661064104, ; 56: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 24
	i64 2694427813909235223, ; 57: Xamarin.AndroidX.Preference.dll => 0x256487d230fe0617 => 102
	i64 2783046991838674048, ; 58: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 52
	i64 2787234703088983483, ; 59: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 109
	i64 2792037999184824868, ; 60: iTextSharp.LGPLv2.Core => 0x26bf4fc474cdca24 => 19
	i64 2815524396660695947, ; 61: System.Security.AccessControl => 0x2712c0857f68238b => 54
	i64 2851879596360956261, ; 62: System.Configuration.ConfigurationManager => 0x2793e9620b477965 => 45
	i64 2960931600190307745, ; 63: Xamarin.Forms.Core => 0x2917579a49927da1 => 119
	i64 3017704767998173186, ; 64: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 124
	i64 3033821854685683115, ; 65: XamarinFastEntry.Behaviors.dll => 0x2a1a4ce7285b5dab => 135
	i64 3171992396844006720, ; 66: Square.OkIO => 0x2c052e476c207d40 => 42
	i64 3186464017472903865, ; 67: SQLite.Net.Platform.XamarinAndroid.dll => 0x2c3898242b095ab9 => 36
	i64 3289520064315143713, ; 68: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 88
	i64 3303437397778967116, ; 69: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 61
	i64 3311221304742556517, ; 70: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 50
	i64 3344514922410554693, ; 71: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 132
	i64 3445032107738636459, ; 72: Xamarin.PayPal.Android.CardIO.dll => 0x2fcf36730d93a0ab => 133
	i64 3493805808809882663, ; 73: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 111
	i64 3522470458906976663, ; 74: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 110
	i64 3530267759768250294, ; 75: SQLite.Net.Platform.XamarinAndroid => 0x30fe07d2c70027b6 => 36
	i64 3531994851595924923, ; 76: System.Numerics => 0x31042a9aade235bb => 49
	i64 3571415421602489686, ; 77: System.Runtime.dll => 0x319037675df7e556 => 53
	i64 3716579019761409177, ; 78: netstandard.dll => 0x3393f0ed5c8c5c99 => 1
	i64 3727469159507183293, ; 79: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 105
	i64 3772598417116884899, ; 80: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 80
	i64 3966267475168208030, ; 81: System.Memory => 0x370b03412596249e => 48
	i64 4009997192427317104, ; 82: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 149
	i64 4154383907710350974, ; 83: System.ComponentModel => 0x39a7562737acb67e => 6
	i64 4187479170553454871, ; 84: System.Linq.Expressions => 0x3a1cea1e912fa117 => 155
	i64 4201423742386704971, ; 85: Xamarin.AndroidX.Core.Core.Ktx => 0x3a4e74a233da124b => 74
	i64 4337444564132831293, ; 86: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 37
	i64 4393287946603171165, ; 87: Plugin.Toast => 0x3cf8181c5d498d5d => 31
	i64 4525561845656915374, ; 88: System.ServiceModel.Internals => 0x3ece06856b710dae => 145
	i64 4636684751163556186, ; 89: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 115
	i64 4643933514537797474, ; 90: PayPal.Forms.Abstractions => 0x407290ed468e8762 => 28
	i64 4708653840312162517, ; 91: Square.OkHttp3 => 0x41587fb86215d8d5 => 41
	i64 4743821336939966868, ; 92: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 2
	i64 4759461199762736555, ; 93: Xamarin.AndroidX.Lifecycle.Process.dll => 0x420d00be961cc5ab => 91
	i64 4782108999019072045, ; 94: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 66
	i64 4794310189461587505, ; 95: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 59
	i64 4795410492532947900, ; 96: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 110
	i64 5081566143765835342, ; 97: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 5
	i64 5099468265966638712, ; 98: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 5
	i64 5142919913060024034, ; 99: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 121
	i64 5187827699062344575, ; 100: Plugin.Toast.Abstractions.dll => 0x47feddce568b0b7f => 30
	i64 5203618020066742981, ; 101: Xamarin.Essentials => 0x4836f704f0e652c5 => 118
	i64 5205316157927637098, ; 102: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 96
	i64 5348796042099802469, ; 103: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 97
	i64 5375264076663995773, ; 104: Xamarin.Forms.PancakeView => 0x4a98c632c779bd7d => 120
	i64 5376510917114486089, ; 105: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 113
	i64 5408338804355907810, ; 106: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 112
	i64 5446034149219586269, ; 107: System.Diagnostics.Debug => 0x4b94333452e150dd => 146
	i64 5451019430259338467, ; 108: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 72
	i64 5507995362134886206, ; 109: System.Core.dll => 0x4c705499688c873e => 46
	i64 5692067934154308417, ; 110: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 117
	i64 5705946365327413316, ; 111: iTextSharp.LGPLv2.Core.dll => 0x4f2f97fce4c59044 => 19
	i64 5757522595884336624, ; 112: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 70
	i64 5814345312393086621, ; 113: Xamarin.AndroidX.Preference => 0x50b0b44182a5c69d => 102
	i64 5838482455892408505, ; 114: GalaSoft.MvvmLight.Platform => 0x510674dc2ad138b9 => 18
	i64 5896680224035167651, ; 115: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 90
	i64 6085203216496545422, ; 116: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 122
	i64 6086316965293125504, ; 117: FormsViewGroup.dll => 0x5476f10882baef80 => 15
	i64 6183170893902868313, ; 118: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 37
	i64 6218967553231149354, ; 119: Firebase.Auth.dll => 0x564e360a4805d92a => 13
	i64 6319713645133255417, ; 120: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 92
	i64 6401687960814735282, ; 121: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 89
	i64 6504860066809920875, ; 122: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 67
	i64 6548213210057960872, ; 123: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 77
	i64 6591024623626361694, ; 124: System.Web.Services.dll => 0x5b7805f9751a1b5e => 143
	i64 6617685658146568858, ; 125: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 157
	i64 6659513131007730089, ; 126: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 85
	i64 6671798237668743565, ; 127: SkiaSharp => 0x5c96fd260152998d => 33
	i64 6876862101832370452, ; 128: System.Xml.Linq => 0x5f6f85a57d108914 => 58
	i64 6894844156784520562, ; 129: System.Numerics.Vectors => 0x5faf683aead1ad72 => 50
	i64 7036436454368433159, ; 130: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 87
	i64 7103753931438454322, ; 131: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 84
	i64 7141577505875122296, ; 132: System.Runtime.InteropServices.WindowsRuntime.dll => 0x631bfae7659b5878 => 8
	i64 7270811800166795866, ; 133: System.Linq => 0x64e71ccf51a90a5a => 151
	i64 7338192458477945005, ; 134: System.Reflection => 0x65d67f295d0740ad => 147
	i64 7488575175965059935, ; 135: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 58
	i64 7489048572193775167, ; 136: System.ObjectModel => 0x67ee71ff6b419e3f => 154
	i64 7602111570124318452, ; 137: System.Reactive => 0x698020320025a6f4 => 51
	i64 7635363394907363464, ; 138: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 119
	i64 7637365915383206639, ; 139: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 118
	i64 7654504624184590948, ; 140: System.Net.Http => 0x6a3a4366801b8264 => 3
	i64 7660336384445167946, ; 141: GalaSoft.MvvmLight.Extras => 0x6a4efb5afedab94a => 17
	i64 7735352534559001595, ; 142: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 128
	i64 7820441508502274321, ; 143: System.Data => 0x6c87ca1e14ff8111 => 136
	i64 7836164640616011524, ; 144: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 62
	i64 8003335089973143038, ; 145: Square.OkHttp3.dll => 0x6f118edc6044a5fe => 41
	i64 8044118961405839122, ; 146: System.ComponentModel.Composition => 0x6fa2739369944712 => 142
	i64 8064050204834738623, ; 147: System.Collections.dll => 0x6fe942efa61731bf => 150
	i64 8083354569033831015, ; 148: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 88
	i64 8103644804370223335, ; 149: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 138
	i64 8113615946733131500, ; 150: System.Reflection.Extensions => 0x70995ab73cf916ec => 4
	i64 8167236081217502503, ; 151: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 20
	i64 8185542183669246576, ; 152: System.Collections => 0x7198e33f4794aa70 => 150
	i64 8187640529827139739, ; 153: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 131
	i64 8290740647658429042, ; 154: System.Runtime.Extensions => 0x730ea0b15c929a72 => 158
	i64 8318905602908530212, ; 155: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 144
	i64 8398329775253868912, ; 156: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 71
	i64 8400357532724379117, ; 157: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 101
	i64 8426919725312979251, ; 158: Xamarin.AndroidX.Lifecycle.Process => 0x74f26ed7aa033133 => 91
	i64 8476857680833348370, ; 159: System.Security.Permissions.dll => 0x75a3d925fd9d0312 => 55
	i64 8598790081731763592, ; 160: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x77550a055fc61d88 => 82
	i64 8601935802264776013, ; 161: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 112
	i64 8609060182490045521, ; 162: Square.OkIO.dll => 0x7779869f8b475c51 => 42
	i64 8626175481042262068, ; 163: Java.Interop => 0x77b654e585b55834 => 20
	i64 8639588376636138208, ; 164: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 100
	i64 8684531736582871431, ; 165: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 141
	i64 8702320156596882678, ; 166: Firebase.dll => 0x78c4da1357adccf6 => 14
	i64 8853378295825400934, ; 167: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 127
	i64 8951477988056063522, ; 168: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 104
	i64 9057635389615298436, ; 169: LiteDB => 0x7db32f65bf06d784 => 21
	i64 9064531907877671276, ; 170: XamarinFastEntry.Behaviors => 0x7dcbafbe883e116c => 135
	i64 9286073997824813334, ; 171: BouncyCastle.Cryptography => 0x80dec319ee56e916 => 10
	i64 9296667808972889535, ; 172: LiteDB.dll => 0x8104661dcca35dbf => 21
	i64 9312692141327339315, ; 173: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 117
	i64 9324707631942237306, ; 174: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 63
	i64 9662334977499516867, ; 175: System.Numerics.dll => 0x8617827802b0cfc3 => 49
	i64 9678050649315576968, ; 176: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 73
	i64 9711637524876806384, ; 177: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 97
	i64 9720113355794297314, ; 178: CommonServiceLocator => 0x86e4c79904a631e2 => 11
	i64 9808709177481450983, ; 179: Mono.Android.dll => 0x881f890734e555e7 => 25
	i64 9825649861376906464, ; 180: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 70
	i64 9834056768316610435, ; 181: System.Transactions.dll => 0x8879968718899783 => 137
	i64 9907349773706910547, ; 182: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x897dfa20b758db53 => 82
	i64 9998632235833408227, ; 183: Mono.Security => 0x8ac2470b209ebae3 => 161
	i64 10037412179342310022, ; 184: CommonServiceLocator.dll => 0x8b4c0d3255e0ba86 => 11
	i64 10038780035334861115, ; 185: System.Net.Http.dll => 0x8b50e941206af13b => 3
	i64 10144742755892837524, ; 186: Firebase => 0x8cc95dc98eb5bc94 => 14
	i64 10226222362177979215, ; 187: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 129
	i64 10229024438826829339, ; 188: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 77
	i64 10321854143672141184, ; 189: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 126
	i64 10360651442923773544, ; 190: System.Text.Encoding => 0x8fc86d98211c1e68 => 153
	i64 10376576884623852283, ; 191: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 111
	i64 10406448008575299332, ; 192: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 132
	i64 10430153318873392755, ; 193: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 75
	i64 10447083246144586668, ; 194: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 22
	i64 10566960649245365243, ; 195: System.Globalization.dll => 0x92a562b96dcd13fb => 156
	i64 10714184849103829812, ; 196: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 158
	i64 10847732767863316357, ; 197: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 64
	i64 11023048688141570732, ; 198: System.Core => 0x98f9bc61168392ac => 46
	i64 11037814507248023548, ; 199: System.Xml => 0x992e31d0412bf7fc => 57
	i64 11162124722117608902, ; 200: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 116
	i64 11253207298301343314, ; 201: Plugin.Toast.dll => 0x9c2b6c6a6f15b652 => 31
	i64 11340910727871153756, ; 202: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 76
	i64 11341245327015630248, ; 203: System.Configuration.ConfigurationManager.dll => 0x9d643289535355a8 => 45
	i64 11392833485892708388, ; 204: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 103
	i64 11529969570048099689, ; 205: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 116
	i64 11578238080964724296, ; 206: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 87
	i64 11580057168383206117, ; 207: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 60
	i64 11591352189662810718, ; 208: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 109
	i64 11597940890313164233, ; 209: netstandard => 0xa0f429ca8d1805c9 => 1
	i64 11672361001936329215, ; 210: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 84
	i64 11739066727115742305, ; 211: SQLite-net.dll => 0xa2e98afdf8575c61 => 34
	i64 11743665907891708234, ; 212: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 148
	i64 11806260347154423189, ; 213: SQLite-net => 0xa3d8433bc5eb5d95 => 34
	i64 11931645068584629408, ; 214: Plugin.Toast.Abstractions => 0xa595b7f92b0734a0 => 30
	i64 12011556116648931059, ; 215: System.Security.Cryptography.ProtectedData => 0xa6b19ea5ec87aef3 => 159
	i64 12063623837170009990, ; 216: System.Security => 0xa76a99f6ce740786 => 160
	i64 12102847907131387746, ; 217: System.Buffers => 0xa7f5f40c43256f62 => 44
	i64 12116516281818970958, ; 218: SQLite.Net => 0xa826835cbd0e7b4e => 35
	i64 12123043025855404482, ; 219: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 4
	i64 12137774235383566651, ; 220: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 114
	i64 12201331334810686224, ; 221: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 149
	i64 12279246230491828964, ; 222: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 40
	i64 12451044538927396471, ; 223: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 83
	i64 12466513435562512481, ; 224: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 95
	i64 12487638416075308985, ; 225: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 78
	i64 12528155905152483962, ; 226: Firebase.Auth => 0xaddcf36b3153827a => 13
	i64 12538491095302438457, ; 227: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 68
	i64 12550732019250633519, ; 228: System.IO.Compression => 0xae2d28465e8e1b2f => 140
	i64 12700543734426720211, ; 229: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 69
	i64 12828192437253469131, ; 230: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 130
	i64 12963446364377008305, ; 231: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 139
	i64 13065646651773885982, ; 232: SQLite.Net.dll => 0xb5528067afc11e1e => 35
	i64 13129914918964716986, ; 233: Xamarin.AndroidX.Emoji2.dll => 0xb636d40db3fe65ba => 81
	i64 13162471042547327635, ; 234: System.Security.Permissions => 0xb6aa7dace9662293 => 55
	i64 13182902642299010296, ; 235: eCommerce.dll => 0xb6f3141b6eca7cf8 => 12
	i64 13185305731832515997, ; 236: GalaSoft.MvvmLight.Platform.dll => 0xb6fb9db450cc8d9d => 18
	i64 13370592475155966277, ; 237: System.Runtime.Serialization => 0xb98de304062ea945 => 9
	i64 13401370062847626945, ; 238: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 114
	i64 13404347523447273790, ; 239: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 71
	i64 13454009404024712428, ; 240: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 125
	i64 13465488254036897740, ; 241: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 128
	i64 13491513212026656886, ; 242: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 65
	i64 13572454107664307259, ; 243: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 105
	i64 13647894001087880694, ; 244: System.Data.dll => 0xbd670f48cb071df6 => 136
	i64 13710614125866346983, ; 245: System.Security.AccessControl.dll => 0xbe45e2e7d0b769e7 => 54
	i64 13828521679616088467, ; 246: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 127
	i64 13959074834287824816, ; 247: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 83
	i64 13967638549803255703, ; 248: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 121
	i64 14124974489674258913, ; 249: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 68
	i64 14125464355221830302, ; 250: System.Threading.dll => 0xc407bafdbc707a9e => 152
	i64 14172845254133543601, ; 251: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 98
	i64 14261073672896646636, ; 252: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 103
	i64 14327695147300244862, ; 253: System.Reflection.dll => 0xc6d632d338eb4d7e => 147
	i64 14486659737292545672, ; 254: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 90
	i64 14495724990987328804, ; 255: Xamarin.AndroidX.ResourceInspection.Annotation => 0xc92b2913e18d5d24 => 106
	i64 14644440854989303794, ; 256: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 96
	i64 14669215534098758659, ; 257: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 24
	i64 14779222952369475268, ; 258: PayPal.Forms => 0xcd1a58f8b4484ec4 => 29
	i64 14792063746108907174, ; 259: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 125
	i64 14852515768018889994, ; 260: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 76
	i64 14912225920358050525, ; 261: System.Security.Principal.Windows => 0xcef2de7759506add => 56
	i64 14935719434541007538, ; 262: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 157
	i64 14954917835170835695, ; 263: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 23
	i64 14987728460634540364, ; 264: System.IO.Compression.dll => 0xcfff1ba06622494c => 140
	i64 14988210264188246988, ; 265: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 78
	i64 15076659072870671916, ; 266: System.ObjectModel.dll => 0xd13b0d8c1620662c => 154
	i64 15079074247967634472, ; 267: Stripe.net.dll => 0xd143a222dbd9f428 => 43
	i64 15133485256822086103, ; 268: System.Linq.dll => 0xd204f0a9127dd9d7 => 151
	i64 15150743910298169673, ; 269: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 104
	i64 15246188921780338824, ; 270: Xamarin.PayPal.Android.CardIO => 0xd395580bed368088 => 133
	i64 15279429628684179188, ; 271: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 131
	i64 15370334346939861994, ; 272: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 75
	i64 15391712275433856905, ; 273: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 23
	i64 15526743539506359484, ; 274: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 153
	i64 15582737692548360875, ; 275: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 94
	i64 15597610680104566038, ; 276: eCommerce.Android.dll => 0xd875d8461c78bd16 => 0
	i64 15609085926864131306, ; 277: System.dll => 0xd89e9cf3334914ea => 47
	i64 15620612276725577442, ; 278: BouncyCastle.Cryptography.dll => 0xd8c7901aa85576e2 => 10
	i64 15777549416145007739, ; 279: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 108
	i64 15810740023422282496, ; 280: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 123
	i64 15817206913877585035, ; 281: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 148
	i64 15935691931953250453, ; 282: PayPal.Forms.Abstractions.dll => 0xdd26f3619621c095 => 28
	i64 15963349826457351533, ; 283: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 7
	i64 16154507427712707110, ; 284: System => 0xe03056ea4e39aa26 => 47
	i64 16324796876805858114, ; 285: SkiaSharp.dll => 0xe28d5444586b6342 => 33
	i64 16337011941688632206, ; 286: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 56
	i64 16423015068819898779, ; 287: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 130
	i64 16563225994086229548, ; 288: eCommerce => 0xe5dc66493006a62c => 12
	i64 16565028646146589191, ; 289: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 142
	i64 16621146507174665210, ; 290: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 72
	i64 16677317093839702854, ; 291: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 101
	i64 16755018182064898362, ; 292: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 38
	i64 16822611501064131242, ; 293: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 138
	i64 16833383113903931215, ; 294: mscorlib => 0xe99c30c1484d7f4f => 26
	i64 16866861824412579935, ; 295: System.Runtime.InteropServices.WindowsRuntime => 0xea132176ffb5785f => 8
	i64 17024911836938395553, ; 296: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 61
	i64 17031351772568316411, ; 297: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 99
	i64 17037200463775726619, ; 298: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 86
	i64 17187273293601214786, ; 299: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 2
	i64 17219853329126902179, ; 300: Xamarin.PayPal.Android => 0xeef9355e3eefc9a3 => 134
	i64 17285063141349522879, ; 301: Rg.Plugins.Popup => 0xefe0e158cc55fdbf => 32
	i64 17523946658117960076, ; 302: System.Security.Cryptography.ProtectedData.dll => 0xf33190a3c403c18c => 159
	i64 17544493274320527064, ; 303: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 66
	i64 17570464675455066222, ; 304: GalaSoft.MvvmLight => 0xf3d6d487af0c606e => 16
	i64 17627500474728259406, ; 305: System.Globalization => 0xf4a176498a351f4e => 156
	i64 17685921127322830888, ; 306: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 146
	i64 17704177640604968747, ; 307: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 95
	i64 17710060891934109755, ; 308: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 93
	i64 17827832363535584534, ; 309: Xamarin.Forms.PancakeView.dll => 0xf7692f1427c04d16 => 120
	i64 17838668724098252521, ; 310: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 44
	i64 17882897186074144999, ; 311: FormsViewGroup => 0xf82cd03e3ac830e7 => 15
	i64 17891337867145587222, ; 312: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 126
	i64 17892495832318972303, ; 313: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 123
	i64 17928294245072900555, ; 314: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 141
	i64 18025913125965088385, ; 315: System.Threading => 0xfa28e87b91334681 => 152
	i64 18116111925905154859, ; 316: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 65
	i64 18121036031235206392, ; 317: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 99
	i64 18129453464017766560, ; 318: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 145
	i64 18260797123374478311, ; 319: Xamarin.AndroidX.Emoji2 => 0xfd6b623bde35f3e7 => 81
	i64 18305135509493619199, ; 320: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 100
	i64 18318849532986632368, ; 321: System.Security.dll => 0xfe39a097c37fa8b0 => 160
	i64 18370042311372477656, ; 322: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0xfeef80274e4094d8 => 39
	i64 18380184030268848184 ; 323: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 115
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [324 x i32] [
	i32 80, i32 25, i32 155, i32 69, i32 107, i32 32, i32 108, i32 74, ; 0..7
	i32 51, i32 17, i32 92, i32 139, i32 85, i32 134, i32 6, i32 39, ; 8..15
	i32 79, i32 137, i32 122, i32 161, i32 29, i32 124, i32 38, i32 64, ; 16..23
	i32 9, i32 40, i32 62, i32 94, i32 86, i32 27, i32 48, i32 63, ; 24..31
	i32 0, i32 107, i32 22, i32 60, i32 93, i32 43, i32 7, i32 129, ; 32..39
	i32 27, i32 98, i32 67, i32 79, i32 143, i32 144, i32 106, i32 89, ; 40..47
	i32 52, i32 73, i32 113, i32 53, i32 59, i32 57, i32 26, i32 16, ; 48..55
	i32 24, i32 102, i32 52, i32 109, i32 19, i32 54, i32 45, i32 119, ; 56..63
	i32 124, i32 135, i32 42, i32 36, i32 88, i32 61, i32 50, i32 132, ; 64..71
	i32 133, i32 111, i32 110, i32 36, i32 49, i32 53, i32 1, i32 105, ; 72..79
	i32 80, i32 48, i32 149, i32 6, i32 155, i32 74, i32 37, i32 31, ; 80..87
	i32 145, i32 115, i32 28, i32 41, i32 2, i32 91, i32 66, i32 59, ; 88..95
	i32 110, i32 5, i32 5, i32 121, i32 30, i32 118, i32 96, i32 97, ; 96..103
	i32 120, i32 113, i32 112, i32 146, i32 72, i32 46, i32 117, i32 19, ; 104..111
	i32 70, i32 102, i32 18, i32 90, i32 122, i32 15, i32 37, i32 13, ; 112..119
	i32 92, i32 89, i32 67, i32 77, i32 143, i32 157, i32 85, i32 33, ; 120..127
	i32 58, i32 50, i32 87, i32 84, i32 8, i32 151, i32 147, i32 58, ; 128..135
	i32 154, i32 51, i32 119, i32 118, i32 3, i32 17, i32 128, i32 136, ; 136..143
	i32 62, i32 41, i32 142, i32 150, i32 88, i32 138, i32 4, i32 20, ; 144..151
	i32 150, i32 131, i32 158, i32 144, i32 71, i32 101, i32 91, i32 55, ; 152..159
	i32 82, i32 112, i32 42, i32 20, i32 100, i32 141, i32 14, i32 127, ; 160..167
	i32 104, i32 21, i32 135, i32 10, i32 21, i32 117, i32 63, i32 49, ; 168..175
	i32 73, i32 97, i32 11, i32 25, i32 70, i32 137, i32 82, i32 161, ; 176..183
	i32 11, i32 3, i32 14, i32 129, i32 77, i32 126, i32 153, i32 111, ; 184..191
	i32 132, i32 75, i32 22, i32 156, i32 158, i32 64, i32 46, i32 57, ; 192..199
	i32 116, i32 31, i32 76, i32 45, i32 103, i32 116, i32 87, i32 60, ; 200..207
	i32 109, i32 1, i32 84, i32 34, i32 148, i32 34, i32 30, i32 159, ; 208..215
	i32 160, i32 44, i32 35, i32 4, i32 114, i32 149, i32 40, i32 83, ; 216..223
	i32 95, i32 78, i32 13, i32 68, i32 140, i32 69, i32 130, i32 139, ; 224..231
	i32 35, i32 81, i32 55, i32 12, i32 18, i32 9, i32 114, i32 71, ; 232..239
	i32 125, i32 128, i32 65, i32 105, i32 136, i32 54, i32 127, i32 83, ; 240..247
	i32 121, i32 68, i32 152, i32 98, i32 103, i32 147, i32 90, i32 106, ; 248..255
	i32 96, i32 24, i32 29, i32 125, i32 76, i32 56, i32 157, i32 23, ; 256..263
	i32 140, i32 78, i32 154, i32 43, i32 151, i32 104, i32 133, i32 131, ; 264..271
	i32 75, i32 23, i32 153, i32 94, i32 0, i32 47, i32 10, i32 108, ; 272..279
	i32 123, i32 148, i32 28, i32 7, i32 47, i32 33, i32 56, i32 130, ; 280..287
	i32 12, i32 142, i32 72, i32 101, i32 38, i32 138, i32 26, i32 8, ; 288..295
	i32 61, i32 99, i32 86, i32 2, i32 134, i32 32, i32 159, i32 66, ; 296..303
	i32 16, i32 156, i32 146, i32 95, i32 93, i32 120, i32 44, i32 15, ; 304..311
	i32 126, i32 123, i32 141, i32 152, i32 65, i32 99, i32 145, i32 81, ; 312..319
	i32 100, i32 160, i32 39, i32 115 ; 320..323
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
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
