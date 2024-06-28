; ModuleID = 'obj\Debug\130\android\environment.x86.ll'
source_filename = "obj\Debug\130\android\environment.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


%struct.ApplicationConfig = type {
	i8,; bool uses_mono_llvm
	i8,; bool uses_mono_aot
	i8,; bool aot_lazy_load
	i8,; bool uses_assembly_preload
	i8,; bool is_a_bundled_app
	i8,; bool broken_exception_transitions
	i8,; bool instant_run_enabled
	i8,; bool jni_add_native_method_registration_attribute_present
	i8,; bool have_runtime_config_blob
	i8,; bool have_assemblies_blob
	i8,; bool marshal_methods_enabled
	i8,; uint8_t bound_stream_io_exception_type
	i32,; uint32_t package_naming_policy
	i32,; uint32_t environment_variable_count
	i32,; uint32_t system_property_count
	i32,; uint32_t number_of_assemblies_in_apk
	i32,; uint32_t bundled_assembly_name_width
	i32,; uint32_t number_of_assembly_store_files
	i32,; uint32_t number_of_dso_cache_entries
	i32,; uint32_t android_runtime_jnienv_class_token
	i32,; uint32_t jnienv_initialize_method_token
	i32,; uint32_t jnienv_registerjninatives_method_token
	i32,; uint32_t jni_remapping_replacement_type_count
	i32,; uint32_t jni_remapping_replacement_method_index_entry_count
	i32,; uint32_t mono_components_mask
	i8*; char* android_package_name
}

%struct.AssemblyStoreAssemblyDescriptor = type {
	i32,; uint32_t data_offset
	i32,; uint32_t data_size
	i32,; uint32_t debug_data_offset
	i32,; uint32_t debug_data_size
	i32,; uint32_t config_data_offset
	i32; uint32_t config_data_size
}

%struct.AssemblyStoreSingleAssemblyRuntimeData = type {
	i8*,; uint8_t* image_data
	i8*,; uint8_t* debug_info_data
	i8*,; uint8_t* config_data
	%struct.AssemblyStoreAssemblyDescriptor*; AssemblyStoreAssemblyDescriptor* descriptor
}

%struct.AssemblyStoreRuntimeData = type {
	i8*,; uint8_t* data_start
	i32,; uint32_t assembly_count
	%struct.AssemblyStoreAssemblyDescriptor*; AssemblyStoreAssemblyDescriptor* assemblies
}

%struct.XamarinAndroidBundledAssembly = type {
	i32,; int32_t apk_fd
	i32,; uint32_t data_offset
	i32,; uint32_t data_size
	i8*,; uint8_t* data
	i32,; uint32_t name_length
	i8*; char* name
}

%struct.DSOCacheEntry = type {
	i64,; uint64_t hash
	i8,; bool ignore
	i8*,; char* name
	i8*; void* handle
}

@format_tag = local_unnamed_addr constant i64 385281960275288, align 8
@__mono_aot_mode_name = internal constant [5 x i8] c"none\00", align 1
@mono_aot_mode_name = local_unnamed_addr constant i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__mono_aot_mode_name, i32 0, i32 0), align 4

; app_environment_variables
@__app_environment_variables_n_0.0 = internal constant [15 x i8] c"MONO_GC_PARAMS\00", align 1
@__app_environment_variables_v_0.1 = internal constant [21 x i8] c"major=marksweep-conc\00", align 1
@__app_environment_variables_n_1.2 = internal constant [15 x i8] c"MONO_LOG_LEVEL\00", align 1
@__app_environment_variables_v_1.3 = internal constant [5 x i8] c"info\00", align 1
@__app_environment_variables_n_2.4 = internal constant [17 x i8] c"XAMARIN_BUILD_ID\00", align 1
@__app_environment_variables_v_2.5 = internal constant [37 x i8] c"09b02e13-05f0-40eb-999a-3dba81cd13de\00", align 1
@__app_environment_variables_n_3.6 = internal constant [28 x i8] c"XA_HTTP_CLIENT_HANDLER_TYPE\00", align 1
@__app_environment_variables_v_3.7 = internal constant [41 x i8] c"Xamarin.Android.Net.AndroidClientHandler\00", align 1
@__app_environment_variables_n_4.8 = internal constant [16 x i8] c"XA_TLS_PROVIDER\00", align 1
@__app_environment_variables_v_4.9 = internal constant [5 x i8] c"btls\00", align 1
@__app_environment_variables_n_5.10 = internal constant [29 x i8] c"__XA_PACKAGE_NAMING_POLICY__\00", align 1
@__app_environment_variables_v_5.11 = internal constant [15 x i8] c"LowercaseCrc64\00", align 1

