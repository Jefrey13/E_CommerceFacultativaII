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
@assembly_image_cache_hashes = local_unnamed_addr constant [224 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 61
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 93
	i32 57263871, ; 2: Xamarin.Forms.Core.dll => 0x369c6ff => 88
	i32 101534019, ; 3: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 77
	i32 120558881, ; 4: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 77
	i32 134690465, ; 5: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 97
	i32 159306688, ; 6: System.ComponentModel.Annotations => 0x97ed3c0 => 2
	i32 165246403, ; 7: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 38
	i32 182336117, ; 8: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 79
	i32 209399409, ; 9: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 36
	i32 230216969, ; 10: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 55
	i32 232815796, ; 11: System.Web.Services => 0xde07cb4 => 108
	i32 261689757, ; 12: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 41
	i32 278686392, ; 13: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 59
	i32 280482487, ; 14: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 53
	i32 318968648, ; 15: Xamarin.AndroidX.Activity.dll => 0x13031348 => 28
	i32 321597661, ; 16: System.Numerics => 0x132b30dd => 22
	i32 342366114, ; 17: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 57
	i32 347068432, ; 18: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 16
	i32 350334464, ; 19: eCommerce.Android.dll => 0x14e1ae00 => 0
	i32 385762202, ; 20: System.Memory.dll => 0x16fe439a => 21
	i32 441335492, ; 21: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 40
	i32 442521989, ; 22: Xamarin.Essentials => 0x1a605985 => 87
	i32 450948140, ; 23: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 52
	i32 462607065, ; 24: eCommerce => 0x1b92d2d9 => 5
	i32 465846621, ; 25: mscorlib => 0x1bc4415d => 11
	i32 469710990, ; 26: System.dll => 0x1bff388e => 20
	i32 476646585, ; 27: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 53
	i32 486930444, ; 28: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 65
	i32 526420162, ; 29: System.Transactions.dll => 0x1f6088c2 => 102
	i32 527452488, ; 30: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 97
	i32 605376203, ; 31: System.IO.Compression.FileSystem => 0x24154ecb => 106
	i32 627609679, ; 32: Xamarin.AndroidX.CustomView => 0x2568904f => 46
	i32 639843206, ; 33: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 51
	i32 663517072, ; 34: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 84
	i32 666292255, ; 35: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 33
	i32 690569205, ; 36: System.Xml.Linq.dll => 0x29293ff5 => 27
	i32 691348768, ; 37: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 99
	i32 700284507, ; 38: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 94
	i32 720511267, ; 39: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 98
	i32 748832960, ; 40: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 14
	i32 775507847, ; 41: System.IO.Compression => 0x2e394f87 => 105
	i32 809851609, ; 42: System.Drawing.Common.dll => 0x30455ad9 => 104
	i32 843511501, ; 43: Xamarin.AndroidX.Print => 0x3246f6cd => 72
	i32 902159924, ; 44: Rg.Plugins.Popup => 0x35c5de34 => 12
	i32 928116545, ; 45: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 93
	i32 956575887, ; 46: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 98
	i32 967690846, ; 47: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 57
	i32 974778368, ; 48: FormsViewGroup.dll => 0x3a19f000 => 6
	i32 1012816738, ; 49: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 76
	i32 1028951442, ; 50: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 8
	i32 1035644815, ; 51: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 32
	i32 1042160112, ; 52: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 90
	i32 1052210849, ; 53: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 62
	i32 1084122840, ; 54: Xamarin.Kotlin.StdLib => 0x409e66d8 => 96
	i32 1098259244, ; 55: System => 0x41761b2c => 20
	i32 1175144683, ; 56: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 82
	i32 1178241025, ; 57: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 69
	i32 1204270330, ; 58: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 33
	i32 1264511973, ; 59: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 78
	i32 1267360935, ; 60: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 83
	i32 1275534314, ; 61: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 99
	i32 1292207520, ; 62: SQLitePCLRaw.core.dll => 0x4d0585a0 => 15
	i32 1293217323, ; 63: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 48
	i32 1365406463, ; 64: System.ServiceModel.Internals.dll => 0x516272ff => 110
	i32 1376866003, ; 65: Xamarin.AndroidX.SavedState => 0x52114ed3 => 76
	i32 1395857551, ; 66: Xamarin.AndroidX.Media.dll => 0x5333188f => 66
	i32 1406073936, ; 67: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 42
	i32 1411638395, ; 68: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 24
	i32 1460219004, ; 69: Xamarin.Forms.Xaml => 0x57092c7c => 91
	i32 1462112819, ; 70: System.IO.Compression.dll => 0x57261233 => 105
	i32 1469204771, ; 71: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 31
	i32 1582372066, ; 72: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 47
	i32 1592978981, ; 73: System.Runtime.Serialization.dll => 0x5ef2ee25 => 4
	i32 1622152042, ; 74: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 64
	i32 1624863272, ; 75: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 86
	i32 1635184631, ; 76: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 51
	i32 1636350590, ; 77: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 45
	i32 1639515021, ; 78: System.Net.Http.dll => 0x61b9038d => 3
	i32 1657153582, ; 79: System.Runtime => 0x62c6282e => 25
	i32 1658241508, ; 80: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 80
	i32 1658251792, ; 81: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 92
	i32 1670060433, ; 82: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 41
	i32 1698840827, ; 83: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 95
	i32 1711441057, ; 84: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 16
	i32 1729485958, ; 85: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 37
	i32 1766324549, ; 86: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 79
	i32 1776026572, ; 87: System.Core.dll => 0x69dc03cc => 19
	i32 1788241197, ; 88: Xamarin.AndroidX.Fragment => 0x6a96652d => 52
	i32 1808609942, ; 89: Xamarin.AndroidX.Loader => 0x6bcd3296 => 64
	i32 1813058853, ; 90: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 96
	i32 1813201214, ; 91: Xamarin.Google.Android.Material => 0x6c13413e => 92
	i32 1818569960, ; 92: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 70
	i32 1867746548, ; 93: Xamarin.Essentials.dll => 0x6f538cf4 => 87
	i32 1878053835, ; 94: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 91
	i32 1885316902, ; 95: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 34
	i32 1919157823, ; 96: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 67
	i32 1983156543, ; 97: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 95
	i32 2011961780, ; 98: System.Buffers.dll => 0x77ec19b4 => 18
	i32 2019465201, ; 99: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 62
	i32 2055257422, ; 100: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 58
	i32 2079903147, ; 101: System.Runtime.dll => 0x7bf8cdab => 25
	i32 2090596640, ; 102: System.Numerics.Vectors => 0x7c9bf920 => 23
	i32 2097448633, ; 103: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 54
	i32 2103459038, ; 104: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 17
	i32 2126786730, ; 105: Xamarin.Forms.Platform.Android => 0x7ec430aa => 89
	i32 2201107256, ; 106: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 100
	i32 2201231467, ; 107: System.Net.Http => 0x8334206b => 3
	i32 2217644978, ; 108: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 82
	i32 2244775296, ; 109: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 65
	i32 2256548716, ; 110: Xamarin.AndroidX.MultiDex => 0x8680336c => 67
	i32 2261435625, ; 111: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 56
	i32 2279755925, ; 112: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 74
	i32 2312970370, ; 113: eCommerce.dll => 0x89dd2082 => 5
	i32 2315684594, ; 114: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 29
	i32 2403452196, ; 115: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 50
	i32 2409053734, ; 116: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 71
	i32 2435904999, ; 117: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 109
	i32 2465273461, ; 118: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 14
	i32 2465532216, ; 119: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 40
	i32 2471841756, ; 120: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 121: Java.Interop.dll => 0x93918882 => 7
	i32 2501346920, ; 122: System.Data.DataSetExtensions => 0x95178668 => 103
	i32 2505896520, ; 123: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 61
	i32 2581819634, ; 124: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 83
	i32 2605712449, ; 125: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 100
	i32 2620871830, ; 126: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 45
	i32 2624644809, ; 127: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 49
	i32 2633051222, ; 128: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 59
	i32 2701096212, ; 129: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 80
	i32 2732626843, ; 130: Xamarin.AndroidX.Activity => 0xa2e0939b => 28
	i32 2737747696, ; 131: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 31
	i32 2766581644, ; 132: Xamarin.Forms.Core => 0xa4e6af8c => 88
	i32 2770495804, ; 133: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 94
	i32 2778768386, ; 134: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 85
	i32 2779977773, ; 135: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 75
	i32 2810250172, ; 136: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 42
	i32 2819470561, ; 137: System.Xml.dll => 0xa80db4e1 => 26
	i32 2821294376, ; 138: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 75
	i32 2853208004, ; 139: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 85
	i32 2855708567, ; 140: Xamarin.AndroidX.Transition => 0xaa36a797 => 81
	i32 2861816565, ; 141: Rg.Plugins.Popup.dll => 0xaa93daf5 => 12
	i32 2903344695, ; 142: System.ComponentModel.Composition => 0xad0d8637 => 107
	i32 2905242038, ; 143: mscorlib.dll => 0xad2a79b6 => 11
	i32 2916838712, ; 144: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 86
	i32 2919462931, ; 145: System.Numerics.Vectors.dll => 0xae037813 => 23
	i32 2921128767, ; 146: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 30
	i32 2978675010, ; 147: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 48
	i32 2996846495, ; 148: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 60
	i32 3016983068, ; 149: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 78
	i32 3024354802, ; 150: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 55
	i32 3044182254, ; 151: FormsViewGroup => 0xb57288ee => 6
	i32 3057625584, ; 152: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 68
	i32 3111772706, ; 153: System.Runtime.Serialization => 0xb979e222 => 4
	i32 3204380047, ; 154: System.Data.dll => 0xbefef58f => 101
	i32 3211777861, ; 155: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 47
	i32 3247949154, ; 156: Mono.Security => 0xc197c562 => 111
	i32 3258312781, ; 157: Xamarin.AndroidX.CardView => 0xc235e84d => 37
	i32 3267021929, ; 158: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 35
	i32 3280506390, ; 159: System.ComponentModel.Annotations.dll => 0xc3888e16 => 2
	i32 3286872994, ; 160: SQLite-net.dll => 0xc3e9b3a2 => 13
	i32 3317135071, ; 161: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 46
	i32 3317144872, ; 162: System.Data => 0xc5b79d28 => 101
	i32 3340431453, ; 163: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 34
	i32 3345895724, ; 164: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 73
	i32 3346324047, ; 165: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 69
	i32 3353484488, ; 166: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 54
	i32 3360279109, ; 167: SQLitePCLRaw.core => 0xc849ca45 => 15
	i32 3362522851, ; 168: Xamarin.AndroidX.Core => 0xc86c06e3 => 44
	i32 3366347497, ; 169: Java.Interop => 0xc8a662e9 => 7
	i32 3374999561, ; 170: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 74
	i32 3395150330, ; 171: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 24
	i32 3404865022, ; 172: System.ServiceModel.Internals => 0xcaf21dfe => 110
	i32 3428513518, ; 173: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 9
	i32 3429136800, ; 174: System.Xml => 0xcc6479a0 => 26
	i32 3430777524, ; 175: netstandard => 0xcc7d82b4 => 1
	i32 3441283291, ; 176: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 49
	i32 3457310322, ; 177: eCommerce.Android => 0xce125e72 => 0
	i32 3476120550, ; 178: Mono.Android => 0xcf3163e6 => 10
	i32 3486566296, ; 179: System.Transactions => 0xcfd0c798 => 102
	i32 3493954962, ; 180: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 39
	i32 3501239056, ; 181: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 35
	i32 3509114376, ; 182: System.Xml.Linq => 0xd128d608 => 27
	i32 3536029504, ; 183: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 89
	i32 3567349600, ; 184: System.ComponentModel.Composition.dll => 0xd4a16f60 => 107
	i32 3618140916, ; 185: Xamarin.AndroidX.Preference => 0xd7a872f4 => 71
	i32 3627220390, ; 186: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 72
	i32 3632359727, ; 187: Xamarin.Forms.Platform => 0xd881692f => 90
	i32 3633644679, ; 188: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 30
	i32 3641597786, ; 189: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 58
	i32 3645089577, ; 190: System.ComponentModel.DataAnnotations => 0xd943a729 => 109
	i32 3672681054, ; 191: Mono.Android.dll => 0xdae8aa5e => 10
	i32 3676310014, ; 192: System.Web.Services.dll => 0xdb2009fe => 108
	i32 3682565725, ; 193: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 36
	i32 3684561358, ; 194: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 39
	i32 3689375977, ; 195: System.Drawing.Common => 0xdbe768e9 => 104
	i32 3706696989, ; 196: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 43
	i32 3718780102, ; 197: Xamarin.AndroidX.Annotation => 0xdda814c6 => 29
	i32 3724971120, ; 198: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 68
	i32 3754567612, ; 199: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 17
	i32 3758932259, ; 200: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 56
	i32 3786282454, ; 201: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 38
	i32 3822602673, ; 202: Xamarin.AndroidX.Media => 0xe3d849b1 => 66
	i32 3829621856, ; 203: System.Numerics.dll => 0xe4436460 => 22
	i32 3841636137, ; 204: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 8
	i32 3876362041, ; 205: SQLite-net => 0xe70c9739 => 13
	i32 3885922214, ; 206: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 81
	i32 3888767677, ; 207: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 73
	i32 3896760992, ; 208: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 44
	i32 3920810846, ; 209: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 106
	i32 3921031405, ; 210: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 84
	i32 3931092270, ; 211: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 70
	i32 3945713374, ; 212: System.Data.DataSetExtensions.dll => 0xeb2ecede => 103
	i32 3955647286, ; 213: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 32
	i32 3959773229, ; 214: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 60
	i32 4025784931, ; 215: System.Memory => 0xeff49a63 => 21
	i32 4101593132, ; 216: Xamarin.AndroidX.Emoji2 => 0xf479582c => 50
	i32 4105002889, ; 217: Mono.Security.dll => 0xf4ad5f89 => 111
	i32 4126470640, ; 218: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 9
	i32 4151237749, ; 219: System.Core => 0xf76edc75 => 19
	i32 4182413190, ; 220: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 63
	i32 4256097574, ; 221: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 43
	i32 4260525087, ; 222: System.Buffers => 0xfdf2741f => 18
	i32 4292120959 ; 223: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 63
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [224 x i32] [
	i32 61, i32 93, i32 88, i32 77, i32 77, i32 97, i32 2, i32 38, ; 0..7
	i32 79, i32 36, i32 55, i32 108, i32 41, i32 59, i32 53, i32 28, ; 8..15
	i32 22, i32 57, i32 16, i32 0, i32 21, i32 40, i32 87, i32 52, ; 16..23
	i32 5, i32 11, i32 20, i32 53, i32 65, i32 102, i32 97, i32 106, ; 24..31
	i32 46, i32 51, i32 84, i32 33, i32 27, i32 99, i32 94, i32 98, ; 32..39
	i32 14, i32 105, i32 104, i32 72, i32 12, i32 93, i32 98, i32 57, ; 40..47
	i32 6, i32 76, i32 8, i32 32, i32 90, i32 62, i32 96, i32 20, ; 48..55
	i32 82, i32 69, i32 33, i32 78, i32 83, i32 99, i32 15, i32 48, ; 56..63
	i32 110, i32 76, i32 66, i32 42, i32 24, i32 91, i32 105, i32 31, ; 64..71
	i32 47, i32 4, i32 64, i32 86, i32 51, i32 45, i32 3, i32 25, ; 72..79
	i32 80, i32 92, i32 41, i32 95, i32 16, i32 37, i32 79, i32 19, ; 80..87
	i32 52, i32 64, i32 96, i32 92, i32 70, i32 87, i32 91, i32 34, ; 88..95
	i32 67, i32 95, i32 18, i32 62, i32 58, i32 25, i32 23, i32 54, ; 96..103
	i32 17, i32 89, i32 100, i32 3, i32 82, i32 65, i32 67, i32 56, ; 104..111
	i32 74, i32 5, i32 29, i32 50, i32 71, i32 109, i32 14, i32 40, ; 112..119
	i32 1, i32 7, i32 103, i32 61, i32 83, i32 100, i32 45, i32 49, ; 120..127
	i32 59, i32 80, i32 28, i32 31, i32 88, i32 94, i32 85, i32 75, ; 128..135
	i32 42, i32 26, i32 75, i32 85, i32 81, i32 12, i32 107, i32 11, ; 136..143
	i32 86, i32 23, i32 30, i32 48, i32 60, i32 78, i32 55, i32 6, ; 144..151
	i32 68, i32 4, i32 101, i32 47, i32 111, i32 37, i32 35, i32 2, ; 152..159
	i32 13, i32 46, i32 101, i32 34, i32 73, i32 69, i32 54, i32 15, ; 160..167
	i32 44, i32 7, i32 74, i32 24, i32 110, i32 9, i32 26, i32 1, ; 168..175
	i32 49, i32 0, i32 10, i32 102, i32 39, i32 35, i32 27, i32 89, ; 176..183
	i32 107, i32 71, i32 72, i32 90, i32 30, i32 58, i32 109, i32 10, ; 184..191
	i32 108, i32 36, i32 39, i32 104, i32 43, i32 29, i32 68, i32 17, ; 192..199
	i32 56, i32 38, i32 66, i32 22, i32 8, i32 13, i32 81, i32 73, ; 200..207
	i32 44, i32 106, i32 84, i32 70, i32 103, i32 32, i32 60, i32 21, ; 208..215
	i32 50, i32 111, i32 9, i32 19, i32 63, i32 43, i32 18, i32 63 ; 224..223
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
