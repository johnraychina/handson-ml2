ڋ
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.16.22v2.16.1-19-g810f233968c8�t
w
biasVarHandleOp*
_output_shapes
: *

debug_namebias/*
dtype0*
shape:*
shared_namebias
Y
bias/Read/ReadVariableOpReadVariableOpbias*
_output_shapes
:*
dtype0
�
weightVarHandleOp*
_output_shapes
: *

debug_name	weight/*
dtype0*
shape
:*
shared_nameweight
a
weight/Read/ReadVariableOpReadVariableOpweight*
_output_shapes

:*
dtype0
}
bias_1VarHandleOp*
_output_shapes
: *

debug_name	bias_1/*
dtype0*
shape:*
shared_namebias_1
]
bias_1/Read/ReadVariableOpReadVariableOpbias_1*
_output_shapes
:*
dtype0
�
weight_1VarHandleOp*
_output_shapes
: *

debug_name	weight_1/*
dtype0*
shape
:*
shared_name
weight_1
e
weight_1/Read/ReadVariableOpReadVariableOpweight_1*
_output_shapes

:*
dtype0

NoOpNoOp
�
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B�
<
dense_1
dense_2
__call__

signatures*

w
b*

w
b*

	trace_0

trace_1* 
* 
F@
VARIABLE_VALUEweight_1$dense_1/w/.ATTRIBUTES/VARIABLE_VALUE*
D>
VARIABLE_VALUEbias_1$dense_1/b/.ATTRIBUTES/VARIABLE_VALUE*
D>
VARIABLE_VALUEweight$dense_2/w/.ATTRIBUTES/VARIABLE_VALUE*
B<
VARIABLE_VALUEbias$dense_2/b/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCallStatefulPartitionedCallsaver_filenameweight_1bias_1weightbiasConst*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *%
f R
__inference__traced_save_882
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameweight_1bias_1weightbias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *(
f#R!
__inference__traced_restore_903�d
�
�
__inference___call___8380
matmul_readvariableop_resource:)
add_readvariableop_resource:2
 matmul_1_readvariableop_resource:+
add_1_readvariableop_resource:
identity��MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�add/ReadVariableOp�add_1/ReadVariableOpy
MatMul/aConst*"
_output_shapes
:*
dtype0*5
value,B*"   @   @   @   @   @   @t
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0v
MatMulBatchMatMulV2MatMul/a:output:0MatMul/ReadVariableOp:value:0*
T0*"
_output_shapes
:j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0f
addAddV2MatMul:output:0add/ReadVariableOp:value:0*
T0*"
_output_shapes
:B
ReluReluadd:z:0*
T0*"
_output_shapes
:x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0{
MatMul_1BatchMatMulV2Relu:activations:0MatMul_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:n
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes
:*
dtype0l
add_1AddV2MatMul_1:output:0add_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:F
Relu_1Relu	add_1:z:0*
T0*"
_output_shapes
:^
IdentityIdentityRelu_1:activations:0^NoOp*
T0*"
_output_shapes
:�
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^add/ReadVariableOp^add_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:( $
"
_user_specified_name
resource
�
�
__inference___call___8200
matmul_readvariableop_resource:)
add_readvariableop_resource:2
 matmul_1_readvariableop_resource:+
add_1_readvariableop_resource:
identity��MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�add/ReadVariableOp�add_1/ReadVariableOpe
MatMul/aConst*
_output_shapes

:*
dtype0*%
valueB"   @   @   @t
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0k
MatMulMatMulMatMul/a:output:0MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0c
addAddV2MatMul:product:0add/ReadVariableOp:value:0*
T0*
_output_shapes

:>
ReluReluadd:z:0*
T0*
_output_shapes

:x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0p
MatMul_1MatMulRelu:activations:0MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

:n
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes
:*
dtype0i
add_1AddV2MatMul_1:product:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes

:B
Relu_1Relu	add_1:z:0*
T0*
_output_shapes

:Z
IdentityIdentityRelu_1:activations:0^NoOp*
T0*
_output_shapes

:�
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^add/ReadVariableOp^add_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:( $
"
_user_specified_name
resource
�*
�
__inference__traced_save_882
file_prefix1
read_disablecopyonread_weight_1:-
read_1_disablecopyonread_bias_1:1
read_2_disablecopyonread_weight:+
read_3_disablecopyonread_bias:
savev2_const

identity_9��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: b
Read/DisableCopyOnReadDisableCopyOnReadread_disablecopyonread_weight_1*
_output_shapes
 �
Read/ReadVariableOpReadVariableOpread_disablecopyonread_weight_1^Read/DisableCopyOnRead*
_output_shapes

:*
dtype0Z
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes

:a

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes

:d
Read_1/DisableCopyOnReadDisableCopyOnReadread_1_disablecopyonread_bias_1*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOpread_1_disablecopyonread_bias_1^Read_1/DisableCopyOnRead*
_output_shapes
:*
dtype0Z

Identity_2IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:d
Read_2/DisableCopyOnReadDisableCopyOnReadread_2_disablecopyonread_weight*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOpread_2_disablecopyonread_weight^Read_2/DisableCopyOnRead*
_output_shapes

:*
dtype0^

Identity_4IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes

:c

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes

:b
Read_3/DisableCopyOnReadDisableCopyOnReadread_3_disablecopyonread_bias*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOpread_3_disablecopyonread_bias^Read_3/DisableCopyOnRead*
_output_shapes
:*
dtype0Z

Identity_6IdentityRead_3/ReadVariableOp:value:0*
T0*
_output_shapes
:_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B$dense_1/w/.ATTRIBUTES/VARIABLE_VALUEB$dense_1/b/.ATTRIBUTES/VARIABLE_VALUEB$dense_2/w/.ATTRIBUTES/VARIABLE_VALUEB$dense_2/b/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHw
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtypes	
2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 h

Identity_8Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: S

Identity_9IdentityIdentity_8:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp*
_output_shapes
 "!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp:=9

_output_shapes
: 

_user_specified_nameConst:$ 

_user_specified_namebias:&"
 
_user_specified_nameweight:&"
 
_user_specified_namebias_1:($
"
_user_specified_name
weight_1:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
__inference__traced_restore_903
file_prefix+
assignvariableop_weight_1:'
assignvariableop_1_bias_1:+
assignvariableop_2_weight:%
assignvariableop_3_bias:

identity_5��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_2�AssignVariableOp_3�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B$dense_1/w/.ATTRIBUTES/VARIABLE_VALUEB$dense_1/b/.ATTRIBUTES/VARIABLE_VALUEB$dense_2/w/.ATTRIBUTES/VARIABLE_VALUEB$dense_2/b/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHz
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*(
_output_shapes
:::::*
dtypes	
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_weight_1Identity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_bias_1Identity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_weightIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �

Identity_4Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^NoOp"/device:CPU:0*
T0*
_output_shapes
: U

Identity_5IdentityIdentity_4:output:0^NoOp_1*
T0*
_output_shapes
: v
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3*
_output_shapes
 "!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : : 2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32$
AssignVariableOpAssignVariableOp:$ 

_user_specified_namebias:&"
 
_user_specified_nameweight:&"
 
_user_specified_namebias_1:($
"
_user_specified_name
weight_1:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix"�J
saver_filename:0StatefulPartitionedCall:0StatefulPartitionedCall_18"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp:�	
V
dense_1
dense_2
__call__

signatures"
_generic_user_object
,
w
b"
_generic_user_object
,
w
b"
_generic_user_object
�
	trace_0

trace_12�
__inference___call___820
__inference___call___838�
���
FullArgSpec
args�
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z	trace_0z
trace_1
"
signature_map
:2weight
:2bias
:2weight
:2bias
�B�
__inference___call___820"�
���
FullArgSpec
args�
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
__inference___call___838"�
���
FullArgSpec
args�
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 v
__inference___call___820Z8�5
.�+
)�&
$�!
	Y       @
	Y       @
	Y       @
� "�
unknown�
__inference___call___838�c�`
Y�V
T�Q
O�L
$�!
	Y       @
	Y       @
	Y       @
$�!
	Y       @
	Y       @
	Y       @
� "�
unknown