@app_environment_variables = local_unnamed_addr constant [12 x i8*] [
	i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__app_environment_variables_n_0.0, i32 0, i32 0),
	i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__app_environment_variables_v_0.1, i32 0, i32 0),
	i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__app_environment_variables_n_1.2, i32 0, i32 0),
	i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__app_environment_variables_v_1.3, i32 0, i32 0),
	i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__app_environment_variables_n_2.4, i32 0, i32 0),
	i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__app_environment_variables_v_2.5, i32 0, i32 0),
	i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__app_environment_variables_n_3.6, i32 0, i32 0),
	i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__app_environment_variables_v_3.7, i32 0, i32 0),
	i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__app_environment_variables_n_4.8, i32 0, i32 0),
	i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__app_environment_variables_v_4.9, i32 0, i32 0),
	i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__app_environment_variables_n_5.10, i32 0, i32 0),
	i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__app_environment_variables_v_5.11, i32 0, i32 0)
], align 4

; app_system_properties
@app_system_properties = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__ApplicationConfig_android_package_name.0 = internal constant [26 x i8] c"com.companyname.ecommerce\00", align 1

; application_config
@application_config = local_unnamed_addr constant %struct.ApplicationConfig {
	i8 0, ; uses_mono_llvm
	i8 0, ; uses_mono_aot
	i8 0, ; aot_lazy_load
	i8 1, ; uses_assembly_preload
	i8 0, ; is_a_bundled_app
	i8 0, ; broken_exception_transitions
	i8 0, ; instant_run_enabled
	i8 0, ; jni_add_native_method_registration_attribute_present
	i8 0, ; have_runtime_config_blob
	i8 0, ; have_assemblies_blob
	i8 0, ; marshal_methods_enabled
	i8 1, ; bound_stream_io_exception_type
	i32 3, ; package_naming_policy
	i32 12, ; environment_variable_count
	i32 0, ; system_property_count
	i32 158, ; number_of_assemblies_in_apk
	i32 70, ; bundled_assembly_name_width
	i32 2, ; number_of_assembly_store_files
	i32 56, ; number_of_dso_cache_entries
	i32 33560116, ; android_runtime_jnienv_class_token
	i32 100762893, ; jnienv_initialize_method_token
	i32 100762892, ; jnienv_registerjninatives_method_token
	i32 0, ; jni_remapping_replacement_type_count
	i32 0, ; jni_remapping_replacement_method_index_entry_count
	i32 0, ; mono_components_mask
	i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__ApplicationConfig_android_package_name.0, i32 0, i32 0); android_package_name
}, align 4

@__DSOCacheEntry_name.1 = internal constant [21 x i8] c"libopencv_imgproc.so\00", align 1
@__DSOCacheEntry_name.2 = internal constant [31 x i8] c"libxamarin-debug-app-helper.so\00", align 1
@__DSOCacheEntry_name.3 = internal constant [24 x i8] c"libmono-profiler-log.so\00", align 1
@__DSOCacheEntry_name.4 = internal constant [16 x i8] c"libmonodroid.so\00", align 1
@__DSOCacheEntry_name.5 = internal constant [22 x i8] c"libxa-internal-api.so\00", align 1
@__DSOCacheEntry_name.6 = internal constant [30 x i8] c"libcardioRecognizer_tegra2.so\00", align 1
@__DSOCacheEntry_name.7 = internal constant [18 x i8] c"libopencv_core.so\00", align 1
@__DSOCacheEntry_name.8 = internal constant [23 x i8] c"libcardioRecognizer.so\00", align 1
@__DSOCacheEntry_name.9 = internal constant [16 x i8] c"libSkiaSharp.so\00", align 1
@__DSOCacheEntry_name.10 = internal constant [20 x i8] c"libcardioDecider.so\00", align 1
@__DSOCacheEntry_name.11 = internal constant [23 x i8] c"libmono-btls-shared.so\00", align 1
@__DSOCacheEntry_name.12 = internal constant [18 x i8] c"libmono-native.so\00", align 1
@__DSOCacheEntry_name.13 = internal constant [16 x i8] c"libe_sqlite3.so\00", align 1
@__DSOCacheEntry_name.14 = internal constant [19 x i8] c"libmonosgen-2.0.so\00", align 1

