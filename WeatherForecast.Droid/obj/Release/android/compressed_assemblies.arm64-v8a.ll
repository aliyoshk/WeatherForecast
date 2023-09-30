; ModuleID = 'obj/Release/android/compressed_assemblies.arm64-v8a.ll'
source_filename = "obj/Release/android/compressed_assemblies.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


%struct.CompressedAssemblyDescriptor = type {
	i32,; uint32_t uncompressed_file_size
	i8,; bool loaded
	i8*; uint8_t* data
}

%struct.CompressedAssemblies = type {
	i32,; uint32_t count
	%struct.CompressedAssemblyDescriptor*; CompressedAssemblyDescriptor* descriptors
}
@__CompressedAssemblyDescriptor_data_0 = internal global [367616 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_1 = internal global [468480 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_2 = internal global [106496 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_3 = internal global [37888 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_4 = internal global [165888 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_5 = internal global [300032 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_6 = internal global [1086976 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_7 = internal global [122368 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_8 = internal global [690176 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_9 = internal global [100352 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_10 = internal global [5120 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_11 = internal global [46080 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_12 = internal global [5120 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_13 = internal global [35328 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_14 = internal global [4608 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_15 = internal global [27136 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_16 = internal global [1073664 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_17 = internal global [747520 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_18 = internal global [41472 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_19 = internal global [230912 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_20 = internal global [38912 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_21 = internal global [7168 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_22 = internal global [6144 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_23 = internal global [5120 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_24 = internal global [65024 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_25 = internal global [1318912 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_26 = internal global [863232 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_27 = internal global [4608 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_28 = internal global [13824 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_29 = internal global [134656 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_30 = internal global [4608 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_31 = internal global [6144 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_32 = internal global [26624 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_33 = internal global [7680 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_34 = internal global [8704 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_35 = internal global [6144 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_36 = internal global [317952 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_37 = internal global [68608 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_38 = internal global [194048 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_39 = internal global [8704 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_40 = internal global [40960 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_41 = internal global [152576 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_42 = internal global [14848 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_43 = internal global [15872 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_44 = internal global [16896 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_45 = internal global [36352 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_46 = internal global [12800 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_47 = internal global [26112 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_48 = internal global [90112 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_49 = internal global [18072 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_50 = internal global [2184704 x i8] zeroinitializer, align 1


; Compressed assembly data storage
@compressed_assembly_descriptors = internal global [51 x %struct.CompressedAssemblyDescriptor] [
	; 0
	%struct.CompressedAssemblyDescriptor {
		i32 367616, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([367616 x i8], [367616 x i8]* @__CompressedAssemblyDescriptor_data_0, i32 0, i32 0); data
	}, 
	; 1
	%struct.CompressedAssemblyDescriptor {
		i32 468480, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([468480 x i8], [468480 x i8]* @__CompressedAssemblyDescriptor_data_1, i32 0, i32 0); data
	}, 
	; 2
	%struct.CompressedAssemblyDescriptor {
		i32 106496, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([106496 x i8], [106496 x i8]* @__CompressedAssemblyDescriptor_data_2, i32 0, i32 0); data
	}, 
	; 3
	%struct.CompressedAssemblyDescriptor {
		i32 37888, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([37888 x i8], [37888 x i8]* @__CompressedAssemblyDescriptor_data_3, i32 0, i32 0); data
	}, 
	; 4
	%struct.CompressedAssemblyDescriptor {
		i32 165888, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([165888 x i8], [165888 x i8]* @__CompressedAssemblyDescriptor_data_4, i32 0, i32 0); data
	}, 
	; 5
	%struct.CompressedAssemblyDescriptor {
		i32 300032, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([300032 x i8], [300032 x i8]* @__CompressedAssemblyDescriptor_data_5, i32 0, i32 0); data
	}, 
	; 6
	%struct.CompressedAssemblyDescriptor {
		i32 1086976, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([1086976 x i8], [1086976 x i8]* @__CompressedAssemblyDescriptor_data_6, i32 0, i32 0); data
	}, 
	; 7
	%struct.CompressedAssemblyDescriptor {
		i32 122368, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([122368 x i8], [122368 x i8]* @__CompressedAssemblyDescriptor_data_7, i32 0, i32 0); data
	}, 
	; 8
	%struct.CompressedAssemblyDescriptor {
		i32 690176, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([690176 x i8], [690176 x i8]* @__CompressedAssemblyDescriptor_data_8, i32 0, i32 0); data
	}, 
	; 9
	%struct.CompressedAssemblyDescriptor {
		i32 100352, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([100352 x i8], [100352 x i8]* @__CompressedAssemblyDescriptor_data_9, i32 0, i32 0); data
	}, 
	; 10
	%struct.CompressedAssemblyDescriptor {
		i32 5120, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([5120 x i8], [5120 x i8]* @__CompressedAssemblyDescriptor_data_10, i32 0, i32 0); data
	}, 
	; 11
	%struct.CompressedAssemblyDescriptor {
		i32 46080, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([46080 x i8], [46080 x i8]* @__CompressedAssemblyDescriptor_data_11, i32 0, i32 0); data
	}, 
	; 12
	%struct.CompressedAssemblyDescriptor {
		i32 5120, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([5120 x i8], [5120 x i8]* @__CompressedAssemblyDescriptor_data_12, i32 0, i32 0); data
	}, 
	; 13
	%struct.CompressedAssemblyDescriptor {
		i32 35328, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([35328 x i8], [35328 x i8]* @__CompressedAssemblyDescriptor_data_13, i32 0, i32 0); data
	}, 
	; 14
	%struct.CompressedAssemblyDescriptor {
		i32 4608, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([4608 x i8], [4608 x i8]* @__CompressedAssemblyDescriptor_data_14, i32 0, i32 0); data
	}, 
	; 15
	%struct.CompressedAssemblyDescriptor {
		i32 27136, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([27136 x i8], [27136 x i8]* @__CompressedAssemblyDescriptor_data_15, i32 0, i32 0); data
	}, 
	; 16
	%struct.CompressedAssemblyDescriptor {
		i32 1073664, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([1073664 x i8], [1073664 x i8]* @__CompressedAssemblyDescriptor_data_16, i32 0, i32 0); data
	}, 
	; 17
	%struct.CompressedAssemblyDescriptor {
		i32 747520, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([747520 x i8], [747520 x i8]* @__CompressedAssemblyDescriptor_data_17, i32 0, i32 0); data
	}, 
	; 18
	%struct.CompressedAssemblyDescriptor {
		i32 41472, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([41472 x i8], [41472 x i8]* @__CompressedAssemblyDescriptor_data_18, i32 0, i32 0); data
	}, 
	; 19
	%struct.CompressedAssemblyDescriptor {
		i32 230912, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([230912 x i8], [230912 x i8]* @__CompressedAssemblyDescriptor_data_19, i32 0, i32 0); data
	}, 
	; 20
	%struct.CompressedAssemblyDescriptor {
		i32 38912, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([38912 x i8], [38912 x i8]* @__CompressedAssemblyDescriptor_data_20, i32 0, i32 0); data
	}, 
	; 21
	%struct.CompressedAssemblyDescriptor {
		i32 7168, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([7168 x i8], [7168 x i8]* @__CompressedAssemblyDescriptor_data_21, i32 0, i32 0); data
	}, 
	; 22
	%struct.CompressedAssemblyDescriptor {
		i32 6144, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([6144 x i8], [6144 x i8]* @__CompressedAssemblyDescriptor_data_22, i32 0, i32 0); data
	}, 
	; 23
	%struct.CompressedAssemblyDescriptor {
		i32 5120, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([5120 x i8], [5120 x i8]* @__CompressedAssemblyDescriptor_data_23, i32 0, i32 0); data
	}, 
	; 24
	%struct.CompressedAssemblyDescriptor {
		i32 65024, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([65024 x i8], [65024 x i8]* @__CompressedAssemblyDescriptor_data_24, i32 0, i32 0); data
	}, 
	; 25
	%struct.CompressedAssemblyDescriptor {
		i32 1318912, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([1318912 x i8], [1318912 x i8]* @__CompressedAssemblyDescriptor_data_25, i32 0, i32 0); data
	}, 
	; 26
	%struct.CompressedAssemblyDescriptor {
		i32 863232, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([863232 x i8], [863232 x i8]* @__CompressedAssemblyDescriptor_data_26, i32 0, i32 0); data
	}, 
	; 27
	%struct.CompressedAssemblyDescriptor {
		i32 4608, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([4608 x i8], [4608 x i8]* @__CompressedAssemblyDescriptor_data_27, i32 0, i32 0); data
	}, 
	; 28
	%struct.CompressedAssemblyDescriptor {
		i32 13824, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([13824 x i8], [13824 x i8]* @__CompressedAssemblyDescriptor_data_28, i32 0, i32 0); data
	}, 
	; 29
	%struct.CompressedAssemblyDescriptor {
		i32 134656, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([134656 x i8], [134656 x i8]* @__CompressedAssemblyDescriptor_data_29, i32 0, i32 0); data
	}, 
	; 30
	%struct.CompressedAssemblyDescriptor {
		i32 4608, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([4608 x i8], [4608 x i8]* @__CompressedAssemblyDescriptor_data_30, i32 0, i32 0); data
	}, 
	; 31
	%struct.CompressedAssemblyDescriptor {
		i32 6144, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([6144 x i8], [6144 x i8]* @__CompressedAssemblyDescriptor_data_31, i32 0, i32 0); data
	}, 
	; 32
	%struct.CompressedAssemblyDescriptor {
		i32 26624, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([26624 x i8], [26624 x i8]* @__CompressedAssemblyDescriptor_data_32, i32 0, i32 0); data
	}, 
	; 33
	%struct.CompressedAssemblyDescriptor {
		i32 7680, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([7680 x i8], [7680 x i8]* @__CompressedAssemblyDescriptor_data_33, i32 0, i32 0); data
	}, 
	; 34
	%struct.CompressedAssemblyDescriptor {
		i32 8704, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([8704 x i8], [8704 x i8]* @__CompressedAssemblyDescriptor_data_34, i32 0, i32 0); data
	}, 
	; 35
	%struct.CompressedAssemblyDescriptor {
		i32 6144, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([6144 x i8], [6144 x i8]* @__CompressedAssemblyDescriptor_data_35, i32 0, i32 0); data
	}, 
	; 36
	%struct.CompressedAssemblyDescriptor {
		i32 317952, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([317952 x i8], [317952 x i8]* @__CompressedAssemblyDescriptor_data_36, i32 0, i32 0); data
	}, 
	; 37
	%struct.CompressedAssemblyDescriptor {
		i32 68608, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([68608 x i8], [68608 x i8]* @__CompressedAssemblyDescriptor_data_37, i32 0, i32 0); data
	}, 
	; 38
	%struct.CompressedAssemblyDescriptor {
		i32 194048, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([194048 x i8], [194048 x i8]* @__CompressedAssemblyDescriptor_data_38, i32 0, i32 0); data
	}, 
	; 39
	%struct.CompressedAssemblyDescriptor {
		i32 8704, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([8704 x i8], [8704 x i8]* @__CompressedAssemblyDescriptor_data_39, i32 0, i32 0); data
	}, 
	; 40
	%struct.CompressedAssemblyDescriptor {
		i32 40960, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([40960 x i8], [40960 x i8]* @__CompressedAssemblyDescriptor_data_40, i32 0, i32 0); data
	}, 
	; 41
	%struct.CompressedAssemblyDescriptor {
		i32 152576, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([152576 x i8], [152576 x i8]* @__CompressedAssemblyDescriptor_data_41, i32 0, i32 0); data
	}, 
	; 42
	%struct.CompressedAssemblyDescriptor {
		i32 14848, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([14848 x i8], [14848 x i8]* @__CompressedAssemblyDescriptor_data_42, i32 0, i32 0); data
	}, 
	; 43
	%struct.CompressedAssemblyDescriptor {
		i32 15872, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([15872 x i8], [15872 x i8]* @__CompressedAssemblyDescriptor_data_43, i32 0, i32 0); data
	}, 
	; 44
	%struct.CompressedAssemblyDescriptor {
		i32 16896, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([16896 x i8], [16896 x i8]* @__CompressedAssemblyDescriptor_data_44, i32 0, i32 0); data
	}, 
	; 45
	%struct.CompressedAssemblyDescriptor {
		i32 36352, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([36352 x i8], [36352 x i8]* @__CompressedAssemblyDescriptor_data_45, i32 0, i32 0); data
	}, 
	; 46
	%struct.CompressedAssemblyDescriptor {
		i32 12800, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([12800 x i8], [12800 x i8]* @__CompressedAssemblyDescriptor_data_46, i32 0, i32 0); data
	}, 
	; 47
	%struct.CompressedAssemblyDescriptor {
		i32 26112, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([26112 x i8], [26112 x i8]* @__CompressedAssemblyDescriptor_data_47, i32 0, i32 0); data
	}, 
	; 48
	%struct.CompressedAssemblyDescriptor {
		i32 90112, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([90112 x i8], [90112 x i8]* @__CompressedAssemblyDescriptor_data_48, i32 0, i32 0); data
	}, 
	; 49
	%struct.CompressedAssemblyDescriptor {
		i32 18072, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([18072 x i8], [18072 x i8]* @__CompressedAssemblyDescriptor_data_49, i32 0, i32 0); data
	}, 
	; 50
	%struct.CompressedAssemblyDescriptor {
		i32 2184704, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([2184704 x i8], [2184704 x i8]* @__CompressedAssemblyDescriptor_data_50, i32 0, i32 0); data
	}
], align 8; end of 'compressed_assembly_descriptors' array


; compressed_assemblies
@compressed_assemblies = local_unnamed_addr global %struct.CompressedAssemblies {
	i32 51, ; count
	%struct.CompressedAssemblyDescriptor* getelementptr inbounds ([51 x %struct.CompressedAssemblyDescriptor], [51 x %struct.CompressedAssemblyDescriptor]* @compressed_assembly_descriptors, i32 0, i32 0); descriptors
}, align 8


!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ a8a26c7b003e2524cc98acb2c2ffc2ddea0f6692"}
