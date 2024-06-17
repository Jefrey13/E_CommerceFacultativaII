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
@assembly_image_cache_hashes = local_unnamed_addr constant [264 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 70
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 102
	i32 57263871, ; 2: Xamarin.Forms.Core.dll => 0x369c6ff => 97
	i32 101534019, ; 3: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 86
	i32 120558881, ; 4: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 86
	i32 134690465, ; 5: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 106
	i32 150321567, ; 6: GalaSoft.MvvmLight => 0x8f5b99f => 11
	i32 159306688, ; 7: System.ComponentModel.Annotations => 0x97ed3c0 => 2
	i32 165246403, ; 8: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 47
	i32 182336117, ; 9: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 88
	i32 205061960, ; 10: System.ComponentModel => 0xc38ff48 => 4
	i32 209399409, ; 11: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 45
	i32 220171995, ; 12: System.Diagnostics.Debug => 0xd1f8edb => 120
	i32 230216969, ; 13: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 64
	i32 231814094, ; 14: System.Globalization => 0xdd133ce => 127
	i32 232815796, ; 15: System.Web.Services => 0xde07cb4 => 117
	i32 261689757, ; 16: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 50
	i32 278686392, ; 17: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 68
	i32 280482487, ; 18: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 62
	i32 318968648, ; 19: Xamarin.AndroidX.Activity.dll => 0x13031348 => 37
	i32 321597661, ; 20: System.Numerics => 0x132b30dd => 31
	i32 342366114, ; 21: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 66
	i32 347068432, ; 22: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 25
	i32 350334464, ; 23: eCommerce.Android.dll => 0x14e1ae00 => 0
	i32 385762202, ; 24: System.Memory.dll => 0x16fe439a => 30
	i32 441335492, ; 25: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 49
	i32 442521989, ; 26: Xamarin.Essentials => 0x1a605985 => 96
	i32 442565967, ; 27: System.Collections => 0x1a61054f => 124
	i32 450948140, ; 28: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 61
	i32 462607065, ; 29: eCommerce => 0x1b92d2d9 => 9
	i32 465846621, ; 30: mscorlib => 0x1bc4415d => 18
	i32 469710990, ; 31: System.dll => 0x1bff388e => 29
	i32 476646585, ; 32: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 62
	i32 486930444, ; 33: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 74
	i32 498788369, ; 34: System.ObjectModel => 0x1dbae811 => 121
	i32 526420162, ; 35: System.Transactions.dll => 0x1f6088c2 => 111
	i32 527452488, ; 36: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 106
	i32 545304856, ; 37: System.Runtime.Extensions => 0x2080b118 => 129
	i32 605376203, ; 38: System.IO.Compression.FileSystem => 0x24154ecb => 115
	i32 627609679, ; 39: Xamarin.AndroidX.CustomView => 0x2568904f => 55
	i32 639843206, ; 40: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 60
	i32 663517072, ; 41: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 93
	i32 666292255, ; 42: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 42
	i32 690569205, ; 43: System.Xml.Linq.dll => 0x29293ff5 => 36
	i32 691348768, ; 44: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 108
	i32 700284507, ; 45: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 103
	i32 720511267, ; 46: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 107
	i32 748832960, ; 47: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 23
	i32 775507847, ; 48: System.IO.Compression => 0x2e394f87 => 114
	i32 809851609, ; 49: System.Drawing.Common.dll => 0x30455ad9 => 113
	i32 843511501, ; 50: Xamarin.AndroidX.Print => 0x3246f6cd => 81
	i32 877678880, ; 51: System.Globalization.dll => 0x34505120 => 127
	i32 902159924, ; 52: Rg.Plugins.Popup => 0x35c5de34 => 19
	i32 928116545, ; 53: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 102
	i32 956575887, ; 54: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 107
	i32 967690846, ; 55: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 66
	i32 974778368, ; 56: FormsViewGroup.dll => 0x3a19f000 => 10
	i32 992768348, ; 57: System.Collections.dll => 0x3b2c715c => 124
	i32 1012816738, ; 58: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 85
	i32 1028951442, ; 59: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 15
	i32 1035644815, ; 60: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 41
	i32 1042160112, ; 61: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 99
	i32 1044663988, ; 62: System.Linq.Expressions.dll => 0x3e444eb4 => 123
	i32 1052210849, ; 63: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 71
	i32 1084122840, ; 64: Xamarin.Kotlin.StdLib => 0x409e66d8 => 105
	i32 1098259244, ; 65: System => 0x41761b2c => 29
	i32 1175144683, ; 66: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 91
	i32 1178241025, ; 67: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 78
	i32 1204270330, ; 68: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 42
	i32 1264511973, ; 69: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 87
	i32 1267360935, ; 70: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 92
	i32 1275534314, ; 71: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 108
	i32 1292207520, ; 72: SQLitePCLRaw.core.dll => 0x4d0585a0 => 24
	i32 1293217323, ; 73: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 57
	i32 1324164729, ; 74: System.Linq => 0x4eed2679 => 128
	i32 1365406463, ; 75: System.ServiceModel.Internals.dll => 0x516272ff => 119
	i32 1376866003, ; 76: Xamarin.AndroidX.SavedState => 0x52114ed3 => 85
	i32 1379779777, ; 77: System.Resources.ResourceManager => 0x523dc4c1 => 3
	i32 1395857551, ; 78: Xamarin.AndroidX.Media.dll => 0x5333188f => 75
	i32 1406073936, ; 79: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 51
	i32 1411638395, ; 80: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 33
	i32 1457743152, ; 81: System.Runtime.Extensions.dll => 0x56e36530 => 129
	i32 1460219004, ; 82: Xamarin.Forms.Xaml => 0x57092c7c => 100
	i32 1462112819, ; 83: System.IO.Compression.dll => 0x57261233 => 114
	i32 1469204771, ; 84: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 40
	i32 1550322496, ; 85: System.Reflection.Extensions.dll => 0x5c680b40 => 5
	i32 1582372066, ; 86: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 56
	i32 1592978981, ; 87: System.Runtime.Serialization.dll => 0x5ef2ee25 => 7
	i32 1600778655, ; 88: SQLite.Net.Platform.XamarinAndroid.dll => 0x5f69f19f => 22
	i32 1621565679, ; 89: GalaSoft.MvvmLight.dll => 0x60a720ef => 11
	i32 1622152042, ; 90: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 73
	i32 1624863272, ; 91: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 95
	i32 1635184631, ; 92: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 60
	i32 1636350590, ; 93: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 54
	i32 1637997082, ; 94: SQLite.Net.Platform.XamarinAndroid => 0x61a1da1a => 22
	i32 1639515021, ; 95: System.Net.Http.dll => 0x61b9038d => 6
	i32 1657153582, ; 96: System.Runtime => 0x62c6282e => 34
	i32 1657899481, ; 97: GalaSoft.MvvmLight.Extras => 0x62d189d9 => 12
	i32 1658241508, ; 98: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 89
	i32 1658251792, ; 99: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 101
	i32 1670060433, ; 100: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 50
	i32 1698840827, ; 101: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 104
	i32 1701541528, ; 102: System.Diagnostics.Debug.dll => 0x656b7698 => 120
	i32 1711441057, ; 103: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 25
	i32 1726116996, ; 104: System.Reflection.dll => 0x66e27484 => 122
	i32 1729485958, ; 105: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 46
	i32 1765942094, ; 106: System.Reflection.Extensions => 0x6942234e => 5
	i32 1766324549, ; 107: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 88
	i32 1776026572, ; 108: System.Core.dll => 0x69dc03cc => 28
	i32 1788241197, ; 109: Xamarin.AndroidX.Fragment => 0x6a96652d => 61
	i32 1808609942, ; 110: Xamarin.AndroidX.Loader => 0x6bcd3296 => 73
	i32 1813058853, ; 111: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 105
	i32 1813201214, ; 112: Xamarin.Google.Android.Material => 0x6c13413e => 101
	i32 1818569960, ; 113: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 79
	i32 1858542181, ; 114: System.Linq.Expressions => 0x6ec71a65 => 123
	i32 1867746548, ; 115: Xamarin.Essentials.dll => 0x6f538cf4 => 96
	i32 1878053835, ; 116: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 100
	i32 1885316902, ; 117: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 43
	i32 1900610850, ; 118: System.Resources.ResourceManager.dll => 0x71490522 => 3
	i32 1919157823, ; 119: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 76
	i32 1959883321, ; 120: CommonServiceLocator.dll => 0x74d17239 => 8
	i32 1983156543, ; 121: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 104
	i32 2011961780, ; 122: System.Buffers.dll => 0x77ec19b4 => 27
	i32 2019465201, ; 123: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 71
	i32 2055257422, ; 124: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 67
	i32 2079903147, ; 125: System.Runtime.dll => 0x7bf8cdab => 34
	i32 2090596640, ; 126: System.Numerics.Vectors => 0x7c9bf920 => 32
	i32 2097448633, ; 127: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 63
	i32 2103459038, ; 128: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 26
	i32 2126786730, ; 129: Xamarin.Forms.Platform.Android => 0x7ec430aa => 98
	i32 2193016926, ; 130: System.ObjectModel.dll => 0x82b6c85e => 121
	i32 2201107256, ; 131: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 109
	i32 2201231467, ; 132: System.Net.Http => 0x8334206b => 6
	i32 2217644978, ; 133: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 91
	i32 2244775296, ; 134: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 74
	i32 2256548716, ; 135: Xamarin.AndroidX.MultiDex => 0x8680336c => 76
	i32 2261435625, ; 136: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 65
	i32 2279755925, ; 137: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 83
	i32 2312970370, ; 138: eCommerce.dll => 0x89dd2082 => 9
	i32 2315684594, ; 139: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 38
	i32 2403452196, ; 140: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 59
	i32 2409053734, ; 141: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 80
	i32 2435904999, ; 142: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 118
	i32 2454642406, ; 143: System.Text.Encoding.dll => 0x924edee6 => 130
	i32 2465273461, ; 144: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 23
	i32 2465532216, ; 145: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 49
	i32 2471841756, ; 146: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 147: Java.Interop.dll => 0x93918882 => 14
	i32 2501346920, ; 148: System.Data.DataSetExtensions => 0x95178668 => 112
	i32 2505896520, ; 149: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 70
	i32 2581819634, ; 150: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 92
	i32 2605712449, ; 151: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 109
	i32 2620871830, ; 152: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 54
	i32 2624644809, ; 153: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 58
	i32 2633051222, ; 154: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 68
	i32 2701096212, ; 155: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 89
	i32 2715334215, ; 156: System.Threading.Tasks.dll => 0xa1d8b647 => 125
	i32 2732626843, ; 157: Xamarin.AndroidX.Activity => 0xa2e0939b => 37
	i32 2737747696, ; 158: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 40
	i32 2766581644, ; 159: Xamarin.Forms.Core => 0xa4e6af8c => 97
	i32 2770495804, ; 160: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 103
	i32 2778768386, ; 161: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 94
	i32 2779977773, ; 162: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 84
	i32 2810250172, ; 163: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 51
	i32 2819470561, ; 164: System.Xml.dll => 0xa80db4e1 => 35
	i32 2821294376, ; 165: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 84
	i32 2853208004, ; 166: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 94
	i32 2855708567, ; 167: Xamarin.AndroidX.Transition => 0xaa36a797 => 90
	i32 2861816565, ; 168: Rg.Plugins.Popup.dll => 0xaa93daf5 => 19
	i32 2901442782, ; 169: System.Reflection => 0xacf080de => 122
	i32 2903344695, ; 170: System.ComponentModel.Composition => 0xad0d8637 => 116
	i32 2905242038, ; 171: mscorlib.dll => 0xad2a79b6 => 18
	i32 2916838712, ; 172: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 95
	i32 2919462931, ; 173: System.Numerics.Vectors.dll => 0xae037813 => 32
	i32 2921128767, ; 174: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 39
	i32 2959614098, ; 175: System.ComponentModel.dll => 0xb0682092 => 4
	i32 2961864971, ; 176: CommonServiceLocator => 0xb08a790b => 8
	i32 2978675010, ; 177: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 57
	i32 2996846495, ; 178: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 69
	i32 3016983068, ; 179: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 87
	i32 3024354802, ; 180: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 64
	i32 3044182254, ; 181: FormsViewGroup => 0xb57288ee => 10
	i32 3057625584, ; 182: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 77
	i32 3075834255, ; 183: System.Threading.Tasks => 0xb755818f => 125
	i32 3111772706, ; 184: System.Runtime.Serialization => 0xb979e222 => 7
	i32 3140389508, ; 185: GalaSoft.MvvmLight.Platform.dll => 0xbb2e8a84 => 13
	i32 3204380047, ; 186: System.Data.dll => 0xbefef58f => 110
	i32 3211777861, ; 187: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 56
	i32 3220365878, ; 188: System.Threading => 0xbff2e236 => 126
	i32 3247949154, ; 189: Mono.Security => 0xc197c562 => 131
	i32 3258312781, ; 190: Xamarin.AndroidX.CardView => 0xc235e84d => 46
	i32 3267021929, ; 191: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 44
	i32 3280506390, ; 192: System.ComponentModel.Annotations.dll => 0xc3888e16 => 2
	i32 3286872994, ; 193: SQLite-net.dll => 0xc3e9b3a2 => 20
	i32 3299363146, ; 194: System.Text.Encoding => 0xc4a8494a => 130
	i32 3317135071, ; 195: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 55
	i32 3317144872, ; 196: System.Data => 0xc5b79d28 => 110
	i32 3340431453, ; 197: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 43
	i32 3345895724, ; 198: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 82
	i32 3346324047, ; 199: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 78
	i32 3353484488, ; 200: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 63
	i32 3360279109, ; 201: SQLitePCLRaw.core => 0xc849ca45 => 24
	i32 3362522851, ; 202: Xamarin.AndroidX.Core => 0xc86c06e3 => 53
	i32 3366347497, ; 203: Java.Interop => 0xc8a662e9 => 14
	i32 3372782576, ; 204: GalaSoft.MvvmLight.Platform => 0xc90893f0 => 13
	i32 3374999561, ; 205: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 83
	i32 3395150330, ; 206: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 33
	i32 3404865022, ; 207: System.ServiceModel.Internals => 0xcaf21dfe => 119
	i32 3428513518, ; 208: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 16
	i32 3429136800, ; 209: System.Xml => 0xcc6479a0 => 35
	i32 3430777524, ; 210: netstandard => 0xcc7d82b4 => 1
	i32 3441283291, ; 211: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 58
	i32 3457310322, ; 212: eCommerce.Android => 0xce125e72 => 0
	i32 3476120550, ; 213: Mono.Android => 0xcf3163e6 => 17
	i32 3486566296, ; 214: System.Transactions => 0xcfd0c798 => 111
	i32 3493954962, ; 215: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 48
	i32 3501239056, ; 216: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 44
	i32 3509114376, ; 217: System.Xml.Linq => 0xd128d608 => 36
	i32 3536029504, ; 218: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 98
	i32 3544605649, ; 219: SQLite.Net.dll => 0xd34663d1 => 21
	i32 3567349600, ; 220: System.ComponentModel.Composition.dll => 0xd4a16f60 => 116
	i32 3608519521, ; 221: System.Linq.dll => 0xd715a361 => 128
	i32 3618140916, ; 222: Xamarin.AndroidX.Preference => 0xd7a872f4 => 80
	i32 3627220390, ; 223: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 81
	i32 3632359727, ; 224: Xamarin.Forms.Platform => 0xd881692f => 99
	i32 3633644679, ; 225: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 39
	i32 3641597786, ; 226: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 67
	i32 3645089577, ; 227: System.ComponentModel.DataAnnotations => 0xd943a729 => 118
	i32 3672681054, ; 228: Mono.Android.dll => 0xdae8aa5e => 17
	i32 3676310014, ; 229: System.Web.Services.dll => 0xdb2009fe => 117
	i32 3682565725, ; 230: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 45
	i32 3684561358, ; 231: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 48
	i32 3689375977, ; 232: System.Drawing.Common => 0xdbe768e9 => 113
	i32 3697130073, ; 233: SQLite.Net => 0xdc5dba59 => 21
	i32 3706696989, ; 234: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 52
	i32 3718780102, ; 235: Xamarin.AndroidX.Annotation => 0xdda814c6 => 38
	i32 3724971120, ; 236: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 77
	i32 3754567612, ; 237: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 26
	i32 3758932259, ; 238: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 65
	i32 3786282454, ; 239: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 47
	i32 3822602673, ; 240: Xamarin.AndroidX.Media => 0xe3d849b1 => 75
	i32 3829621856, ; 241: System.Numerics.dll => 0xe4436460 => 31
	i32 3841636137, ; 242: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 15
	i32 3868603669, ; 243: GalaSoft.MvvmLight.Extras.dll => 0xe6963515 => 12
	i32 3876362041, ; 244: SQLite-net => 0xe70c9739 => 20
	i32 3885922214, ; 245: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 90
	i32 3888767677, ; 246: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 82
	i32 3896760992, ; 247: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 53
	i32 3920810846, ; 248: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 115
	i32 3921031405, ; 249: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 93
	i32 3931092270, ; 250: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 79
	i32 3945713374, ; 251: System.Data.DataSetExtensions.dll => 0xeb2ecede => 112
	i32 3955647286, ; 252: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 41
	i32 3959773229, ; 253: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 69
	i32 4025784931, ; 254: System.Memory => 0xeff49a63 => 30
	i32 4073602200, ; 255: System.Threading.dll => 0xf2ce3c98 => 126
	i32 4101593132, ; 256: Xamarin.AndroidX.Emoji2 => 0xf479582c => 59
	i32 4105002889, ; 257: Mono.Security.dll => 0xf4ad5f89 => 131
	i32 4126470640, ; 258: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 16
	i32 4151237749, ; 259: System.Core => 0xf76edc75 => 28
	i32 4182413190, ; 260: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 72
	i32 4256097574, ; 261: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 52
	i32 4260525087, ; 262: System.Buffers => 0xfdf2741f => 27
	i32 4292120959 ; 263: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 72
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [264 x i32] [
	i32 70, i32 102, i32 97, i32 86, i32 86, i32 106, i32 11, i32 2, ; 0..7
	i32 47, i32 88, i32 4, i32 45, i32 120, i32 64, i32 127, i32 117, ; 8..15
	i32 50, i32 68, i32 62, i32 37, i32 31, i32 66, i32 25, i32 0, ; 16..23
	i32 30, i32 49, i32 96, i32 124, i32 61, i32 9, i32 18, i32 29, ; 24..31
	i32 62, i32 74, i32 121, i32 111, i32 106, i32 129, i32 115, i32 55, ; 32..39
	i32 60, i32 93, i32 42, i32 36, i32 108, i32 103, i32 107, i32 23, ; 40..47
	i32 114, i32 113, i32 81, i32 127, i32 19, i32 102, i32 107, i32 66, ; 48..55
	i32 10, i32 124, i32 85, i32 15, i32 41, i32 99, i32 123, i32 71, ; 56..63
	i32 105, i32 29, i32 91, i32 78, i32 42, i32 87, i32 92, i32 108, ; 64..71
	i32 24, i32 57, i32 128, i32 119, i32 85, i32 3, i32 75, i32 51, ; 72..79
	i32 33, i32 129, i32 100, i32 114, i32 40, i32 5, i32 56, i32 7, ; 80..87
	i32 22, i32 11, i32 73, i32 95, i32 60, i32 54, i32 22, i32 6, ; 88..95
	i32 34, i32 12, i32 89, i32 101, i32 50, i32 104, i32 120, i32 25, ; 96..103
	i32 122, i32 46, i32 5, i32 88, i32 28, i32 61, i32 73, i32 105, ; 104..111
	i32 101, i32 79, i32 123, i32 96, i32 100, i32 43, i32 3, i32 76, ; 112..119
	i32 8, i32 104, i32 27, i32 71, i32 67, i32 34, i32 32, i32 63, ; 120..127
	i32 26, i32 98, i32 121, i32 109, i32 6, i32 91, i32 74, i32 76, ; 128..135
	i32 65, i32 83, i32 9, i32 38, i32 59, i32 80, i32 118, i32 130, ; 136..143
	i32 23, i32 49, i32 1, i32 14, i32 112, i32 70, i32 92, i32 109, ; 144..151
	i32 54, i32 58, i32 68, i32 89, i32 125, i32 37, i32 40, i32 97, ; 152..159
	i32 103, i32 94, i32 84, i32 51, i32 35, i32 84, i32 94, i32 90, ; 160..167
	i32 19, i32 122, i32 116, i32 18, i32 95, i32 32, i32 39, i32 4, ; 168..175
	i32 8, i32 57, i32 69, i32 87, i32 64, i32 10, i32 77, i32 125, ; 176..183
	i32 7, i32 13, i32 110, i32 56, i32 126, i32 131, i32 46, i32 44, ; 184..191
	i32 2, i32 20, i32 130, i32 55, i32 110, i32 43, i32 82, i32 78, ; 192..199
	i32 63, i32 24, i32 53, i32 14, i32 13, i32 83, i32 33, i32 119, ; 200..207
	i32 16, i32 35, i32 1, i32 58, i32 0, i32 17, i32 111, i32 48, ; 208..215
	i32 44, i32 36, i32 98, i32 21, i32 116, i32 128, i32 80, i32 81, ; 216..223
	i32 99, i32 39, i32 67, i32 118, i32 17, i32 117, i32 45, i32 48, ; 224..231
	i32 113, i32 21, i32 52, i32 38, i32 77, i32 26, i32 65, i32 47, ; 232..239
	i32 75, i32 31, i32 15, i32 12, i32 20, i32 90, i32 82, i32 53, ; 240..247
	i32 115, i32 93, i32 79, i32 112, i32 41, i32 69, i32 30, i32 126, ; 248..255
	i32 59, i32 131, i32 16, i32 28, i32 72, i32 52, i32 27, i32 72 ; 264..263
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