; dso_cache
@dso_cache = local_unnamed_addr global [56 x %struct.DSOCacheEntry] [
	; 0
	%struct.DSOCacheEntry {
		i64 20544678, ; hash 0x1397ca6, from name: libopencv_imgproc.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1
	%struct.DSOCacheEntry {
		i64 98567696, ; hash 0x5e00610, from name: libxamarin-debug-app-helper.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 2
	%struct.DSOCacheEntry {
		i64 134276555, ; hash 0x800e5cb, from name: libmono-profiler-log.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 3
	%struct.DSOCacheEntry {
		i64 229294244, ; hash 0xdaac0a4, from name: monodroid.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 4
	%struct.DSOCacheEntry {
		i64 331988322, ; hash 0x13c9bd62, from name: xa-internal-api
		i8 0, ; ignore
		i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 5
	%struct.DSOCacheEntry {
		i64 337003513, ; hash 0x141643f9, from name: libcardioRecognizer_tegra2
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 6
	%struct.DSOCacheEntry {
		i64 558578679, ; hash 0x214b3bf7, from name: libopencv_core
		i8 0, ; ignore
		i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 7
	%struct.DSOCacheEntry {
		i64 604579423, ; hash 0x2409265f, from name: libcardioRecognizer.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 8
	%struct.DSOCacheEntry {
		i64 713151617, ; hash 0x2a81d481, from name: libxamarin-debug-app-helper
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 9
	%struct.DSOCacheEntry {
		i64 748366034, ; hash 0x2c9b28d2, from name: monodroid
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 10
	%struct.DSOCacheEntry {
		i64 782594815, ; hash 0x2ea572ff, from name: SkiaSharp.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 11
	%struct.DSOCacheEntry {
		i64 820230765, ; hash 0x30e3ba6d, from name: libcardioDecider.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 12
	%struct.DSOCacheEntry {
		i64 862752302, ; hash 0x336c8e2e, from name: xa-internal-api.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 13
	%struct.DSOCacheEntry {
		i64 956157057, ; hash 0x38fdcc81, from name: libcardioDecider
		i8 0, ; ignore
		i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 14
	%struct.DSOCacheEntry {
		i64 1267581083, ; hash 0x4b8dc09b, from name: libopencv_core.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 15
	%struct.DSOCacheEntry {
		i64 1295752231, ; hash 0x4d3b9c27, from name: mono-btls-shared
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 16
	%struct.DSOCacheEntry {
		i64 1303594666, ; hash 0x4db346aa, from name: libcardioRecognizer
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 17
	%struct.DSOCacheEntry {
		i64 1342113219, ; hash 0x4fff05c3, from name: mono-native
		i8 0, ; ignore
		i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 18
	%struct.DSOCacheEntry {
		i64 1444299743, ; hash 0x561643df, from name: cardioRecognizer_tegra2
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 19
	%struct.DSOCacheEntry {
		i64 1516058787, ; hash 0x5a5d38a3, from name: xamarin-debug-app-helper.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 20
	%struct.DSOCacheEntry {
		i64 1675361581, ; hash 0x63dbfd2d, from name: e_sqlite3
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 21
	%struct.DSOCacheEntry {
		i64 1793551899, ; hash 0x6ae76e1b, from name: opencv_imgproc.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 22
	%struct.DSOCacheEntry {
		i64 1810752137, ; hash 0x6bede289, from name: mono-profiler-log.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 23
	%struct.DSOCacheEntry {
		i64 1817542460, ; hash 0x6c557f3c, from name: cardioRecognizer.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 24
	%struct.DSOCacheEntry {
		i64 2000825026, ; hash 0x77422ac2, from name: opencv_imgproc
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 25
	%struct.DSOCacheEntry {
		i64 2041340798, ; hash 0x79ac637e, from name: cardioDecider
		i8 0, ; ignore
		i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 26
	%struct.DSOCacheEntry {
		i64 2072997827, ; hash 0x7b8f6fc3, from name: mono-native.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 27
	%struct.DSOCacheEntry {
		i64 2104158136, ; hash 0x7d6ae7b8, from name: cardioDecider.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 28
	%struct.DSOCacheEntry {
		i64 2229681966, ; hash 0x84e63f2e, from name: xamarin-debug-app-helper
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 29
	%struct.DSOCacheEntry {
		i64 2496112763, ; hash 0x94c7a87b, from name: libmonosgen-2.0
		i8 0, ; ignore
		i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 30
	%struct.DSOCacheEntry {
		i64 2531241668, ; hash 0x96dfaec4, from name: libmono-native
		i8 0, ; ignore
		i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 31
	%struct.DSOCacheEntry {
		i64 2658598962, ; hash 0x9e770032, from name: monosgen-2.0.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 32
	%struct.DSOCacheEntry {
		i64 2659904736, ; hash 0x9e8aece0, from name: opencv_core.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 33
	%struct.DSOCacheEntry {
		i64 2843644522, ; hash 0xa97e926a, from name: libxa-internal-api.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 34
	%struct.DSOCacheEntry {
		i64 2862676104, ; hash 0xaaa0f888, from name: e_sqlite3.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 35
	%struct.DSOCacheEntry {
		i64 2882434345, ; hash 0xabce7529, from name: libmono-profiler-log
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 36
	%struct.DSOCacheEntry {
		i64 2952091647, ; hash 0xaff557ff, from name: cardioRecognizer_tegra2.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 37
	%struct.DSOCacheEntry {
		i64 3040983544, ; hash 0xb541b9f8, from name: libSkiaSharp
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 38
	%struct.DSOCacheEntry {
		i64 3050332087, ; hash 0xb5d05fb7, from name: libSkiaSharp.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 39
	%struct.DSOCacheEntry {
		i64 3056707377, ; hash 0xb631a731, from name: libmono-native.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 40
	%struct.DSOCacheEntry {
		i64 3072569140, ; hash 0xb723af34, from name: libcardioRecognizer_tegra2.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 41
	%struct.DSOCacheEntry {
		i64 3301066001, ; hash 0xc4c24511, from name: libopencv_imgproc
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 42
	%struct.DSOCacheEntry {
		i64 3322182132, ; hash 0xc60479f4, from name: libmono-btls-shared
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 43
	%struct.DSOCacheEntry {
		i64 3340387945, ; hash 0xc71a4669, from name: SkiaSharp
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 44
	%struct.DSOCacheEntry {
		i64 3422266863, ; hash 0xcbfba5ef, from name: libmonodroid.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 45
	%struct.DSOCacheEntry {
		i64 3572049353, ; hash 0xd4e925c9, from name: libxa-internal-api
		i8 0, ; ignore
		i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 46
	%struct.DSOCacheEntry {
		i64 3611850339, ; hash 0xd7487663, from name: mono-profiler-log
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 47
	%struct.DSOCacheEntry {
		i64 3636393175, ; hash 0xd8bef4d7, from name: libmonodroid
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 48
	%struct.DSOCacheEntry {
		i64 3677509879, ; hash 0xdb3258f7, from name: libe_sqlite3
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 49
	%struct.DSOCacheEntry {
		i64 3709087552, ; hash 0xdd142f40, from name: libmono-btls-shared.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 50
	%struct.DSOCacheEntry {
		i64 3731077681, ; hash 0xde63ba31, from name: cardioRecognizer
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 51
	%struct.DSOCacheEntry {
		i64 3740114804, ; hash 0xdeed9f74, from name: libe_sqlite3.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 52
	%struct.DSOCacheEntry {
		i64 3790421216, ; hash 0xe1ed3ce0, from name: monosgen-2.0
		i8 0, ; ignore
		i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 53
	%struct.DSOCacheEntry {
		i64 3797100270, ; hash 0xe25326ee, from name: mono-btls-shared.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 54
	%struct.DSOCacheEntry {
		i64 3817984437, ; hash 0xe391d1b5, from name: libmonosgen-2.0.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 55
	%struct.DSOCacheEntry {
		i64 3981006950, ; hash 0xed495866, from name: opencv_core
		i8 0, ; ignore
		i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}
], align 8; end of 'dso_cache' array

@__XamarinAndroidBundledAssembly_name_0 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_1 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_2 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_3 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_4 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_5 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_6 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_7 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_8 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_9 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_10 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_11 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_12 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_13 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_14 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_15 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_16 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_17 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_18 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_19 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_20 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_21 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_22 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_23 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_24 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_25 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_26 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_27 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_28 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_29 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_30 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_31 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_32 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_33 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_34 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_35 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_36 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_37 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_38 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_39 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_40 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_41 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_42 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_43 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_44 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_45 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_46 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_47 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_48 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_49 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_50 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_51 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_52 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_53 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_54 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_55 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_56 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_57 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_58 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_59 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_60 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_61 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_62 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_63 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_64 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_65 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_66 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_67 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_68 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_69 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_70 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_71 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_72 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_73 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_74 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_75 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_76 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_77 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_78 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_79 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_80 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_81 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_82 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_83 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_84 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_85 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_86 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_87 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_88 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_89 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_90 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_91 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_92 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_93 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_94 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_95 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_96 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_97 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_98 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_99 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_100 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_101 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_102 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_103 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_104 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_105 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_106 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_107 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_108 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_109 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_110 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_111 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_112 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_113 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_114 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_115 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_116 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_117 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_118 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_119 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_120 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_121 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_122 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_123 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_124 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_125 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_126 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_127 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_128 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_129 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_130 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_131 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_132 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_133 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_134 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_135 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_136 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_137 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_138 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_139 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_140 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_141 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_142 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_143 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_144 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_145 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_146 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_147 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_148 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_149 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_150 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_151 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_152 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_153 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_154 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_155 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_156 = internal global [70 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_157 = internal global [70 x i8] zeroinitializer, align 1


; Bundled assembly name buffers, all 70 bytes long
@bundled_assemblies = local_unnamed_addr global [158 x %struct.XamarinAndroidBundledAssembly] [
	; 0
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_0, i32 0, i32 0); name
	}, 
	; 1
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_1, i32 0, i32 0); name
	}, 
	; 2
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_2, i32 0, i32 0); name
	}, 
	; 3
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_3, i32 0, i32 0); name
	}, 
	; 4
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_4, i32 0, i32 0); name
	}, 
	; 5
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_5, i32 0, i32 0); name
	}, 
	; 6
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_6, i32 0, i32 0); name
	}, 
	; 7
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_7, i32 0, i32 0); name
	}, 
	; 8
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_8, i32 0, i32 0); name
	}, 
	; 9
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_9, i32 0, i32 0); name
	}, 
	; 10
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_10, i32 0, i32 0); name
	}, 
	; 11
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_11, i32 0, i32 0); name
	}, 
	; 12
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_12, i32 0, i32 0); name
	}, 
	; 13
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_13, i32 0, i32 0); name
	}, 
	; 14
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_14, i32 0, i32 0); name
	}, 
	; 15
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_15, i32 0, i32 0); name
	}, 
	; 16
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_16, i32 0, i32 0); name
	}, 
	; 17
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_17, i32 0, i32 0); name
	}, 
	; 18
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_18, i32 0, i32 0); name
	}, 
	; 19
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_19, i32 0, i32 0); name
	}, 
	; 20
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_20, i32 0, i32 0); name
	}, 
	; 21
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_21, i32 0, i32 0); name
	}, 
	; 22
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_22, i32 0, i32 0); name
	}, 
	; 23
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_23, i32 0, i32 0); name
	}, 
	; 24
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_24, i32 0, i32 0); name
	}, 
	; 25
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_25, i32 0, i32 0); name
	}, 
	; 26
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_26, i32 0, i32 0); name
	}, 
	; 27
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_27, i32 0, i32 0); name
	}, 
	; 28
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_28, i32 0, i32 0); name
	}, 
	; 29
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_29, i32 0, i32 0); name
	}, 
	; 30
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_30, i32 0, i32 0); name
	}, 
	; 31
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_31, i32 0, i32 0); name
	}, 
	; 32
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_32, i32 0, i32 0); name
	}, 
	; 33
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_33, i32 0, i32 0); name
	}, 
	; 34
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_34, i32 0, i32 0); name
	}, 
	; 35
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_35, i32 0, i32 0); name
	}, 
	; 36
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_36, i32 0, i32 0); name
	}, 
	; 37
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_37, i32 0, i32 0); name
	}, 
	; 38
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_38, i32 0, i32 0); name
	}, 
	; 39
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_39, i32 0, i32 0); name
	}, 
	; 40
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_40, i32 0, i32 0); name
	}, 
	; 41
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_41, i32 0, i32 0); name
	}, 
	; 42
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_42, i32 0, i32 0); name
	}, 
	; 43
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_43, i32 0, i32 0); name
	}, 
	; 44
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_44, i32 0, i32 0); name
	}, 
	; 45
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_45, i32 0, i32 0); name
	}, 
	; 46
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_46, i32 0, i32 0); name
	}, 
	; 47
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_47, i32 0, i32 0); name
	}, 
	; 48
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_48, i32 0, i32 0); name
	}, 
	; 49
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_49, i32 0, i32 0); name
	}, 
	; 50
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_50, i32 0, i32 0); name
	}, 
	; 51
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_51, i32 0, i32 0); name
	}, 
	; 52
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_52, i32 0, i32 0); name
	}, 
	; 53
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_53, i32 0, i32 0); name
	}, 
	; 54
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_54, i32 0, i32 0); name
	}, 
	; 55
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_55, i32 0, i32 0); name
	}, 
	; 56
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_56, i32 0, i32 0); name
	}, 
	; 57
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_57, i32 0, i32 0); name
	}, 
	; 58
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_58, i32 0, i32 0); name
	}, 
	; 59
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_59, i32 0, i32 0); name
	}, 
	; 60
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_60, i32 0, i32 0); name
	}, 
	; 61
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_61, i32 0, i32 0); name
	}, 
	; 62
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_62, i32 0, i32 0); name
	}, 
	; 63
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_63, i32 0, i32 0); name
	}, 
	; 64
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_64, i32 0, i32 0); name
	}, 
	; 65
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_65, i32 0, i32 0); name
	}, 
	; 66
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_66, i32 0, i32 0); name
	}, 
	; 67
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_67, i32 0, i32 0); name
	}, 
	; 68
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_68, i32 0, i32 0); name
	}, 
	; 69
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_69, i32 0, i32 0); name
	}, 
	; 70
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_70, i32 0, i32 0); name
	}, 
	; 71
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_71, i32 0, i32 0); name
	}, 
	; 72
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_72, i32 0, i32 0); name
	}, 
	; 73
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_73, i32 0, i32 0); name
	}, 
	; 74
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_74, i32 0, i32 0); name
	}, 
	; 75
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_75, i32 0, i32 0); name
	}, 
	; 76
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_76, i32 0, i32 0); name
	}, 
	; 77
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_77, i32 0, i32 0); name
	}, 
	; 78
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_78, i32 0, i32 0); name
	}, 
	; 79
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_79, i32 0, i32 0); name
	}, 
	; 80
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_80, i32 0, i32 0); name
	}, 
	; 81
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_81, i32 0, i32 0); name
	}, 
	; 82
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_82, i32 0, i32 0); name
	}, 
	; 83
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_83, i32 0, i32 0); name
	}, 
	; 84
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_84, i32 0, i32 0); name
	}, 
	; 85
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_85, i32 0, i32 0); name
	}, 
	; 86
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_86, i32 0, i32 0); name
	}, 
	; 87
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_87, i32 0, i32 0); name
	}, 
	; 88
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_88, i32 0, i32 0); name
	}, 
	; 89
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_89, i32 0, i32 0); name
	}, 
	; 90
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_90, i32 0, i32 0); name
	}, 
	; 91
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_91, i32 0, i32 0); name
	}, 
	; 92
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_92, i32 0, i32 0); name
	}, 
	; 93
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_93, i32 0, i32 0); name
	}, 
	; 94
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_94, i32 0, i32 0); name
	}, 
	; 95
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_95, i32 0, i32 0); name
	}, 
	; 96
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_96, i32 0, i32 0); name
	}, 
	; 97
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_97, i32 0, i32 0); name
	}, 
	; 98
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_98, i32 0, i32 0); name
	}, 
	; 99
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_99, i32 0, i32 0); name
	}, 
	; 100
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_100, i32 0, i32 0); name
	}, 
	; 101
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_101, i32 0, i32 0); name
	}, 
	; 102
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_102, i32 0, i32 0); name
	}, 
	; 103
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_103, i32 0, i32 0); name
	}, 
	; 104
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_104, i32 0, i32 0); name
	}, 
	; 105
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_105, i32 0, i32 0); name
	}, 
	; 106
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_106, i32 0, i32 0); name
	}, 
	; 107
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_107, i32 0, i32 0); name
	}, 
	; 108
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_108, i32 0, i32 0); name
	}, 
	; 109
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_109, i32 0, i32 0); name
	}, 
	; 110
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_110, i32 0, i32 0); name
	}, 
	; 111
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_111, i32 0, i32 0); name
	}, 
	; 112
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_112, i32 0, i32 0); name
	}, 
	; 113
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_113, i32 0, i32 0); name
	}, 
	; 114
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_114, i32 0, i32 0); name
	}, 
	; 115
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_115, i32 0, i32 0); name
	}, 
	; 116
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_116, i32 0, i32 0); name
	}, 
	; 117
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_117, i32 0, i32 0); name
	}, 
	; 118
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_118, i32 0, i32 0); name
	}, 
	; 119
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_119, i32 0, i32 0); name
	}, 
	; 120
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_120, i32 0, i32 0); name
	}, 
	; 121
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_121, i32 0, i32 0); name
	}, 
	; 122
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_122, i32 0, i32 0); name
	}, 
	; 123
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_123, i32 0, i32 0); name
	}, 
	; 124
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_124, i32 0, i32 0); name
	}, 
	; 125
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_125, i32 0, i32 0); name
	}, 
	; 126
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_126, i32 0, i32 0); name
	}, 
	; 127
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_127, i32 0, i32 0); name
	}, 
	; 128
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_128, i32 0, i32 0); name
	}, 
	; 129
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_129, i32 0, i32 0); name
	}, 
	; 130
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_130, i32 0, i32 0); name
	}, 
	; 131
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_131, i32 0, i32 0); name
	}, 
	; 132
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_132, i32 0, i32 0); name
	}, 
	; 133
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_133, i32 0, i32 0); name
	}, 
	; 134
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_134, i32 0, i32 0); name
	}, 
	; 135
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_135, i32 0, i32 0); name
	}, 
	; 136
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_136, i32 0, i32 0); name
	}, 
	; 137
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_137, i32 0, i32 0); name
	}, 
	; 138
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_138, i32 0, i32 0); name
	}, 
	; 139
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_139, i32 0, i32 0); name
	}, 
	; 140
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_140, i32 0, i32 0); name
	}, 
	; 141
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_141, i32 0, i32 0); name
	}, 
	; 142
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_142, i32 0, i32 0); name
	}, 
	; 143
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_143, i32 0, i32 0); name
	}, 
	; 144
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_144, i32 0, i32 0); name
	}, 
	; 145
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_145, i32 0, i32 0); name
	}, 
	; 146
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_146, i32 0, i32 0); name
	}, 
	; 147
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_147, i32 0, i32 0); name
	}, 
	; 148
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_148, i32 0, i32 0); name
	}, 
	; 149
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_149, i32 0, i32 0); name
	}, 
	; 150
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_150, i32 0, i32 0); name
	}, 
	; 151
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_151, i32 0, i32 0); name
	}, 
	; 152
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_152, i32 0, i32 0); name
	}, 
	; 153
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_153, i32 0, i32 0); name
	}, 
	; 154
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_154, i32 0, i32 0); name
	}, 
	; 155
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_155, i32 0, i32 0); name
	}, 
	; 156
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_156, i32 0, i32 0); name
	}, 
	; 157
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 70, ; name_length
		i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__XamarinAndroidBundledAssembly_name_157, i32 0, i32 0); name
	}
], align 4; end of 'bundled_assemblies' array


; Assembly store individual assembly data
@assembly_store_bundled_assemblies = local_unnamed_addr global [0 x %struct.AssemblyStoreSingleAssemblyRuntimeData] zeroinitializer, align 4

; Assembly store data
@assembly_stores = local_unnamed_addr global [0 x %struct.AssemblyStoreRuntimeData] zeroinitializer, align 4

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
