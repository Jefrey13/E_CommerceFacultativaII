; ModuleID = 'obj\Debug\130\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Debug\130\android\marshal_methods.armeabi-v7a.ll"
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
@assembly_image_cache_hashes = local_unnamed_addr constant [200 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 49
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 81
	i32 57263871, ; 2: Xamarin.Forms.Core.dll => 0x369c6ff => 76
	i32 101534019, ; 3: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 65
	i32 120558881, ; 4: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 65
	i32 134690465, ; 5: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 85
	i32 165246403, ; 6: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 26
	i32 182336117, ; 7: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 67
	i32 209399409, ; 8: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 24
	i32 230216969, ; 9: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 43
	i32 232815796, ; 10: System.Web.Services => 0xde07cb4 => 98
	i32 261689757, ; 11: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 29
	i32 278686392, ; 12: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 47
	i32 280482487, ; 13: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 41
	i32 318968648, ; 14: Xamarin.AndroidX.Activity.dll => 0x13031348 => 16
	i32 321597661, ; 15: System.Numerics => 0x132b30dd => 11
	i32 342366114, ; 16: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 45
	i32 350334464, ; 17: eCommerce.Android.dll => 0x14e1ae00 => 0
	i32 441335492, ; 18: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 28
	i32 442521989, ; 19: Xamarin.Essentials => 0x1a605985 => 75
	i32 450948140, ; 20: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 40
	i32 462607065, ; 21: eCommerce => 0x1b92d2d9 => 3
	i32 465846621, ; 22: mscorlib => 0x1bc4415d => 7
	i32 469710990, ; 23: System.dll => 0x1bff388e => 10
	i32 476646585, ; 24: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 41
	i32 486930444, ; 25: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 53
	i32 526420162, ; 26: System.Transactions.dll => 0x1f6088c2 => 92
	i32 527452488, ; 27: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 85
	i32 605376203, ; 28: System.IO.Compression.FileSystem => 0x24154ecb => 96
	i32 627609679, ; 29: Xamarin.AndroidX.CustomView => 0x2568904f => 34
	i32 639843206, ; 30: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 39
	i32 663517072, ; 31: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 72
	i32 666292255, ; 32: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 21
	i32 690569205, ; 33: System.Xml.Linq.dll => 0x29293ff5 => 15
	i32 691348768, ; 34: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 87
	i32 700284507, ; 35: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 82
	i32 720511267, ; 36: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 86
	i32 775507847, ; 37: System.IO.Compression => 0x2e394f87 => 95
	i32 809851609, ; 38: System.Drawing.Common.dll => 0x30455ad9 => 94
	i32 843511501, ; 39: Xamarin.AndroidX.Print => 0x3246f6cd => 60
	i32 902159924, ; 40: Rg.Plugins.Popup => 0x35c5de34 => 8
	i32 928116545, ; 41: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 81
	i32 956575887, ; 42: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 86
	i32 967690846, ; 43: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 45
	i32 974778368, ; 44: FormsViewGroup.dll => 0x3a19f000 => 4
	i32 1012816738, ; 45: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 64
	i32 1035644815, ; 46: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 20
	i32 1042160112, ; 47: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 78
	i32 1052210849, ; 48: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 50
	i32 1084122840, ; 49: Xamarin.Kotlin.StdLib => 0x409e66d8 => 84
	i32 1098259244, ; 50: System => 0x41761b2c => 10
	i32 1175144683, ; 51: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 70
	i32 1178241025, ; 52: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 57
	i32 1204270330, ; 53: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 21
	i32 1264511973, ; 54: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 66
	i32 1267360935, ; 55: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 71
	i32 1275534314, ; 56: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 87
	i32 1293217323, ; 57: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 36
	i32 1365406463, ; 58: System.ServiceModel.Internals.dll => 0x516272ff => 89
	i32 1376866003, ; 59: Xamarin.AndroidX.SavedState => 0x52114ed3 => 64
	i32 1395857551, ; 60: Xamarin.AndroidX.Media.dll => 0x5333188f => 54
	i32 1406073936, ; 61: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 30
	i32 1460219004, ; 62: Xamarin.Forms.Xaml => 0x57092c7c => 79
	i32 1462112819, ; 63: System.IO.Compression.dll => 0x57261233 => 95
	i32 1469204771, ; 64: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 19
	i32 1582372066, ; 65: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 35
	i32 1592978981, ; 66: System.Runtime.Serialization.dll => 0x5ef2ee25 => 2
	i32 1622152042, ; 67: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 52
	i32 1624863272, ; 68: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 74
	i32 1635184631, ; 69: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 39
	i32 1636350590, ; 70: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 33
	i32 1639515021, ; 71: System.Net.Http.dll => 0x61b9038d => 1
	i32 1657153582, ; 72: System.Runtime => 0x62c6282e => 13
	i32 1658241508, ; 73: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 68
	i32 1658251792, ; 74: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 80
	i32 1670060433, ; 75: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 29
	i32 1698840827, ; 76: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 83
	i32 1729485958, ; 77: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 25
	i32 1766324549, ; 78: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 67
	i32 1776026572, ; 79: System.Core.dll => 0x69dc03cc => 9
	i32 1788241197, ; 80: Xamarin.AndroidX.Fragment => 0x6a96652d => 40
	i32 1808609942, ; 81: Xamarin.AndroidX.Loader => 0x6bcd3296 => 52
	i32 1813058853, ; 82: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 84
	i32 1813201214, ; 83: Xamarin.Google.Android.Material => 0x6c13413e => 80
	i32 1818569960, ; 84: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 58
	i32 1867746548, ; 85: Xamarin.Essentials.dll => 0x6f538cf4 => 75
	i32 1878053835, ; 86: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 79
	i32 1885316902, ; 87: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 22
	i32 1919157823, ; 88: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 55
	i32 1983156543, ; 89: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 83
	i32 2019465201, ; 90: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 50
	i32 2055257422, ; 91: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 46
	i32 2079903147, ; 92: System.Runtime.dll => 0x7bf8cdab => 13
	i32 2090596640, ; 93: System.Numerics.Vectors => 0x7c9bf920 => 12
	i32 2097448633, ; 94: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 42
	i32 2126786730, ; 95: Xamarin.Forms.Platform.Android => 0x7ec430aa => 77
	i32 2201107256, ; 96: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 88
	i32 2201231467, ; 97: System.Net.Http => 0x8334206b => 1
	i32 2217644978, ; 98: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 70
	i32 2244775296, ; 99: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 53
	i32 2256548716, ; 100: Xamarin.AndroidX.MultiDex => 0x8680336c => 55
	i32 2261435625, ; 101: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 44
	i32 2279755925, ; 102: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 62
	i32 2312970370, ; 103: eCommerce.dll => 0x89dd2082 => 3
	i32 2315684594, ; 104: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 17
	i32 2403452196, ; 105: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 38
	i32 2409053734, ; 106: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 59
	i32 2465532216, ; 107: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 28
	i32 2471841756, ; 108: netstandard.dll => 0x93554fdc => 90
	i32 2475788418, ; 109: Java.Interop.dll => 0x93918882 => 5
	i32 2501346920, ; 110: System.Data.DataSetExtensions => 0x95178668 => 93
	i32 2505896520, ; 111: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 49
	i32 2581819634, ; 112: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 71
	i32 2605712449, ; 113: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 88
	i32 2620871830, ; 114: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 33
	i32 2624644809, ; 115: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 37
	i32 2633051222, ; 116: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 47
	i32 2701096212, ; 117: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 68
	i32 2732626843, ; 118: Xamarin.AndroidX.Activity => 0xa2e0939b => 16
	i32 2737747696, ; 119: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 19
	i32 2766581644, ; 120: Xamarin.Forms.Core => 0xa4e6af8c => 76
	i32 2770495804, ; 121: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 82
	i32 2778768386, ; 122: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 73
	i32 2779977773, ; 123: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 63
	i32 2810250172, ; 124: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 30
	i32 2819470561, ; 125: System.Xml.dll => 0xa80db4e1 => 14
	i32 2821294376, ; 126: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 63
	i32 2853208004, ; 127: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 73
	i32 2855708567, ; 128: Xamarin.AndroidX.Transition => 0xaa36a797 => 69
	i32 2861816565, ; 129: Rg.Plugins.Popup.dll => 0xaa93daf5 => 8
	i32 2903344695, ; 130: System.ComponentModel.Composition => 0xad0d8637 => 97
	i32 2905242038, ; 131: mscorlib.dll => 0xad2a79b6 => 7
	i32 2916838712, ; 132: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 74
	i32 2919462931, ; 133: System.Numerics.Vectors.dll => 0xae037813 => 12
	i32 2921128767, ; 134: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 18
	i32 2978675010, ; 135: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 36
	i32 2996846495, ; 136: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 48
	i32 3016983068, ; 137: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 66
	i32 3024354802, ; 138: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 43
	i32 3044182254, ; 139: FormsViewGroup => 0xb57288ee => 4
	i32 3057625584, ; 140: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 56
	i32 3111772706, ; 141: System.Runtime.Serialization => 0xb979e222 => 2
	i32 3204380047, ; 142: System.Data.dll => 0xbefef58f => 91
	i32 3211777861, ; 143: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 35
	i32 3247949154, ; 144: Mono.Security => 0xc197c562 => 99
	i32 3258312781, ; 145: Xamarin.AndroidX.CardView => 0xc235e84d => 25
	i32 3267021929, ; 146: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 23
	i32 3317135071, ; 147: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 34
	i32 3317144872, ; 148: System.Data => 0xc5b79d28 => 91
	i32 3340431453, ; 149: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 22
	i32 3345895724, ; 150: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 61
	i32 3346324047, ; 151: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 57
	i32 3353484488, ; 152: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 42
	i32 3362522851, ; 153: Xamarin.AndroidX.Core => 0xc86c06e3 => 32
	i32 3366347497, ; 154: Java.Interop => 0xc8a662e9 => 5
	i32 3374999561, ; 155: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 62
	i32 3404865022, ; 156: System.ServiceModel.Internals => 0xcaf21dfe => 89
	i32 3429136800, ; 157: System.Xml => 0xcc6479a0 => 14
	i32 3430777524, ; 158: netstandard => 0xcc7d82b4 => 90
	i32 3441283291, ; 159: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 37
	i32 3457310322, ; 160: eCommerce.Android => 0xce125e72 => 0
	i32 3476120550, ; 161: Mono.Android => 0xcf3163e6 => 6
	i32 3486566296, ; 162: System.Transactions => 0xcfd0c798 => 92
	i32 3493954962, ; 163: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 27
	i32 3501239056, ; 164: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 23
	i32 3509114376, ; 165: System.Xml.Linq => 0xd128d608 => 15
	i32 3536029504, ; 166: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 77
	i32 3567349600, ; 167: System.ComponentModel.Composition.dll => 0xd4a16f60 => 97
	i32 3618140916, ; 168: Xamarin.AndroidX.Preference => 0xd7a872f4 => 59
	i32 3627220390, ; 169: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 60
	i32 3632359727, ; 170: Xamarin.Forms.Platform => 0xd881692f => 78
	i32 3633644679, ; 171: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 18
	i32 3641597786, ; 172: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 46
	i32 3672681054, ; 173: Mono.Android.dll => 0xdae8aa5e => 6
	i32 3676310014, ; 174: System.Web.Services.dll => 0xdb2009fe => 98
	i32 3682565725, ; 175: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 24
	i32 3684561358, ; 176: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 27
	i32 3689375977, ; 177: System.Drawing.Common => 0xdbe768e9 => 94
	i32 3706696989, ; 178: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 31
	i32 3718780102, ; 179: Xamarin.AndroidX.Annotation => 0xdda814c6 => 17
	i32 3724971120, ; 180: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 56
	i32 3758932259, ; 181: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 44
	i32 3786282454, ; 182: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 26
	i32 3822602673, ; 183: Xamarin.AndroidX.Media => 0xe3d849b1 => 54
	i32 3829621856, ; 184: System.Numerics.dll => 0xe4436460 => 11
	i32 3885922214, ; 185: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 69
	i32 3888767677, ; 186: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 61
	i32 3896760992, ; 187: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 32
	i32 3920810846, ; 188: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 96
	i32 3921031405, ; 189: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 72
	i32 3931092270, ; 190: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 58
	i32 3945713374, ; 191: System.Data.DataSetExtensions.dll => 0xeb2ecede => 93
	i32 3955647286, ; 192: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 20
	i32 3959773229, ; 193: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 48
	i32 4101593132, ; 194: Xamarin.AndroidX.Emoji2 => 0xf479582c => 38
	i32 4105002889, ; 195: Mono.Security.dll => 0xf4ad5f89 => 99
	i32 4151237749, ; 196: System.Core => 0xf76edc75 => 9
	i32 4182413190, ; 197: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 51
	i32 4256097574, ; 198: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 31
	i32 4292120959 ; 199: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 51
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [200 x i32] [
	i32 49, i32 81, i32 76, i32 65, i32 65, i32 85, i32 26, i32 67, ; 0..7
	i32 24, i32 43, i32 98, i32 29, i32 47, i32 41, i32 16, i32 11, ; 8..15
	i32 45, i32 0, i32 28, i32 75, i32 40, i32 3, i32 7, i32 10, ; 16..23
	i32 41, i32 53, i32 92, i32 85, i32 96, i32 34, i32 39, i32 72, ; 24..31
	i32 21, i32 15, i32 87, i32 82, i32 86, i32 95, i32 94, i32 60, ; 32..39
	i32 8, i32 81, i32 86, i32 45, i32 4, i32 64, i32 20, i32 78, ; 40..47
	i32 50, i32 84, i32 10, i32 70, i32 57, i32 21, i32 66, i32 71, ; 48..55
	i32 87, i32 36, i32 89, i32 64, i32 54, i32 30, i32 79, i32 95, ; 56..63
	i32 19, i32 35, i32 2, i32 52, i32 74, i32 39, i32 33, i32 1, ; 64..71
	i32 13, i32 68, i32 80, i32 29, i32 83, i32 25, i32 67, i32 9, ; 72..79
	i32 40, i32 52, i32 84, i32 80, i32 58, i32 75, i32 79, i32 22, ; 80..87
	i32 55, i32 83, i32 50, i32 46, i32 13, i32 12, i32 42, i32 77, ; 88..95
	i32 88, i32 1, i32 70, i32 53, i32 55, i32 44, i32 62, i32 3, ; 96..103
	i32 17, i32 38, i32 59, i32 28, i32 90, i32 5, i32 93, i32 49, ; 104..111
	i32 71, i32 88, i32 33, i32 37, i32 47, i32 68, i32 16, i32 19, ; 112..119
	i32 76, i32 82, i32 73, i32 63, i32 30, i32 14, i32 63, i32 73, ; 120..127
	i32 69, i32 8, i32 97, i32 7, i32 74, i32 12, i32 18, i32 36, ; 128..135
	i32 48, i32 66, i32 43, i32 4, i32 56, i32 2, i32 91, i32 35, ; 136..143
	i32 99, i32 25, i32 23, i32 34, i32 91, i32 22, i32 61, i32 57, ; 144..151
	i32 42, i32 32, i32 5, i32 62, i32 89, i32 14, i32 90, i32 37, ; 152..159
	i32 0, i32 6, i32 92, i32 27, i32 23, i32 15, i32 77, i32 97, ; 160..167
	i32 59, i32 60, i32 78, i32 18, i32 46, i32 6, i32 98, i32 24, ; 168..175
	i32 27, i32 94, i32 31, i32 17, i32 56, i32 44, i32 26, i32 54, ; 176..183
	i32 11, i32 69, i32 61, i32 32, i32 96, i32 72, i32 58, i32 93, ; 184..191
	i32 20, i32 48, i32 38, i32 99, i32 9, i32 51, i32 31, i32 51 ; 200..199
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
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
