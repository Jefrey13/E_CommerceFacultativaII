; ModuleID = 'obj\Debug\130\android\marshal_methods.x86.ll'
source_filename = "obj\Debug\130\android\marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


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
@assembly_image_cache_hashes = local_unnamed_addr constant [316 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 88
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 121
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 24
	i32 53195887, ; 3: Plugin.Toast.Abstractions => 0x32bb46f => 27
	i32 57263871, ; 4: Xamarin.Forms.Core.dll => 0x369c6ff => 115
	i32 101534019, ; 5: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 104
	i32 120558881, ; 6: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 104
	i32 134690465, ; 7: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 125
	i32 150321567, ; 8: GalaSoft.MvvmLight => 0x8f5b99f => 14
	i32 159306688, ; 9: System.ComponentModel.Annotations => 0x97ed3c0 => 2
	i32 165246403, ; 10: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 65
	i32 182336117, ; 11: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 106
	i32 182538915, ; 12: Xamarin.PayPal.Android.CardIO => 0xae152a3 => 129
	i32 205061960, ; 13: System.ComponentModel => 0xc38ff48 => 6
	i32 209399409, ; 14: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 63
	i32 220171995, ; 15: System.Diagnostics.Debug => 0xd1f8edb => 142
	i32 230216969, ; 16: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 82
	i32 231814094, ; 17: System.Globalization => 0xdd133ce => 152
	i32 232815796, ; 18: System.Web.Services => 0xde07cb4 => 139
	i32 261689757, ; 19: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 68
	i32 278686392, ; 20: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 86
	i32 280482487, ; 21: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 80
	i32 318968648, ; 22: Xamarin.AndroidX.Activity.dll => 0x13031348 => 55
	i32 321597661, ; 23: System.Numerics => 0x132b30dd => 46
	i32 342366114, ; 24: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 84
	i32 347068432, ; 25: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 36
	i32 350334464, ; 26: eCommerce.Android.dll => 0x14e1ae00 => 0
	i32 385762202, ; 27: System.Memory.dll => 0x16fe439a => 45
	i32 412434162, ; 28: Stripe.net.dll => 0x18953ef2 => 40
	i32 414345818, ; 29: Stripe.net => 0x18b26a5a => 40
	i32 441335492, ; 30: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 67
	i32 442521989, ; 31: Xamarin.Essentials => 0x1a605985 => 114
	i32 442565967, ; 32: System.Collections => 0x1a61054f => 146
	i32 450948140, ; 33: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 79
	i32 459347974, ; 34: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 145
	i32 462607065, ; 35: eCommerce => 0x1b92d2d9 => 11
	i32 465846621, ; 36: mscorlib => 0x1bc4415d => 23
	i32 469710990, ; 37: System.dll => 0x1bff388e => 44
	i32 476646585, ; 38: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 80
	i32 486930444, ; 39: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 92
	i32 498788369, ; 40: System.ObjectModel => 0x1dbae811 => 150
	i32 525008092, ; 41: SkiaSharp.dll => 0x1f4afcdc => 30
	i32 526420162, ; 42: System.Transactions.dll => 0x1f6088c2 => 133
	i32 527452488, ; 43: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 125
	i32 545304856, ; 44: System.Runtime.Extensions => 0x2080b118 => 154
	i32 548916678, ; 45: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 19
	i32 605376203, ; 46: System.IO.Compression.FileSystem => 0x24154ecb => 137
	i32 627609679, ; 47: Xamarin.AndroidX.CustomView => 0x2568904f => 73
	i32 639843206, ; 48: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 78
	i32 663517072, ; 49: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 111
	i32 666292255, ; 50: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 60
	i32 690569205, ; 51: System.Xml.Linq.dll => 0x29293ff5 => 54
	i32 691348768, ; 52: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 127
	i32 700284507, ; 53: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 122
	i32 720511267, ; 54: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 126
	i32 748832960, ; 55: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 34
	i32 775507847, ; 56: System.IO.Compression => 0x2e394f87 => 136
	i32 809851609, ; 57: System.Drawing.Common.dll => 0x30455ad9 => 135
	i32 843511501, ; 58: Xamarin.AndroidX.Print => 0x3246f6cd => 99
	i32 877678880, ; 59: System.Globalization.dll => 0x34505120 => 152
	i32 902159924, ; 60: Rg.Plugins.Popup => 0x35c5de34 => 29
	i32 928116545, ; 61: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 121
	i32 955402788, ; 62: Newtonsoft.Json => 0x38f24a24 => 24
	i32 956575887, ; 63: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 126
	i32 961995525, ; 64: Square.OkIO.dll => 0x3956e305 => 39
	i32 967690846, ; 65: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 84
	i32 974778368, ; 66: FormsViewGroup.dll => 0x3a19f000 => 13
	i32 992768348, ; 67: System.Collections.dll => 0x3b2c715c => 146
	i32 1012816738, ; 68: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 103
	i32 1028951442, ; 69: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 20
	i32 1035644815, ; 70: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 59
	i32 1036786681, ; 71: Plugin.Toast => 0x3dcc1bf9 => 28
	i32 1042160112, ; 72: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 118
	i32 1044663988, ; 73: System.Linq.Expressions.dll => 0x3e444eb4 => 151
	i32 1052210849, ; 74: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 89
	i32 1084122840, ; 75: Xamarin.Kotlin.StdLib => 0x409e66d8 => 124
	i32 1098259244, ; 76: System => 0x41761b2c => 44
	i32 1163253503, ; 77: PayPal.Forms.Abstractions.dll => 0x4555d6ff => 25
	i32 1175144683, ; 78: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 109
	i32 1178241025, ; 79: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 96
	i32 1204270330, ; 80: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 60
	i32 1221286664, ; 81: Square.OkHttp3 => 0x48cb5b08 => 38
	i32 1264511973, ; 82: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 105
	i32 1267360935, ; 83: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 110
	i32 1275534314, ; 84: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 127
	i32 1292207520, ; 85: SQLitePCLRaw.core.dll => 0x4d0585a0 => 35
	i32 1293217323, ; 86: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 75
	i32 1318113155, ; 87: PayPal.Forms => 0x4e90cf83 => 26
	i32 1324164729, ; 88: System.Linq => 0x4eed2679 => 147
	i32 1365406463, ; 89: System.ServiceModel.Internals.dll => 0x516272ff => 141
	i32 1376866003, ; 90: Xamarin.AndroidX.SavedState => 0x52114ed3 => 103
	i32 1379779777, ; 91: System.Resources.ResourceManager => 0x523dc4c1 => 5
	i32 1395857551, ; 92: Xamarin.AndroidX.Media.dll => 0x5333188f => 93
	i32 1406073936, ; 93: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 69
	i32 1411638395, ; 94: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 48
	i32 1426028455, ; 95: Plugin.Toast.dll => 0x54ff77a7 => 28
	i32 1457743152, ; 96: System.Runtime.Extensions.dll => 0x56e36530 => 154
	i32 1460219004, ; 97: Xamarin.Forms.Xaml => 0x57092c7c => 119
	i32 1462112819, ; 98: System.IO.Compression.dll => 0x57261233 => 136
	i32 1469204771, ; 99: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 58
	i32 1550322496, ; 100: System.Reflection.Extensions.dll => 0x5c680b40 => 4
	i32 1582372066, ; 101: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 74
	i32 1592978981, ; 102: System.Runtime.Serialization.dll => 0x5ef2ee25 => 8
	i32 1600778655, ; 103: SQLite.Net.Platform.XamarinAndroid.dll => 0x5f69f19f => 33
	i32 1621565679, ; 104: GalaSoft.MvvmLight.dll => 0x60a720ef => 14
	i32 1622152042, ; 105: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 91
	i32 1624863272, ; 106: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 113
	i32 1635184631, ; 107: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 78
	i32 1636350590, ; 108: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 72
	i32 1637997082, ; 109: SQLite.Net.Platform.XamarinAndroid => 0x61a1da1a => 33
	i32 1639515021, ; 110: System.Net.Http.dll => 0x61b9038d => 3
	i32 1657153582, ; 111: System.Runtime => 0x62c6282e => 49
	i32 1657899481, ; 112: GalaSoft.MvvmLight.Extras => 0x62d189d9 => 15
	i32 1658241508, ; 113: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 107
	i32 1658251792, ; 114: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 120
	i32 1670060433, ; 115: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 68
	i32 1698840827, ; 116: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 123
	i32 1701541528, ; 117: System.Diagnostics.Debug.dll => 0x656b7698 => 142
	i32 1711441057, ; 118: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 36
	i32 1726116996, ; 119: System.Reflection.dll => 0x66e27484 => 143
	i32 1729485958, ; 120: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 64
	i32 1765942094, ; 121: System.Reflection.Extensions => 0x6942234e => 4
	i32 1766324549, ; 122: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 106
	i32 1776026572, ; 123: System.Core.dll => 0x69dc03cc => 43
	i32 1788241197, ; 124: Xamarin.AndroidX.Fragment => 0x6a96652d => 79
	i32 1796167890, ; 125: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 19
	i32 1808609942, ; 126: Xamarin.AndroidX.Loader => 0x6bcd3296 => 91
	i32 1813058853, ; 127: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 124
	i32 1813201214, ; 128: Xamarin.Google.Android.Material => 0x6c13413e => 120
	i32 1818569960, ; 129: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 97
	i32 1858542181, ; 130: System.Linq.Expressions => 0x6ec71a65 => 151
	i32 1867746548, ; 131: Xamarin.Essentials.dll => 0x6f538cf4 => 114
	i32 1878053835, ; 132: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 119
	i32 1885316902, ; 133: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 61
	i32 1900610850, ; 134: System.Resources.ResourceManager.dll => 0x71490522 => 5
	i32 1919157823, ; 135: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 94
	i32 1959883321, ; 136: CommonServiceLocator.dll => 0x74d17239 => 10
	i32 1983156543, ; 137: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 123
	i32 2011961780, ; 138: System.Buffers.dll => 0x77ec19b4 => 41
	i32 2019465201, ; 139: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 89
	i32 2055257422, ; 140: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 85
	i32 2079903147, ; 141: System.Runtime.dll => 0x7bf8cdab => 49
	i32 2090596640, ; 142: System.Numerics.Vectors => 0x7c9bf920 => 47
	i32 2097448633, ; 143: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 81
	i32 2103459038, ; 144: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 37
	i32 2113902067, ; 145: Xamarin.Forms.PancakeView.dll => 0x7dff95f3 => 116
	i32 2126786730, ; 146: Xamarin.Forms.Platform.Android => 0x7ec430aa => 117
	i32 2193016926, ; 147: System.ObjectModel.dll => 0x82b6c85e => 150
	i32 2201107256, ; 148: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 128
	i32 2201231467, ; 149: System.Net.Http => 0x8334206b => 3
	i32 2216717168, ; 150: Firebase.Auth.dll => 0x84206b70 => 12
	i32 2217644978, ; 151: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 109
	i32 2244775296, ; 152: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 92
	i32 2256548716, ; 153: Xamarin.AndroidX.MultiDex => 0x8680336c => 94
	i32 2261435625, ; 154: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 83
	i32 2264215577, ; 155: PayPal.Forms.dll => 0x86f53019 => 26
	i32 2265110946, ; 156: System.Security.AccessControl.dll => 0x8702d9a2 => 50
	i32 2275299920, ; 157: XamarinFastEntry.Behaviors.dll => 0x879e5250 => 131
	i32 2279755925, ; 158: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 101
	i32 2312970370, ; 159: eCommerce.dll => 0x89dd2082 => 11
	i32 2315684594, ; 160: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 56
	i32 2383496789, ; 161: System.Security.Principal.Windows.dll => 0x8e114655 => 52
	i32 2397082276, ; 162: Xamarin.Forms.PancakeView => 0x8ee092a4 => 116
	i32 2403452196, ; 163: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 77
	i32 2409053734, ; 164: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 98
	i32 2435904999, ; 165: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 140
	i32 2454642406, ; 166: System.Text.Encoding.dll => 0x924edee6 => 149
	i32 2465273461, ; 167: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 34
	i32 2465532216, ; 168: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 67
	i32 2471841756, ; 169: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 170: Java.Interop.dll => 0x93918882 => 18
	i32 2498657740, ; 171: BouncyCastle.Cryptography.dll => 0x94ee7dcc => 9
	i32 2501346920, ; 172: System.Data.DataSetExtensions => 0x95178668 => 134
	i32 2505896520, ; 173: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 88
	i32 2521700106, ; 174: iTextSharp.LGPLv2.Core.dll => 0x964e170a => 17
	i32 2581819634, ; 175: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 110
	i32 2605712449, ; 176: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 128
	i32 2620871830, ; 177: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 72
	i32 2624644809, ; 178: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 76
	i32 2633051222, ; 179: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 86
	i32 2660759594, ; 180: System.Security.Cryptography.ProtectedData.dll => 0x9e97f82a => 155
	i32 2701096212, ; 181: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 107
	i32 2715334215, ; 182: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2732626843, ; 183: Xamarin.AndroidX.Activity => 0xa2e0939b => 55
	i32 2737747696, ; 184: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 58
	i32 2765824710, ; 185: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 153
	i32 2766581644, ; 186: Xamarin.Forms.Core => 0xa4e6af8c => 115
	i32 2770495804, ; 187: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 122
	i32 2778768386, ; 188: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 112
	i32 2779977773, ; 189: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 102
	i32 2810250172, ; 190: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 69
	i32 2819470561, ; 191: System.Xml.dll => 0xa80db4e1 => 53
	i32 2821294376, ; 192: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 102
	i32 2841355853, ; 193: System.Security.Permissions => 0xa95ba64d => 51
	i32 2853208004, ; 194: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 112
	i32 2855708567, ; 195: Xamarin.AndroidX.Transition => 0xaa36a797 => 108
	i32 2861816565, ; 196: Rg.Plugins.Popup.dll => 0xaa93daf5 => 29
	i32 2867931758, ; 197: Plugin.Toast.Abstractions.dll => 0xaaf12a6e => 27
	i32 2867946736, ; 198: System.Security.Cryptography.ProtectedData => 0xaaf164f0 => 155
	i32 2901442782, ; 199: System.Reflection => 0xacf080de => 143
	i32 2903344695, ; 200: System.ComponentModel.Composition => 0xad0d8637 => 138
	i32 2905242038, ; 201: mscorlib.dll => 0xad2a79b6 => 23
	i32 2916838712, ; 202: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 113
	i32 2919462931, ; 203: System.Numerics.Vectors.dll => 0xae037813 => 47
	i32 2921128767, ; 204: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 57
	i32 2943219317, ; 205: Square.OkIO => 0xaf6df675 => 39
	i32 2944313911, ; 206: System.Configuration.ConfigurationManager.dll => 0xaf7eaa37 => 42
	i32 2959614098, ; 207: System.ComponentModel.dll => 0xb0682092 => 6
	i32 2961864971, ; 208: CommonServiceLocator => 0xb08a790b => 10
	i32 2968338931, ; 209: System.Security.Principal.Windows => 0xb0ed41f3 => 52
	i32 2978675010, ; 210: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 75
	i32 2996846495, ; 211: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 87
	i32 3012788804, ; 212: System.Configuration.ConfigurationManager => 0xb3938244 => 42
	i32 3016983068, ; 213: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 105
	i32 3020527151, ; 214: iTextSharp.LGPLv2.Core => 0xb409962f => 17
	i32 3024354802, ; 215: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 82
	i32 3044182254, ; 216: FormsViewGroup => 0xb57288ee => 13
	i32 3057625584, ; 217: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 95
	i32 3075834255, ; 218: System.Threading.Tasks => 0xb755818f => 144
	i32 3111772706, ; 219: System.Runtime.Serialization => 0xb979e222 => 8
	i32 3124832203, ; 220: System.Threading.Tasks.Extensions => 0xba4127cb => 7
	i32 3132293585, ; 221: System.Security.AccessControl => 0xbab301d1 => 50
	i32 3140389508, ; 222: GalaSoft.MvvmLight.Platform.dll => 0xbb2e8a84 => 16
	i32 3176290216, ; 223: PayPal.Forms.Abstractions => 0xbd5257a8 => 25
	i32 3204380047, ; 224: System.Data.dll => 0xbefef58f => 132
	i32 3211777861, ; 225: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 74
	i32 3213246214, ; 226: System.Security.Permissions.dll => 0xbf863f06 => 51
	i32 3217536604, ; 227: Square.OkHttp3.dll => 0xbfc7b65c => 38
	i32 3220365878, ; 228: System.Threading => 0xbff2e236 => 148
	i32 3247949154, ; 229: Mono.Security => 0xc197c562 => 157
	i32 3258312781, ; 230: Xamarin.AndroidX.CardView => 0xc235e84d => 64
	i32 3265893370, ; 231: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 7
	i32 3267021929, ; 232: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 62
	i32 3280506390, ; 233: System.ComponentModel.Annotations.dll => 0xc3888e16 => 2
	i32 3286872994, ; 234: SQLite-net.dll => 0xc3e9b3a2 => 31
	i32 3299363146, ; 235: System.Text.Encoding => 0xc4a8494a => 149
	i32 3317135071, ; 236: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 73
	i32 3317144872, ; 237: System.Data => 0xc5b79d28 => 132
	i32 3340387945, ; 238: SkiaSharp => 0xc71a4669 => 30
	i32 3340431453, ; 239: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 61
	i32 3345895724, ; 240: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 100
	i32 3346324047, ; 241: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 96
	i32 3353484488, ; 242: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 81
	i32 3360279109, ; 243: SQLitePCLRaw.core => 0xc849ca45 => 35
	i32 3362522851, ; 244: Xamarin.AndroidX.Core => 0xc86c06e3 => 71
	i32 3366347497, ; 245: Java.Interop => 0xc8a662e9 => 18
	i32 3372782576, ; 246: GalaSoft.MvvmLight.Platform => 0xc90893f0 => 16
	i32 3374999561, ; 247: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 101
	i32 3395150330, ; 248: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 48
	i32 3404865022, ; 249: System.ServiceModel.Internals => 0xcaf21dfe => 141
	i32 3428513518, ; 250: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 21
	i32 3429136800, ; 251: System.Xml => 0xcc6479a0 => 53
	i32 3430777524, ; 252: netstandard => 0xcc7d82b4 => 1
	i32 3440153272, ; 253: Xamarin.PayPal.Android.CardIO.dll => 0xcd0c92b8 => 129
	i32 3441283291, ; 254: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 76
	i32 3457310322, ; 255: eCommerce.Android => 0xce125e72 => 0
	i32 3476120550, ; 256: Mono.Android => 0xcf3163e6 => 22
	i32 3486566296, ; 257: System.Transactions => 0xcfd0c798 => 133
	i32 3493954962, ; 258: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 66
	i32 3501239056, ; 259: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 62
	i32 3509114376, ; 260: System.Xml.Linq => 0xd128d608 => 54
	i32 3515174580, ; 261: System.Security.dll => 0xd1854eb4 => 156
	i32 3536029504, ; 262: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 117
	i32 3544605649, ; 263: SQLite.Net.dll => 0xd34663d1 => 32
	i32 3567349600, ; 264: System.ComponentModel.Composition.dll => 0xd4a16f60 => 138
	i32 3605570793, ; 265: BouncyCastle.Cryptography => 0xd6e8a4e9 => 9
	i32 3607920927, ; 266: Xamarin.PayPal.Android => 0xd70c811f => 130
	i32 3608519521, ; 267: System.Linq.dll => 0xd715a361 => 147
	i32 3612637940, ; 268: XamarinFastEntry.Behaviors => 0xd7547af4 => 131
	i32 3618140916, ; 269: Xamarin.AndroidX.Preference => 0xd7a872f4 => 98
	i32 3627220390, ; 270: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 99
	i32 3632359727, ; 271: Xamarin.Forms.Platform => 0xd881692f => 118
	i32 3633644679, ; 272: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 57
	i32 3641597786, ; 273: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 85
	i32 3645089577, ; 274: System.ComponentModel.DataAnnotations => 0xd943a729 => 140
	i32 3672681054, ; 275: Mono.Android.dll => 0xdae8aa5e => 22
	i32 3676310014, ; 276: System.Web.Services.dll => 0xdb2009fe => 139
	i32 3682565725, ; 277: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 63
	i32 3684561358, ; 278: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 66
	i32 3689375977, ; 279: System.Drawing.Common => 0xdbe768e9 => 135
	i32 3697130073, ; 280: SQLite.Net => 0xdc5dba59 => 32
	i32 3706696989, ; 281: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 70
	i32 3718780102, ; 282: Xamarin.AndroidX.Annotation => 0xdda814c6 => 56
	i32 3724971120, ; 283: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 95
	i32 3749322075, ; 284: Xamarin.PayPal.Android.dll => 0xdf7a1d5b => 130
	i32 3754567612, ; 285: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 37
	i32 3758932259, ; 286: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 83
	i32 3786282454, ; 287: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 65
	i32 3822602673, ; 288: Xamarin.AndroidX.Media => 0xe3d849b1 => 93
	i32 3829621856, ; 289: System.Numerics.dll => 0xe4436460 => 46
	i32 3841636137, ; 290: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 20
	i32 3868603669, ; 291: GalaSoft.MvvmLight.Extras.dll => 0xe6963515 => 15
	i32 3876362041, ; 292: SQLite-net => 0xe70c9739 => 31
	i32 3885922214, ; 293: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 108
	i32 3888767677, ; 294: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 100
	i32 3896760992, ; 295: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 71
	i32 3920810846, ; 296: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 137
	i32 3921031405, ; 297: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 111
	i32 3931092270, ; 298: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 97
	i32 3945713374, ; 299: System.Data.DataSetExtensions.dll => 0xeb2ecede => 134
	i32 3953953790, ; 300: System.Text.Encoding.CodePages => 0xebac8bfe => 153
	i32 3955647286, ; 301: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 59
	i32 3959773229, ; 302: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 87
	i32 4024013275, ; 303: Firebase.Auth => 0xefd991db => 12
	i32 4025784931, ; 304: System.Memory => 0xeff49a63 => 45
	i32 4073602200, ; 305: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4101593132, ; 306: Xamarin.AndroidX.Emoji2 => 0xf479582c => 77
	i32 4105002889, ; 307: Mono.Security.dll => 0xf4ad5f89 => 157
	i32 4126470640, ; 308: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 21
	i32 4151237749, ; 309: System.Core => 0xf76edc75 => 43
	i32 4181436372, ; 310: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 145
	i32 4182413190, ; 311: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 90
	i32 4185676441, ; 312: System.Security => 0xf97c5a99 => 156
	i32 4256097574, ; 313: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 70
	i32 4260525087, ; 314: System.Buffers => 0xfdf2741f => 41
	i32 4292120959 ; 315: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 90
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [316 x i32] [
	i32 88, i32 121, i32 24, i32 27, i32 115, i32 104, i32 104, i32 125, ; 0..7
	i32 14, i32 2, i32 65, i32 106, i32 129, i32 6, i32 63, i32 142, ; 8..15
	i32 82, i32 152, i32 139, i32 68, i32 86, i32 80, i32 55, i32 46, ; 16..23
	i32 84, i32 36, i32 0, i32 45, i32 40, i32 40, i32 67, i32 114, ; 24..31
	i32 146, i32 79, i32 145, i32 11, i32 23, i32 44, i32 80, i32 92, ; 32..39
	i32 150, i32 30, i32 133, i32 125, i32 154, i32 19, i32 137, i32 73, ; 40..47
	i32 78, i32 111, i32 60, i32 54, i32 127, i32 122, i32 126, i32 34, ; 48..55
	i32 136, i32 135, i32 99, i32 152, i32 29, i32 121, i32 24, i32 126, ; 56..63
	i32 39, i32 84, i32 13, i32 146, i32 103, i32 20, i32 59, i32 28, ; 64..71
	i32 118, i32 151, i32 89, i32 124, i32 44, i32 25, i32 109, i32 96, ; 72..79
	i32 60, i32 38, i32 105, i32 110, i32 127, i32 35, i32 75, i32 26, ; 80..87
	i32 147, i32 141, i32 103, i32 5, i32 93, i32 69, i32 48, i32 28, ; 88..95
	i32 154, i32 119, i32 136, i32 58, i32 4, i32 74, i32 8, i32 33, ; 96..103
	i32 14, i32 91, i32 113, i32 78, i32 72, i32 33, i32 3, i32 49, ; 104..111
	i32 15, i32 107, i32 120, i32 68, i32 123, i32 142, i32 36, i32 143, ; 112..119
	i32 64, i32 4, i32 106, i32 43, i32 79, i32 19, i32 91, i32 124, ; 120..127
	i32 120, i32 97, i32 151, i32 114, i32 119, i32 61, i32 5, i32 94, ; 128..135
	i32 10, i32 123, i32 41, i32 89, i32 85, i32 49, i32 47, i32 81, ; 136..143
	i32 37, i32 116, i32 117, i32 150, i32 128, i32 3, i32 12, i32 109, ; 144..151
	i32 92, i32 94, i32 83, i32 26, i32 50, i32 131, i32 101, i32 11, ; 152..159
	i32 56, i32 52, i32 116, i32 77, i32 98, i32 140, i32 149, i32 34, ; 160..167
	i32 67, i32 1, i32 18, i32 9, i32 134, i32 88, i32 17, i32 110, ; 168..175
	i32 128, i32 72, i32 76, i32 86, i32 155, i32 107, i32 144, i32 55, ; 176..183
	i32 58, i32 153, i32 115, i32 122, i32 112, i32 102, i32 69, i32 53, ; 184..191
	i32 102, i32 51, i32 112, i32 108, i32 29, i32 27, i32 155, i32 143, ; 192..199
	i32 138, i32 23, i32 113, i32 47, i32 57, i32 39, i32 42, i32 6, ; 200..207
	i32 10, i32 52, i32 75, i32 87, i32 42, i32 105, i32 17, i32 82, ; 208..215
	i32 13, i32 95, i32 144, i32 8, i32 7, i32 50, i32 16, i32 25, ; 216..223
	i32 132, i32 74, i32 51, i32 38, i32 148, i32 157, i32 64, i32 7, ; 224..231
	i32 62, i32 2, i32 31, i32 149, i32 73, i32 132, i32 30, i32 61, ; 232..239
	i32 100, i32 96, i32 81, i32 35, i32 71, i32 18, i32 16, i32 101, ; 240..247
	i32 48, i32 141, i32 21, i32 53, i32 1, i32 129, i32 76, i32 0, ; 248..255
	i32 22, i32 133, i32 66, i32 62, i32 54, i32 156, i32 117, i32 32, ; 256..263
	i32 138, i32 9, i32 130, i32 147, i32 131, i32 98, i32 99, i32 118, ; 264..271
	i32 57, i32 85, i32 140, i32 22, i32 139, i32 63, i32 66, i32 135, ; 272..279
	i32 32, i32 70, i32 56, i32 95, i32 130, i32 37, i32 83, i32 65, ; 280..287
	i32 93, i32 46, i32 20, i32 15, i32 31, i32 108, i32 100, i32 71, ; 288..295
	i32 137, i32 111, i32 97, i32 134, i32 153, i32 59, i32 87, i32 12, ; 296..303
	i32 45, i32 148, i32 77, i32 157, i32 21, i32 43, i32 145, i32 90, ; 304..311
	i32 156, i32 70, i32 41, i32 90 ; 312..315
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
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


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
