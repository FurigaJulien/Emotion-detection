??'
??
B
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

;
Elu
features"T
activations"T"
Ttype:
2
?
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%??8"&
exponential_avg_factorfloat%  ??";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
=
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
dtypetype?
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
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
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
;
Sub
x"T
y"T
z"T"
Ttype:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.12v2.4.1-0-g85c8b2a817f8?? 
?
conv2d_70/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_70/kernel
}
$conv2d_70/kernel/Read/ReadVariableOpReadVariableOpconv2d_70/kernel*&
_output_shapes
: *
dtype0
t
conv2d_70/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_70/bias
m
"conv2d_70/bias/Read/ReadVariableOpReadVariableOpconv2d_70/bias*
_output_shapes
: *
dtype0
?
batch_normalization_84/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namebatch_normalization_84/gamma
?
0batch_normalization_84/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_84/gamma*
_output_shapes
: *
dtype0
?
batch_normalization_84/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_84/beta
?
/batch_normalization_84/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_84/beta*
_output_shapes
: *
dtype0
?
"batch_normalization_84/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"batch_normalization_84/moving_mean
?
6batch_normalization_84/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_84/moving_mean*
_output_shapes
: *
dtype0
?
&batch_normalization_84/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&batch_normalization_84/moving_variance
?
:batch_normalization_84/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_84/moving_variance*
_output_shapes
: *
dtype0
?
conv2d_71/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *!
shared_nameconv2d_71/kernel
}
$conv2d_71/kernel/Read/ReadVariableOpReadVariableOpconv2d_71/kernel*&
_output_shapes
:  *
dtype0
t
conv2d_71/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_71/bias
m
"conv2d_71/bias/Read/ReadVariableOpReadVariableOpconv2d_71/bias*
_output_shapes
: *
dtype0
?
batch_normalization_85/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namebatch_normalization_85/gamma
?
0batch_normalization_85/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_85/gamma*
_output_shapes
: *
dtype0
?
batch_normalization_85/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_85/beta
?
/batch_normalization_85/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_85/beta*
_output_shapes
: *
dtype0
?
"batch_normalization_85/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"batch_normalization_85/moving_mean
?
6batch_normalization_85/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_85/moving_mean*
_output_shapes
: *
dtype0
?
&batch_normalization_85/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&batch_normalization_85/moving_variance
?
:batch_normalization_85/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_85/moving_variance*
_output_shapes
: *
dtype0
?
conv2d_72/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_72/kernel
}
$conv2d_72/kernel/Read/ReadVariableOpReadVariableOpconv2d_72/kernel*&
_output_shapes
: @*
dtype0
t
conv2d_72/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_72/bias
m
"conv2d_72/bias/Read/ReadVariableOpReadVariableOpconv2d_72/bias*
_output_shapes
:@*
dtype0
?
batch_normalization_86/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_86/gamma
?
0batch_normalization_86/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_86/gamma*
_output_shapes
:@*
dtype0
?
batch_normalization_86/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_86/beta
?
/batch_normalization_86/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_86/beta*
_output_shapes
:@*
dtype0
?
"batch_normalization_86/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_86/moving_mean
?
6batch_normalization_86/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_86/moving_mean*
_output_shapes
:@*
dtype0
?
&batch_normalization_86/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_86/moving_variance
?
:batch_normalization_86/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_86/moving_variance*
_output_shapes
:@*
dtype0
?
conv2d_73/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_73/kernel
}
$conv2d_73/kernel/Read/ReadVariableOpReadVariableOpconv2d_73/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_73/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_73/bias
m
"conv2d_73/bias/Read/ReadVariableOpReadVariableOpconv2d_73/bias*
_output_shapes
:@*
dtype0
?
batch_normalization_87/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_87/gamma
?
0batch_normalization_87/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_87/gamma*
_output_shapes
:@*
dtype0
?
batch_normalization_87/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_87/beta
?
/batch_normalization_87/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_87/beta*
_output_shapes
:@*
dtype0
?
"batch_normalization_87/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_87/moving_mean
?
6batch_normalization_87/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_87/moving_mean*
_output_shapes
:@*
dtype0
?
&batch_normalization_87/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_87/moving_variance
?
:batch_normalization_87/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_87/moving_variance*
_output_shapes
:@*
dtype0
|
dense_24/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_24/kernel
u
#dense_24/kernel/Read/ReadVariableOpReadVariableOpdense_24/kernel* 
_output_shapes
:
??*
dtype0
s
dense_24/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_24/bias
l
!dense_24/bias/Read/ReadVariableOpReadVariableOpdense_24/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_88/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_88/gamma
?
0batch_normalization_88/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_88/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_88/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_88/beta
?
/batch_normalization_88/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_88/beta*
_output_shapes	
:?*
dtype0
?
"batch_normalization_88/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"batch_normalization_88/moving_mean
?
6batch_normalization_88/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_88/moving_mean*
_output_shapes	
:?*
dtype0
?
&batch_normalization_88/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*7
shared_name(&batch_normalization_88/moving_variance
?
:batch_normalization_88/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_88/moving_variance*
_output_shapes	
:?*
dtype0
|
dense_25/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_25/kernel
u
#dense_25/kernel/Read/ReadVariableOpReadVariableOpdense_25/kernel* 
_output_shapes
:
??*
dtype0
s
dense_25/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_25/bias
l
!dense_25/bias/Read/ReadVariableOpReadVariableOpdense_25/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_89/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_89/gamma
?
0batch_normalization_89/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_89/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_89/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_89/beta
?
/batch_normalization_89/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_89/beta*
_output_shapes	
:?*
dtype0
?
"batch_normalization_89/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"batch_normalization_89/moving_mean
?
6batch_normalization_89/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_89/moving_mean*
_output_shapes	
:?*
dtype0
?
&batch_normalization_89/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*7
shared_name(&batch_normalization_89/moving_variance
?
:batch_normalization_89/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_89/moving_variance*
_output_shapes	
:?*
dtype0
{
dense_26/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?* 
shared_namedense_26/kernel
t
#dense_26/kernel/Read/ReadVariableOpReadVariableOpdense_26/kernel*
_output_shapes
:	?*
dtype0
r
dense_26/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_26/bias
k
!dense_26/bias/Read/ReadVariableOpReadVariableOpdense_26/bias*
_output_shapes
:*
dtype0
j
Adamax/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameAdamax/iter
c
Adamax/iter/Read/ReadVariableOpReadVariableOpAdamax/iter*
_output_shapes
: *
dtype0	
n
Adamax/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdamax/beta_1
g
!Adamax/beta_1/Read/ReadVariableOpReadVariableOpAdamax/beta_1*
_output_shapes
: *
dtype0
n
Adamax/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdamax/beta_2
g
!Adamax/beta_2/Read/ReadVariableOpReadVariableOpAdamax/beta_2*
_output_shapes
: *
dtype0
l
Adamax/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdamax/decay
e
 Adamax/decay/Read/ReadVariableOpReadVariableOpAdamax/decay*
_output_shapes
: *
dtype0
|
Adamax/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdamax/learning_rate
u
(Adamax/learning_rate/Read/ReadVariableOpReadVariableOpAdamax/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adamax/conv2d_70/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_nameAdamax/conv2d_70/kernel/m
?
-Adamax/conv2d_70/kernel/m/Read/ReadVariableOpReadVariableOpAdamax/conv2d_70/kernel/m*&
_output_shapes
: *
dtype0
?
Adamax/conv2d_70/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdamax/conv2d_70/bias/m

+Adamax/conv2d_70/bias/m/Read/ReadVariableOpReadVariableOpAdamax/conv2d_70/bias/m*
_output_shapes
: *
dtype0
?
%Adamax/batch_normalization_84/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%Adamax/batch_normalization_84/gamma/m
?
9Adamax/batch_normalization_84/gamma/m/Read/ReadVariableOpReadVariableOp%Adamax/batch_normalization_84/gamma/m*
_output_shapes
: *
dtype0
?
$Adamax/batch_normalization_84/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$Adamax/batch_normalization_84/beta/m
?
8Adamax/batch_normalization_84/beta/m/Read/ReadVariableOpReadVariableOp$Adamax/batch_normalization_84/beta/m*
_output_shapes
: *
dtype0
?
Adamax/conv2d_71/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  **
shared_nameAdamax/conv2d_71/kernel/m
?
-Adamax/conv2d_71/kernel/m/Read/ReadVariableOpReadVariableOpAdamax/conv2d_71/kernel/m*&
_output_shapes
:  *
dtype0
?
Adamax/conv2d_71/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdamax/conv2d_71/bias/m

+Adamax/conv2d_71/bias/m/Read/ReadVariableOpReadVariableOpAdamax/conv2d_71/bias/m*
_output_shapes
: *
dtype0
?
%Adamax/batch_normalization_85/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%Adamax/batch_normalization_85/gamma/m
?
9Adamax/batch_normalization_85/gamma/m/Read/ReadVariableOpReadVariableOp%Adamax/batch_normalization_85/gamma/m*
_output_shapes
: *
dtype0
?
$Adamax/batch_normalization_85/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$Adamax/batch_normalization_85/beta/m
?
8Adamax/batch_normalization_85/beta/m/Read/ReadVariableOpReadVariableOp$Adamax/batch_normalization_85/beta/m*
_output_shapes
: *
dtype0
?
Adamax/conv2d_72/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @**
shared_nameAdamax/conv2d_72/kernel/m
?
-Adamax/conv2d_72/kernel/m/Read/ReadVariableOpReadVariableOpAdamax/conv2d_72/kernel/m*&
_output_shapes
: @*
dtype0
?
Adamax/conv2d_72/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdamax/conv2d_72/bias/m

+Adamax/conv2d_72/bias/m/Read/ReadVariableOpReadVariableOpAdamax/conv2d_72/bias/m*
_output_shapes
:@*
dtype0
?
%Adamax/batch_normalization_86/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%Adamax/batch_normalization_86/gamma/m
?
9Adamax/batch_normalization_86/gamma/m/Read/ReadVariableOpReadVariableOp%Adamax/batch_normalization_86/gamma/m*
_output_shapes
:@*
dtype0
?
$Adamax/batch_normalization_86/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*5
shared_name&$Adamax/batch_normalization_86/beta/m
?
8Adamax/batch_normalization_86/beta/m/Read/ReadVariableOpReadVariableOp$Adamax/batch_normalization_86/beta/m*
_output_shapes
:@*
dtype0
?
Adamax/conv2d_73/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@**
shared_nameAdamax/conv2d_73/kernel/m
?
-Adamax/conv2d_73/kernel/m/Read/ReadVariableOpReadVariableOpAdamax/conv2d_73/kernel/m*&
_output_shapes
:@@*
dtype0
?
Adamax/conv2d_73/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdamax/conv2d_73/bias/m

+Adamax/conv2d_73/bias/m/Read/ReadVariableOpReadVariableOpAdamax/conv2d_73/bias/m*
_output_shapes
:@*
dtype0
?
%Adamax/batch_normalization_87/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%Adamax/batch_normalization_87/gamma/m
?
9Adamax/batch_normalization_87/gamma/m/Read/ReadVariableOpReadVariableOp%Adamax/batch_normalization_87/gamma/m*
_output_shapes
:@*
dtype0
?
$Adamax/batch_normalization_87/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*5
shared_name&$Adamax/batch_normalization_87/beta/m
?
8Adamax/batch_normalization_87/beta/m/Read/ReadVariableOpReadVariableOp$Adamax/batch_normalization_87/beta/m*
_output_shapes
:@*
dtype0
?
Adamax/dense_24/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*)
shared_nameAdamax/dense_24/kernel/m
?
,Adamax/dense_24/kernel/m/Read/ReadVariableOpReadVariableOpAdamax/dense_24/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adamax/dense_24/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_nameAdamax/dense_24/bias/m
~
*Adamax/dense_24/bias/m/Read/ReadVariableOpReadVariableOpAdamax/dense_24/bias/m*
_output_shapes	
:?*
dtype0
?
%Adamax/batch_normalization_88/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%Adamax/batch_normalization_88/gamma/m
?
9Adamax/batch_normalization_88/gamma/m/Read/ReadVariableOpReadVariableOp%Adamax/batch_normalization_88/gamma/m*
_output_shapes	
:?*
dtype0
?
$Adamax/batch_normalization_88/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*5
shared_name&$Adamax/batch_normalization_88/beta/m
?
8Adamax/batch_normalization_88/beta/m/Read/ReadVariableOpReadVariableOp$Adamax/batch_normalization_88/beta/m*
_output_shapes	
:?*
dtype0
?
Adamax/dense_25/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*)
shared_nameAdamax/dense_25/kernel/m
?
,Adamax/dense_25/kernel/m/Read/ReadVariableOpReadVariableOpAdamax/dense_25/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adamax/dense_25/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_nameAdamax/dense_25/bias/m
~
*Adamax/dense_25/bias/m/Read/ReadVariableOpReadVariableOpAdamax/dense_25/bias/m*
_output_shapes	
:?*
dtype0
?
%Adamax/batch_normalization_89/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%Adamax/batch_normalization_89/gamma/m
?
9Adamax/batch_normalization_89/gamma/m/Read/ReadVariableOpReadVariableOp%Adamax/batch_normalization_89/gamma/m*
_output_shapes	
:?*
dtype0
?
$Adamax/batch_normalization_89/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*5
shared_name&$Adamax/batch_normalization_89/beta/m
?
8Adamax/batch_normalization_89/beta/m/Read/ReadVariableOpReadVariableOp$Adamax/batch_normalization_89/beta/m*
_output_shapes	
:?*
dtype0
?
Adamax/dense_26/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*)
shared_nameAdamax/dense_26/kernel/m
?
,Adamax/dense_26/kernel/m/Read/ReadVariableOpReadVariableOpAdamax/dense_26/kernel/m*
_output_shapes
:	?*
dtype0
?
Adamax/dense_26/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdamax/dense_26/bias/m
}
*Adamax/dense_26/bias/m/Read/ReadVariableOpReadVariableOpAdamax/dense_26/bias/m*
_output_shapes
:*
dtype0
?
Adamax/conv2d_70/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_nameAdamax/conv2d_70/kernel/v
?
-Adamax/conv2d_70/kernel/v/Read/ReadVariableOpReadVariableOpAdamax/conv2d_70/kernel/v*&
_output_shapes
: *
dtype0
?
Adamax/conv2d_70/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdamax/conv2d_70/bias/v

+Adamax/conv2d_70/bias/v/Read/ReadVariableOpReadVariableOpAdamax/conv2d_70/bias/v*
_output_shapes
: *
dtype0
?
%Adamax/batch_normalization_84/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%Adamax/batch_normalization_84/gamma/v
?
9Adamax/batch_normalization_84/gamma/v/Read/ReadVariableOpReadVariableOp%Adamax/batch_normalization_84/gamma/v*
_output_shapes
: *
dtype0
?
$Adamax/batch_normalization_84/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$Adamax/batch_normalization_84/beta/v
?
8Adamax/batch_normalization_84/beta/v/Read/ReadVariableOpReadVariableOp$Adamax/batch_normalization_84/beta/v*
_output_shapes
: *
dtype0
?
Adamax/conv2d_71/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  **
shared_nameAdamax/conv2d_71/kernel/v
?
-Adamax/conv2d_71/kernel/v/Read/ReadVariableOpReadVariableOpAdamax/conv2d_71/kernel/v*&
_output_shapes
:  *
dtype0
?
Adamax/conv2d_71/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdamax/conv2d_71/bias/v

+Adamax/conv2d_71/bias/v/Read/ReadVariableOpReadVariableOpAdamax/conv2d_71/bias/v*
_output_shapes
: *
dtype0
?
%Adamax/batch_normalization_85/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%Adamax/batch_normalization_85/gamma/v
?
9Adamax/batch_normalization_85/gamma/v/Read/ReadVariableOpReadVariableOp%Adamax/batch_normalization_85/gamma/v*
_output_shapes
: *
dtype0
?
$Adamax/batch_normalization_85/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$Adamax/batch_normalization_85/beta/v
?
8Adamax/batch_normalization_85/beta/v/Read/ReadVariableOpReadVariableOp$Adamax/batch_normalization_85/beta/v*
_output_shapes
: *
dtype0
?
Adamax/conv2d_72/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @**
shared_nameAdamax/conv2d_72/kernel/v
?
-Adamax/conv2d_72/kernel/v/Read/ReadVariableOpReadVariableOpAdamax/conv2d_72/kernel/v*&
_output_shapes
: @*
dtype0
?
Adamax/conv2d_72/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdamax/conv2d_72/bias/v

+Adamax/conv2d_72/bias/v/Read/ReadVariableOpReadVariableOpAdamax/conv2d_72/bias/v*
_output_shapes
:@*
dtype0
?
%Adamax/batch_normalization_86/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%Adamax/batch_normalization_86/gamma/v
?
9Adamax/batch_normalization_86/gamma/v/Read/ReadVariableOpReadVariableOp%Adamax/batch_normalization_86/gamma/v*
_output_shapes
:@*
dtype0
?
$Adamax/batch_normalization_86/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*5
shared_name&$Adamax/batch_normalization_86/beta/v
?
8Adamax/batch_normalization_86/beta/v/Read/ReadVariableOpReadVariableOp$Adamax/batch_normalization_86/beta/v*
_output_shapes
:@*
dtype0
?
Adamax/conv2d_73/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@**
shared_nameAdamax/conv2d_73/kernel/v
?
-Adamax/conv2d_73/kernel/v/Read/ReadVariableOpReadVariableOpAdamax/conv2d_73/kernel/v*&
_output_shapes
:@@*
dtype0
?
Adamax/conv2d_73/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdamax/conv2d_73/bias/v

+Adamax/conv2d_73/bias/v/Read/ReadVariableOpReadVariableOpAdamax/conv2d_73/bias/v*
_output_shapes
:@*
dtype0
?
%Adamax/batch_normalization_87/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%Adamax/batch_normalization_87/gamma/v
?
9Adamax/batch_normalization_87/gamma/v/Read/ReadVariableOpReadVariableOp%Adamax/batch_normalization_87/gamma/v*
_output_shapes
:@*
dtype0
?
$Adamax/batch_normalization_87/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*5
shared_name&$Adamax/batch_normalization_87/beta/v
?
8Adamax/batch_normalization_87/beta/v/Read/ReadVariableOpReadVariableOp$Adamax/batch_normalization_87/beta/v*
_output_shapes
:@*
dtype0
?
Adamax/dense_24/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*)
shared_nameAdamax/dense_24/kernel/v
?
,Adamax/dense_24/kernel/v/Read/ReadVariableOpReadVariableOpAdamax/dense_24/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adamax/dense_24/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_nameAdamax/dense_24/bias/v
~
*Adamax/dense_24/bias/v/Read/ReadVariableOpReadVariableOpAdamax/dense_24/bias/v*
_output_shapes	
:?*
dtype0
?
%Adamax/batch_normalization_88/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%Adamax/batch_normalization_88/gamma/v
?
9Adamax/batch_normalization_88/gamma/v/Read/ReadVariableOpReadVariableOp%Adamax/batch_normalization_88/gamma/v*
_output_shapes	
:?*
dtype0
?
$Adamax/batch_normalization_88/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*5
shared_name&$Adamax/batch_normalization_88/beta/v
?
8Adamax/batch_normalization_88/beta/v/Read/ReadVariableOpReadVariableOp$Adamax/batch_normalization_88/beta/v*
_output_shapes	
:?*
dtype0
?
Adamax/dense_25/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*)
shared_nameAdamax/dense_25/kernel/v
?
,Adamax/dense_25/kernel/v/Read/ReadVariableOpReadVariableOpAdamax/dense_25/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adamax/dense_25/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_nameAdamax/dense_25/bias/v
~
*Adamax/dense_25/bias/v/Read/ReadVariableOpReadVariableOpAdamax/dense_25/bias/v*
_output_shapes	
:?*
dtype0
?
%Adamax/batch_normalization_89/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%Adamax/batch_normalization_89/gamma/v
?
9Adamax/batch_normalization_89/gamma/v/Read/ReadVariableOpReadVariableOp%Adamax/batch_normalization_89/gamma/v*
_output_shapes	
:?*
dtype0
?
$Adamax/batch_normalization_89/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*5
shared_name&$Adamax/batch_normalization_89/beta/v
?
8Adamax/batch_normalization_89/beta/v/Read/ReadVariableOpReadVariableOp$Adamax/batch_normalization_89/beta/v*
_output_shapes	
:?*
dtype0
?
Adamax/dense_26/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*)
shared_nameAdamax/dense_26/kernel/v
?
,Adamax/dense_26/kernel/v/Read/ReadVariableOpReadVariableOpAdamax/dense_26/kernel/v*
_output_shapes
:	?*
dtype0
?
Adamax/dense_26/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdamax/dense_26/bias/v
}
*Adamax/dense_26/bias/v/Read/ReadVariableOpReadVariableOpAdamax/dense_26/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
λ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*??
value??B?? B??
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

layer-9
layer_with_weights-4
layer-10
layer-11
layer_with_weights-5
layer-12
layer-13
layer-14
layer_with_weights-6
layer-15
layer-16
layer_with_weights-7
layer-17
layer-18
layer-19
layer-20
layer_with_weights-8
layer-21
layer-22
layer_with_weights-9
layer-23
layer_with_weights-10
layer-24
layer-25
layer_with_weights-11
layer-26
layer_with_weights-12
layer-27
layer-28
	optimizer
	variables
 regularization_losses
!trainable_variables
"	keras_api
#
signatures
h

$kernel
%bias
&	variables
'trainable_variables
(regularization_losses
)	keras_api
R
*	variables
+trainable_variables
,regularization_losses
-	keras_api
?
.axis
	/gamma
0beta
1moving_mean
2moving_variance
3	variables
4trainable_variables
5regularization_losses
6	keras_api
R
7	variables
8trainable_variables
9regularization_losses
:	keras_api
R
;	variables
<trainable_variables
=regularization_losses
>	keras_api
h

?kernel
@bias
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
R
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
?
Iaxis
	Jgamma
Kbeta
Lmoving_mean
Mmoving_variance
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
R
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
h

Zkernel
[bias
\	variables
]trainable_variables
^regularization_losses
_	keras_api
R
`	variables
atrainable_variables
bregularization_losses
c	keras_api
?
daxis
	egamma
fbeta
gmoving_mean
hmoving_variance
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
R
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
R
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
h

ukernel
vbias
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
R
{	variables
|trainable_variables
}regularization_losses
~	keras_api
?
axis

?gamma
	?beta
?moving_mean
?moving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
n
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
n
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
n
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?
	?iter
?beta_1
?beta_2

?decay
?learning_rate$m?%m?/m?0m??m?@m?Jm?Km?Zm?[m?em?fm?um?vm?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?$v?%v?/v?0v??v?@v?Jv?Kv?Zv?[v?ev?fv?uv?vv?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?
?
$0
%1
/2
03
14
25
?6
@7
J8
K9
L10
M11
Z12
[13
e14
f15
g16
h17
u18
v19
?20
?21
?22
?23
?24
?25
?26
?27
?28
?29
?30
?31
?32
?33
?34
?35
?36
?37
 
?
$0
%1
/2
03
?4
@5
J6
K7
Z8
[9
e10
f11
u12
v13
?14
?15
?16
?17
?18
?19
?20
?21
?22
?23
?24
?25
?
?layers
	variables
 ?layer_regularization_losses
?layer_metrics
?metrics
?non_trainable_variables
 regularization_losses
!trainable_variables
 
\Z
VARIABLE_VALUEconv2d_70/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_70/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

$0
%1

$0
%1
 
?
?layers
&	variables
 ?layer_regularization_losses
?layer_metrics
'trainable_variables
?non_trainable_variables
(regularization_losses
?metrics
 
 
 
?
?layers
*	variables
 ?layer_regularization_losses
?layer_metrics
+trainable_variables
?non_trainable_variables
,regularization_losses
?metrics
 
ge
VARIABLE_VALUEbatch_normalization_84/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_84/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_84/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_84/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

/0
01
12
23

/0
01
 
?
?layers
3	variables
 ?layer_regularization_losses
?layer_metrics
4trainable_variables
?non_trainable_variables
5regularization_losses
?metrics
 
 
 
?
?layers
7	variables
 ?layer_regularization_losses
?layer_metrics
8trainable_variables
?non_trainable_variables
9regularization_losses
?metrics
 
 
 
?
?layers
;	variables
 ?layer_regularization_losses
?layer_metrics
<trainable_variables
?non_trainable_variables
=regularization_losses
?metrics
\Z
VARIABLE_VALUEconv2d_71/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_71/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
@1

?0
@1
 
?
?layers
A	variables
 ?layer_regularization_losses
?layer_metrics
Btrainable_variables
?non_trainable_variables
Cregularization_losses
?metrics
 
 
 
?
?layers
E	variables
 ?layer_regularization_losses
?layer_metrics
Ftrainable_variables
?non_trainable_variables
Gregularization_losses
?metrics
 
ge
VARIABLE_VALUEbatch_normalization_85/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_85/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_85/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_85/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

J0
K1
L2
M3

J0
K1
 
?
?layers
N	variables
 ?layer_regularization_losses
?layer_metrics
Otrainable_variables
?non_trainable_variables
Pregularization_losses
?metrics
 
 
 
?
?layers
R	variables
 ?layer_regularization_losses
?layer_metrics
Strainable_variables
?non_trainable_variables
Tregularization_losses
?metrics
 
 
 
?
?layers
V	variables
 ?layer_regularization_losses
?layer_metrics
Wtrainable_variables
?non_trainable_variables
Xregularization_losses
?metrics
\Z
VARIABLE_VALUEconv2d_72/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_72/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

Z0
[1

Z0
[1
 
?
?layers
\	variables
 ?layer_regularization_losses
?layer_metrics
]trainable_variables
?non_trainable_variables
^regularization_losses
?metrics
 
 
 
?
?layers
`	variables
 ?layer_regularization_losses
?layer_metrics
atrainable_variables
?non_trainable_variables
bregularization_losses
?metrics
 
ge
VARIABLE_VALUEbatch_normalization_86/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_86/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_86/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_86/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

e0
f1
g2
h3

e0
f1
 
?
?layers
i	variables
 ?layer_regularization_losses
?layer_metrics
jtrainable_variables
?non_trainable_variables
kregularization_losses
?metrics
 
 
 
?
?layers
m	variables
 ?layer_regularization_losses
?layer_metrics
ntrainable_variables
?non_trainable_variables
oregularization_losses
?metrics
 
 
 
?
?layers
q	variables
 ?layer_regularization_losses
?layer_metrics
rtrainable_variables
?non_trainable_variables
sregularization_losses
?metrics
\Z
VARIABLE_VALUEconv2d_73/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_73/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

u0
v1

u0
v1
 
?
?layers
w	variables
 ?layer_regularization_losses
?layer_metrics
xtrainable_variables
?non_trainable_variables
yregularization_losses
?metrics
 
 
 
?
?layers
{	variables
 ?layer_regularization_losses
?layer_metrics
|trainable_variables
?non_trainable_variables
}regularization_losses
?metrics
 
ge
VARIABLE_VALUEbatch_normalization_87/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_87/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_87/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_87/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 
?0
?1
?2
?3

?0
?1
 
?
?layers
?	variables
 ?layer_regularization_losses
?layer_metrics
?trainable_variables
?non_trainable_variables
?regularization_losses
?metrics
 
 
 
?
?layers
?	variables
 ?layer_regularization_losses
?layer_metrics
?trainable_variables
?non_trainable_variables
?regularization_losses
?metrics
 
 
 
?
?layers
?	variables
 ?layer_regularization_losses
?layer_metrics
?trainable_variables
?non_trainable_variables
?regularization_losses
?metrics
 
 
 
?
?layers
?	variables
 ?layer_regularization_losses
?layer_metrics
?trainable_variables
?non_trainable_variables
?regularization_losses
?metrics
[Y
VARIABLE_VALUEdense_24/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_24/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?0
?1
 
?
?layers
?	variables
 ?layer_regularization_losses
?layer_metrics
?trainable_variables
?non_trainable_variables
?regularization_losses
?metrics
 
 
 
?
?layers
?	variables
 ?layer_regularization_losses
?layer_metrics
?trainable_variables
?non_trainable_variables
?regularization_losses
?metrics
 
ge
VARIABLE_VALUEbatch_normalization_88/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_88/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_88/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_88/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 
?0
?1
?2
?3

?0
?1
 
?
?layers
?	variables
 ?layer_regularization_losses
?layer_metrics
?trainable_variables
?non_trainable_variables
?regularization_losses
?metrics
\Z
VARIABLE_VALUEdense_25/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_25/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?0
?1
 
?
?layers
?	variables
 ?layer_regularization_losses
?layer_metrics
?trainable_variables
?non_trainable_variables
?regularization_losses
?metrics
 
 
 
?
?layers
?	variables
 ?layer_regularization_losses
?layer_metrics
?trainable_variables
?non_trainable_variables
?regularization_losses
?metrics
 
hf
VARIABLE_VALUEbatch_normalization_89/gamma6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_89/beta5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE"batch_normalization_89/moving_mean<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE&batch_normalization_89/moving_variance@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 
?0
?1
?2
?3

?0
?1
 
?
?layers
?	variables
 ?layer_regularization_losses
?layer_metrics
?trainable_variables
?non_trainable_variables
?regularization_losses
?metrics
\Z
VARIABLE_VALUEdense_26/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_26/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?0
?1
 
?
?layers
?	variables
 ?layer_regularization_losses
?layer_metrics
?trainable_variables
?non_trainable_variables
?regularization_losses
?metrics
 
 
 
?
?layers
?	variables
 ?layer_regularization_losses
?layer_metrics
?trainable_variables
?non_trainable_variables
?regularization_losses
?metrics
JH
VARIABLE_VALUEAdamax/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEAdamax/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEAdamax/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdamax/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEAdamax/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
 
 

?0
?1
\
10
21
L2
M3
g4
h5
?6
?7
?8
?9
?10
?11
 
 
 
 
 
 
 
 
 
 
 
 
 

10
21
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

L0
M1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

g0
h1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

?0
?1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

?0
?1
 
 
 
 
 
 
 
 
 
 
 
 
 
 

?0
?1
 
 
 
 
 
 
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
?
VARIABLE_VALUEAdamax/conv2d_70/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdamax/conv2d_70/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adamax/batch_normalization_84/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adamax/batch_normalization_84/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdamax/conv2d_71/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdamax/conv2d_71/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adamax/batch_normalization_85/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adamax/batch_normalization_85/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdamax/conv2d_72/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdamax/conv2d_72/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adamax/batch_normalization_86/gamma/mQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adamax/batch_normalization_86/beta/mPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdamax/conv2d_73/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdamax/conv2d_73/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adamax/batch_normalization_87/gamma/mQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adamax/batch_normalization_87/beta/mPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdamax/dense_24/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdamax/dense_24/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adamax/batch_normalization_88/gamma/mQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adamax/batch_normalization_88/beta/mPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdamax/dense_25/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdamax/dense_25/bias/mQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adamax/batch_normalization_89/gamma/mRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adamax/batch_normalization_89/beta/mQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdamax/dense_26/kernel/mSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdamax/dense_26/bias/mQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdamax/conv2d_70/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdamax/conv2d_70/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adamax/batch_normalization_84/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adamax/batch_normalization_84/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdamax/conv2d_71/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdamax/conv2d_71/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adamax/batch_normalization_85/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adamax/batch_normalization_85/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdamax/conv2d_72/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdamax/conv2d_72/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adamax/batch_normalization_86/gamma/vQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adamax/batch_normalization_86/beta/vPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdamax/conv2d_73/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdamax/conv2d_73/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adamax/batch_normalization_87/gamma/vQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adamax/batch_normalization_87/beta/vPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdamax/dense_24/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdamax/dense_24/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adamax/batch_normalization_88/gamma/vQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adamax/batch_normalization_88/beta/vPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdamax/dense_25/kernel/vSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdamax/dense_25/bias/vQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adamax/batch_normalization_89/gamma/vRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adamax/batch_normalization_89/beta/vQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdamax/dense_26/kernel/vSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdamax/dense_26/bias/vQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_conv2d_70_inputPlaceholder*/
_output_shapes
:?????????00*
dtype0*$
shape:?????????00
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_70_inputconv2d_70/kernelconv2d_70/biasbatch_normalization_84/gammabatch_normalization_84/beta"batch_normalization_84/moving_mean&batch_normalization_84/moving_varianceconv2d_71/kernelconv2d_71/biasbatch_normalization_85/gammabatch_normalization_85/beta"batch_normalization_85/moving_mean&batch_normalization_85/moving_varianceconv2d_72/kernelconv2d_72/biasbatch_normalization_86/gammabatch_normalization_86/beta"batch_normalization_86/moving_mean&batch_normalization_86/moving_varianceconv2d_73/kernelconv2d_73/biasbatch_normalization_87/gammabatch_normalization_87/beta"batch_normalization_87/moving_mean&batch_normalization_87/moving_variancedense_24/kerneldense_24/bias&batch_normalization_88/moving_variancebatch_normalization_88/gamma"batch_normalization_88/moving_meanbatch_normalization_88/betadense_25/kerneldense_25/bias&batch_normalization_89/moving_variancebatch_normalization_89/gamma"batch_normalization_89/moving_meanbatch_normalization_89/betadense_26/kerneldense_26/bias*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*H
_read_only_resource_inputs*
(&	
 !"#$%&*0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_244495
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?(
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_70/kernel/Read/ReadVariableOp"conv2d_70/bias/Read/ReadVariableOp0batch_normalization_84/gamma/Read/ReadVariableOp/batch_normalization_84/beta/Read/ReadVariableOp6batch_normalization_84/moving_mean/Read/ReadVariableOp:batch_normalization_84/moving_variance/Read/ReadVariableOp$conv2d_71/kernel/Read/ReadVariableOp"conv2d_71/bias/Read/ReadVariableOp0batch_normalization_85/gamma/Read/ReadVariableOp/batch_normalization_85/beta/Read/ReadVariableOp6batch_normalization_85/moving_mean/Read/ReadVariableOp:batch_normalization_85/moving_variance/Read/ReadVariableOp$conv2d_72/kernel/Read/ReadVariableOp"conv2d_72/bias/Read/ReadVariableOp0batch_normalization_86/gamma/Read/ReadVariableOp/batch_normalization_86/beta/Read/ReadVariableOp6batch_normalization_86/moving_mean/Read/ReadVariableOp:batch_normalization_86/moving_variance/Read/ReadVariableOp$conv2d_73/kernel/Read/ReadVariableOp"conv2d_73/bias/Read/ReadVariableOp0batch_normalization_87/gamma/Read/ReadVariableOp/batch_normalization_87/beta/Read/ReadVariableOp6batch_normalization_87/moving_mean/Read/ReadVariableOp:batch_normalization_87/moving_variance/Read/ReadVariableOp#dense_24/kernel/Read/ReadVariableOp!dense_24/bias/Read/ReadVariableOp0batch_normalization_88/gamma/Read/ReadVariableOp/batch_normalization_88/beta/Read/ReadVariableOp6batch_normalization_88/moving_mean/Read/ReadVariableOp:batch_normalization_88/moving_variance/Read/ReadVariableOp#dense_25/kernel/Read/ReadVariableOp!dense_25/bias/Read/ReadVariableOp0batch_normalization_89/gamma/Read/ReadVariableOp/batch_normalization_89/beta/Read/ReadVariableOp6batch_normalization_89/moving_mean/Read/ReadVariableOp:batch_normalization_89/moving_variance/Read/ReadVariableOp#dense_26/kernel/Read/ReadVariableOp!dense_26/bias/Read/ReadVariableOpAdamax/iter/Read/ReadVariableOp!Adamax/beta_1/Read/ReadVariableOp!Adamax/beta_2/Read/ReadVariableOp Adamax/decay/Read/ReadVariableOp(Adamax/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp-Adamax/conv2d_70/kernel/m/Read/ReadVariableOp+Adamax/conv2d_70/bias/m/Read/ReadVariableOp9Adamax/batch_normalization_84/gamma/m/Read/ReadVariableOp8Adamax/batch_normalization_84/beta/m/Read/ReadVariableOp-Adamax/conv2d_71/kernel/m/Read/ReadVariableOp+Adamax/conv2d_71/bias/m/Read/ReadVariableOp9Adamax/batch_normalization_85/gamma/m/Read/ReadVariableOp8Adamax/batch_normalization_85/beta/m/Read/ReadVariableOp-Adamax/conv2d_72/kernel/m/Read/ReadVariableOp+Adamax/conv2d_72/bias/m/Read/ReadVariableOp9Adamax/batch_normalization_86/gamma/m/Read/ReadVariableOp8Adamax/batch_normalization_86/beta/m/Read/ReadVariableOp-Adamax/conv2d_73/kernel/m/Read/ReadVariableOp+Adamax/conv2d_73/bias/m/Read/ReadVariableOp9Adamax/batch_normalization_87/gamma/m/Read/ReadVariableOp8Adamax/batch_normalization_87/beta/m/Read/ReadVariableOp,Adamax/dense_24/kernel/m/Read/ReadVariableOp*Adamax/dense_24/bias/m/Read/ReadVariableOp9Adamax/batch_normalization_88/gamma/m/Read/ReadVariableOp8Adamax/batch_normalization_88/beta/m/Read/ReadVariableOp,Adamax/dense_25/kernel/m/Read/ReadVariableOp*Adamax/dense_25/bias/m/Read/ReadVariableOp9Adamax/batch_normalization_89/gamma/m/Read/ReadVariableOp8Adamax/batch_normalization_89/beta/m/Read/ReadVariableOp,Adamax/dense_26/kernel/m/Read/ReadVariableOp*Adamax/dense_26/bias/m/Read/ReadVariableOp-Adamax/conv2d_70/kernel/v/Read/ReadVariableOp+Adamax/conv2d_70/bias/v/Read/ReadVariableOp9Adamax/batch_normalization_84/gamma/v/Read/ReadVariableOp8Adamax/batch_normalization_84/beta/v/Read/ReadVariableOp-Adamax/conv2d_71/kernel/v/Read/ReadVariableOp+Adamax/conv2d_71/bias/v/Read/ReadVariableOp9Adamax/batch_normalization_85/gamma/v/Read/ReadVariableOp8Adamax/batch_normalization_85/beta/v/Read/ReadVariableOp-Adamax/conv2d_72/kernel/v/Read/ReadVariableOp+Adamax/conv2d_72/bias/v/Read/ReadVariableOp9Adamax/batch_normalization_86/gamma/v/Read/ReadVariableOp8Adamax/batch_normalization_86/beta/v/Read/ReadVariableOp-Adamax/conv2d_73/kernel/v/Read/ReadVariableOp+Adamax/conv2d_73/bias/v/Read/ReadVariableOp9Adamax/batch_normalization_87/gamma/v/Read/ReadVariableOp8Adamax/batch_normalization_87/beta/v/Read/ReadVariableOp,Adamax/dense_24/kernel/v/Read/ReadVariableOp*Adamax/dense_24/bias/v/Read/ReadVariableOp9Adamax/batch_normalization_88/gamma/v/Read/ReadVariableOp8Adamax/batch_normalization_88/beta/v/Read/ReadVariableOp,Adamax/dense_25/kernel/v/Read/ReadVariableOp*Adamax/dense_25/bias/v/Read/ReadVariableOp9Adamax/batch_normalization_89/gamma/v/Read/ReadVariableOp8Adamax/batch_normalization_89/beta/v/Read/ReadVariableOp,Adamax/dense_26/kernel/v/Read/ReadVariableOp*Adamax/dense_26/bias/v/Read/ReadVariableOpConst*p
Tini
g2e	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference__traced_save_246345
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_70/kernelconv2d_70/biasbatch_normalization_84/gammabatch_normalization_84/beta"batch_normalization_84/moving_mean&batch_normalization_84/moving_varianceconv2d_71/kernelconv2d_71/biasbatch_normalization_85/gammabatch_normalization_85/beta"batch_normalization_85/moving_mean&batch_normalization_85/moving_varianceconv2d_72/kernelconv2d_72/biasbatch_normalization_86/gammabatch_normalization_86/beta"batch_normalization_86/moving_mean&batch_normalization_86/moving_varianceconv2d_73/kernelconv2d_73/biasbatch_normalization_87/gammabatch_normalization_87/beta"batch_normalization_87/moving_mean&batch_normalization_87/moving_variancedense_24/kerneldense_24/biasbatch_normalization_88/gammabatch_normalization_88/beta"batch_normalization_88/moving_mean&batch_normalization_88/moving_variancedense_25/kerneldense_25/biasbatch_normalization_89/gammabatch_normalization_89/beta"batch_normalization_89/moving_mean&batch_normalization_89/moving_variancedense_26/kerneldense_26/biasAdamax/iterAdamax/beta_1Adamax/beta_2Adamax/decayAdamax/learning_ratetotalcounttotal_1count_1Adamax/conv2d_70/kernel/mAdamax/conv2d_70/bias/m%Adamax/batch_normalization_84/gamma/m$Adamax/batch_normalization_84/beta/mAdamax/conv2d_71/kernel/mAdamax/conv2d_71/bias/m%Adamax/batch_normalization_85/gamma/m$Adamax/batch_normalization_85/beta/mAdamax/conv2d_72/kernel/mAdamax/conv2d_72/bias/m%Adamax/batch_normalization_86/gamma/m$Adamax/batch_normalization_86/beta/mAdamax/conv2d_73/kernel/mAdamax/conv2d_73/bias/m%Adamax/batch_normalization_87/gamma/m$Adamax/batch_normalization_87/beta/mAdamax/dense_24/kernel/mAdamax/dense_24/bias/m%Adamax/batch_normalization_88/gamma/m$Adamax/batch_normalization_88/beta/mAdamax/dense_25/kernel/mAdamax/dense_25/bias/m%Adamax/batch_normalization_89/gamma/m$Adamax/batch_normalization_89/beta/mAdamax/dense_26/kernel/mAdamax/dense_26/bias/mAdamax/conv2d_70/kernel/vAdamax/conv2d_70/bias/v%Adamax/batch_normalization_84/gamma/v$Adamax/batch_normalization_84/beta/vAdamax/conv2d_71/kernel/vAdamax/conv2d_71/bias/v%Adamax/batch_normalization_85/gamma/v$Adamax/batch_normalization_85/beta/vAdamax/conv2d_72/kernel/vAdamax/conv2d_72/bias/v%Adamax/batch_normalization_86/gamma/v$Adamax/batch_normalization_86/beta/vAdamax/conv2d_73/kernel/vAdamax/conv2d_73/bias/v%Adamax/batch_normalization_87/gamma/v$Adamax/batch_normalization_87/beta/vAdamax/dense_24/kernel/vAdamax/dense_24/bias/v%Adamax/batch_normalization_88/gamma/v$Adamax/batch_normalization_88/beta/vAdamax/dense_25/kernel/vAdamax/dense_25/bias/v%Adamax/batch_normalization_89/gamma/v$Adamax/batch_normalization_89/beta/vAdamax/dense_26/kernel/vAdamax/dense_26/bias/v*o
Tinh
f2d*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__traced_restore_246652??
?
?
7__inference_batch_normalization_87_layer_call_fn_245736

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_87_layer_call_and_return_conditional_losses_2428332
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
F
*__inference_flatten_5_layer_call_fn_245774

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_5_layer_call_and_return_conditional_losses_2437182
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_85_layer_call_fn_245304

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_85_layer_call_and_return_conditional_losses_2426012
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_86_layer_call_fn_245475

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_86_layer_call_and_return_conditional_losses_2426862
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_85_layer_call_and_return_conditional_losses_245260

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
d
F__inference_dropout_53_layer_call_and_return_conditional_losses_243556

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
E__inference_conv2d_73_layer_call_and_return_conditional_losses_245589

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
a
E__inference_flatten_5_layer_call_and_return_conditional_losses_245769

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
J
.__inference_activation_93_layer_call_fn_245056

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_93_layer_call_and_return_conditional_losses_2431712
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????00 2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????00 :W S
/
_output_shapes
:?????????00 
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_84_layer_call_fn_245184

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00 *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_84_layer_call_and_return_conditional_losses_2432162
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????00 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????00 ::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????00 
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_85_layer_call_and_return_conditional_losses_242570

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_89_layer_call_and_return_conditional_losses_243125

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_85_layer_call_fn_245291

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_85_layer_call_and_return_conditional_losses_2425702
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?0
?
R__inference_batch_normalization_88_layer_call_and_return_conditional_losses_245839

inputs
assignmovingavg_245814
assignmovingavg_1_245820)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg/245814*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_245814*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg/245814*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg/245814*
_output_shapes	
:?2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_245814AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg/245814*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg_1/245820*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_245820*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/245820*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/245820*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_245820AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg_1/245820*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

*__inference_conv2d_71_layer_call_fn_245230

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_71_layer_call_and_return_conditional_losses_2432932
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:????????? ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_84_layer_call_and_return_conditional_losses_245158

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????00 : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????00 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????00 ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????00 
 
_user_specified_nameinputs
??
?
I__inference_sequential_10_layer_call_and_return_conditional_losses_244023
conv2d_70_input
conv2d_70_243917
conv2d_70_243919!
batch_normalization_84_243923!
batch_normalization_84_243925!
batch_normalization_84_243927!
batch_normalization_84_243929
conv2d_71_243934
conv2d_71_243936!
batch_normalization_85_243940!
batch_normalization_85_243942!
batch_normalization_85_243944!
batch_normalization_85_243946
conv2d_72_243951
conv2d_72_243953!
batch_normalization_86_243957!
batch_normalization_86_243959!
batch_normalization_86_243961!
batch_normalization_86_243963
conv2d_73_243968
conv2d_73_243970!
batch_normalization_87_243974!
batch_normalization_87_243976!
batch_normalization_87_243978!
batch_normalization_87_243980
dense_24_243986
dense_24_243988!
batch_normalization_88_243992!
batch_normalization_88_243994!
batch_normalization_88_243996!
batch_normalization_88_243998
dense_25_244001
dense_25_244003!
batch_normalization_89_244007!
batch_normalization_89_244009!
batch_normalization_89_244011!
batch_normalization_89_244013
dense_26_244016
dense_26_244018
identity??.batch_normalization_84/StatefulPartitionedCall?.batch_normalization_85/StatefulPartitionedCall?.batch_normalization_86/StatefulPartitionedCall?.batch_normalization_87/StatefulPartitionedCall?.batch_normalization_88/StatefulPartitionedCall?.batch_normalization_89/StatefulPartitionedCall?!conv2d_70/StatefulPartitionedCall?!conv2d_71/StatefulPartitionedCall?!conv2d_72/StatefulPartitionedCall?!conv2d_73/StatefulPartitionedCall? dense_24/StatefulPartitionedCall? dense_25/StatefulPartitionedCall? dense_26/StatefulPartitionedCall?
!conv2d_70/StatefulPartitionedCallStatefulPartitionedCallconv2d_70_inputconv2d_70_243917conv2d_70_243919*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_70_layer_call_and_return_conditional_losses_2431502#
!conv2d_70/StatefulPartitionedCall?
activation_93/PartitionedCallPartitionedCall*conv2d_70/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_93_layer_call_and_return_conditional_losses_2431712
activation_93/PartitionedCall?
.batch_normalization_84/StatefulPartitionedCallStatefulPartitionedCall&activation_93/PartitionedCall:output:0batch_normalization_84_243923batch_normalization_84_243925batch_normalization_84_243927batch_normalization_84_243929*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00 *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_84_layer_call_and_return_conditional_losses_24321620
.batch_normalization_84/StatefulPartitionedCall?
 max_pooling2d_37/PartitionedCallPartitionedCall7batch_normalization_84/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_2425022"
 max_pooling2d_37/PartitionedCall?
dropout_51/PartitionedCallPartitionedCall)max_pooling2d_37/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_51_layer_call_and_return_conditional_losses_2432702
dropout_51/PartitionedCall?
!conv2d_71/StatefulPartitionedCallStatefulPartitionedCall#dropout_51/PartitionedCall:output:0conv2d_71_243934conv2d_71_243936*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_71_layer_call_and_return_conditional_losses_2432932#
!conv2d_71/StatefulPartitionedCall?
activation_94/PartitionedCallPartitionedCall*conv2d_71/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_94_layer_call_and_return_conditional_losses_2433142
activation_94/PartitionedCall?
.batch_normalization_85/StatefulPartitionedCallStatefulPartitionedCall&activation_94/PartitionedCall:output:0batch_normalization_85_243940batch_normalization_85_243942batch_normalization_85_243944batch_normalization_85_243946*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_85_layer_call_and_return_conditional_losses_24335920
.batch_normalization_85/StatefulPartitionedCall?
 max_pooling2d_38/PartitionedCallPartitionedCall7batch_normalization_85/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_2426182"
 max_pooling2d_38/PartitionedCall?
dropout_52/PartitionedCallPartitionedCall)max_pooling2d_38/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_52_layer_call_and_return_conditional_losses_2434132
dropout_52/PartitionedCall?
!conv2d_72/StatefulPartitionedCallStatefulPartitionedCall#dropout_52/PartitionedCall:output:0conv2d_72_243951conv2d_72_243953*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_72_layer_call_and_return_conditional_losses_2434362#
!conv2d_72/StatefulPartitionedCall?
activation_95/PartitionedCallPartitionedCall*conv2d_72/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_95_layer_call_and_return_conditional_losses_2434572
activation_95/PartitionedCall?
.batch_normalization_86/StatefulPartitionedCallStatefulPartitionedCall&activation_95/PartitionedCall:output:0batch_normalization_86_243957batch_normalization_86_243959batch_normalization_86_243961batch_normalization_86_243963*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_86_layer_call_and_return_conditional_losses_24350220
.batch_normalization_86/StatefulPartitionedCall?
 max_pooling2d_39/PartitionedCallPartitionedCall7batch_normalization_86/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_2427342"
 max_pooling2d_39/PartitionedCall?
dropout_53/PartitionedCallPartitionedCall)max_pooling2d_39/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_53_layer_call_and_return_conditional_losses_2435562
dropout_53/PartitionedCall?
!conv2d_73/StatefulPartitionedCallStatefulPartitionedCall#dropout_53/PartitionedCall:output:0conv2d_73_243968conv2d_73_243970*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_73_layer_call_and_return_conditional_losses_2435792#
!conv2d_73/StatefulPartitionedCall?
activation_96/PartitionedCallPartitionedCall*conv2d_73/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_96_layer_call_and_return_conditional_losses_2436002
activation_96/PartitionedCall?
.batch_normalization_87/StatefulPartitionedCallStatefulPartitionedCall&activation_96/PartitionedCall:output:0batch_normalization_87_243974batch_normalization_87_243976batch_normalization_87_243978batch_normalization_87_243980*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_87_layer_call_and_return_conditional_losses_24364520
.batch_normalization_87/StatefulPartitionedCall?
 max_pooling2d_40/PartitionedCallPartitionedCall7batch_normalization_87/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_40_layer_call_and_return_conditional_losses_2428502"
 max_pooling2d_40/PartitionedCall?
dropout_54/PartitionedCallPartitionedCall)max_pooling2d_40/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_54_layer_call_and_return_conditional_losses_2436992
dropout_54/PartitionedCall?
flatten_5/PartitionedCallPartitionedCall#dropout_54/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_5_layer_call_and_return_conditional_losses_2437182
flatten_5/PartitionedCall?
 dense_24/StatefulPartitionedCallStatefulPartitionedCall"flatten_5/PartitionedCall:output:0dense_24_243986dense_24_243988*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_24_layer_call_and_return_conditional_losses_2437362"
 dense_24/StatefulPartitionedCall?
activation_97/PartitionedCallPartitionedCall)dense_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_97_layer_call_and_return_conditional_losses_2437572
activation_97/PartitionedCall?
.batch_normalization_88/StatefulPartitionedCallStatefulPartitionedCall&activation_97/PartitionedCall:output:0batch_normalization_88_243992batch_normalization_88_243994batch_normalization_88_243996batch_normalization_88_243998*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_88_layer_call_and_return_conditional_losses_24298520
.batch_normalization_88/StatefulPartitionedCall?
 dense_25/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_88/StatefulPartitionedCall:output:0dense_25_244001dense_25_244003*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_25_layer_call_and_return_conditional_losses_2438102"
 dense_25/StatefulPartitionedCall?
activation_98/PartitionedCallPartitionedCall)dense_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_98_layer_call_and_return_conditional_losses_2438312
activation_98/PartitionedCall?
.batch_normalization_89/StatefulPartitionedCallStatefulPartitionedCall&activation_98/PartitionedCall:output:0batch_normalization_89_244007batch_normalization_89_244009batch_normalization_89_244011batch_normalization_89_244013*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_89_layer_call_and_return_conditional_losses_24312520
.batch_normalization_89/StatefulPartitionedCall?
 dense_26/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_89/StatefulPartitionedCall:output:0dense_26_244016dense_26_244018*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_2438842"
 dense_26/StatefulPartitionedCall?
activation_99/PartitionedCallPartitionedCall)dense_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_99_layer_call_and_return_conditional_losses_2439052
activation_99/PartitionedCall?
IdentityIdentity&activation_99/PartitionedCall:output:0/^batch_normalization_84/StatefulPartitionedCall/^batch_normalization_85/StatefulPartitionedCall/^batch_normalization_86/StatefulPartitionedCall/^batch_normalization_87/StatefulPartitionedCall/^batch_normalization_88/StatefulPartitionedCall/^batch_normalization_89/StatefulPartitionedCall"^conv2d_70/StatefulPartitionedCall"^conv2d_71/StatefulPartitionedCall"^conv2d_72/StatefulPartitionedCall"^conv2d_73/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????00::::::::::::::::::::::::::::::::::::::2`
.batch_normalization_84/StatefulPartitionedCall.batch_normalization_84/StatefulPartitionedCall2`
.batch_normalization_85/StatefulPartitionedCall.batch_normalization_85/StatefulPartitionedCall2`
.batch_normalization_86/StatefulPartitionedCall.batch_normalization_86/StatefulPartitionedCall2`
.batch_normalization_87/StatefulPartitionedCall.batch_normalization_87/StatefulPartitionedCall2`
.batch_normalization_88/StatefulPartitionedCall.batch_normalization_88/StatefulPartitionedCall2`
.batch_normalization_89/StatefulPartitionedCall.batch_normalization_89/StatefulPartitionedCall2F
!conv2d_70/StatefulPartitionedCall!conv2d_70/StatefulPartitionedCall2F
!conv2d_71/StatefulPartitionedCall!conv2d_71/StatefulPartitionedCall2F
!conv2d_72/StatefulPartitionedCall!conv2d_72/StatefulPartitionedCall2F
!conv2d_73/StatefulPartitionedCall!conv2d_73/StatefulPartitionedCall2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall:` \
/
_output_shapes
:?????????00
)
_user_specified_nameconv2d_70_input
?
?
R__inference_batch_normalization_84_layer_call_and_return_conditional_losses_243216

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????00 : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????00 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????00 ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????00 
 
_user_specified_nameinputs
?
G
+__inference_dropout_52_layer_call_fn_245395

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_52_layer_call_and_return_conditional_losses_2434132
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
ل
?
I__inference_sequential_10_layer_call_and_return_conditional_losses_244325

inputs
conv2d_70_244219
conv2d_70_244221!
batch_normalization_84_244225!
batch_normalization_84_244227!
batch_normalization_84_244229!
batch_normalization_84_244231
conv2d_71_244236
conv2d_71_244238!
batch_normalization_85_244242!
batch_normalization_85_244244!
batch_normalization_85_244246!
batch_normalization_85_244248
conv2d_72_244253
conv2d_72_244255!
batch_normalization_86_244259!
batch_normalization_86_244261!
batch_normalization_86_244263!
batch_normalization_86_244265
conv2d_73_244270
conv2d_73_244272!
batch_normalization_87_244276!
batch_normalization_87_244278!
batch_normalization_87_244280!
batch_normalization_87_244282
dense_24_244288
dense_24_244290!
batch_normalization_88_244294!
batch_normalization_88_244296!
batch_normalization_88_244298!
batch_normalization_88_244300
dense_25_244303
dense_25_244305!
batch_normalization_89_244309!
batch_normalization_89_244311!
batch_normalization_89_244313!
batch_normalization_89_244315
dense_26_244318
dense_26_244320
identity??.batch_normalization_84/StatefulPartitionedCall?.batch_normalization_85/StatefulPartitionedCall?.batch_normalization_86/StatefulPartitionedCall?.batch_normalization_87/StatefulPartitionedCall?.batch_normalization_88/StatefulPartitionedCall?.batch_normalization_89/StatefulPartitionedCall?!conv2d_70/StatefulPartitionedCall?!conv2d_71/StatefulPartitionedCall?!conv2d_72/StatefulPartitionedCall?!conv2d_73/StatefulPartitionedCall? dense_24/StatefulPartitionedCall? dense_25/StatefulPartitionedCall? dense_26/StatefulPartitionedCall?
!conv2d_70/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_70_244219conv2d_70_244221*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_70_layer_call_and_return_conditional_losses_2431502#
!conv2d_70/StatefulPartitionedCall?
activation_93/PartitionedCallPartitionedCall*conv2d_70/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_93_layer_call_and_return_conditional_losses_2431712
activation_93/PartitionedCall?
.batch_normalization_84/StatefulPartitionedCallStatefulPartitionedCall&activation_93/PartitionedCall:output:0batch_normalization_84_244225batch_normalization_84_244227batch_normalization_84_244229batch_normalization_84_244231*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00 *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_84_layer_call_and_return_conditional_losses_24321620
.batch_normalization_84/StatefulPartitionedCall?
 max_pooling2d_37/PartitionedCallPartitionedCall7batch_normalization_84/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_2425022"
 max_pooling2d_37/PartitionedCall?
dropout_51/PartitionedCallPartitionedCall)max_pooling2d_37/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_51_layer_call_and_return_conditional_losses_2432702
dropout_51/PartitionedCall?
!conv2d_71/StatefulPartitionedCallStatefulPartitionedCall#dropout_51/PartitionedCall:output:0conv2d_71_244236conv2d_71_244238*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_71_layer_call_and_return_conditional_losses_2432932#
!conv2d_71/StatefulPartitionedCall?
activation_94/PartitionedCallPartitionedCall*conv2d_71/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_94_layer_call_and_return_conditional_losses_2433142
activation_94/PartitionedCall?
.batch_normalization_85/StatefulPartitionedCallStatefulPartitionedCall&activation_94/PartitionedCall:output:0batch_normalization_85_244242batch_normalization_85_244244batch_normalization_85_244246batch_normalization_85_244248*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_85_layer_call_and_return_conditional_losses_24335920
.batch_normalization_85/StatefulPartitionedCall?
 max_pooling2d_38/PartitionedCallPartitionedCall7batch_normalization_85/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_2426182"
 max_pooling2d_38/PartitionedCall?
dropout_52/PartitionedCallPartitionedCall)max_pooling2d_38/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_52_layer_call_and_return_conditional_losses_2434132
dropout_52/PartitionedCall?
!conv2d_72/StatefulPartitionedCallStatefulPartitionedCall#dropout_52/PartitionedCall:output:0conv2d_72_244253conv2d_72_244255*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_72_layer_call_and_return_conditional_losses_2434362#
!conv2d_72/StatefulPartitionedCall?
activation_95/PartitionedCallPartitionedCall*conv2d_72/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_95_layer_call_and_return_conditional_losses_2434572
activation_95/PartitionedCall?
.batch_normalization_86/StatefulPartitionedCallStatefulPartitionedCall&activation_95/PartitionedCall:output:0batch_normalization_86_244259batch_normalization_86_244261batch_normalization_86_244263batch_normalization_86_244265*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_86_layer_call_and_return_conditional_losses_24350220
.batch_normalization_86/StatefulPartitionedCall?
 max_pooling2d_39/PartitionedCallPartitionedCall7batch_normalization_86/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_2427342"
 max_pooling2d_39/PartitionedCall?
dropout_53/PartitionedCallPartitionedCall)max_pooling2d_39/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_53_layer_call_and_return_conditional_losses_2435562
dropout_53/PartitionedCall?
!conv2d_73/StatefulPartitionedCallStatefulPartitionedCall#dropout_53/PartitionedCall:output:0conv2d_73_244270conv2d_73_244272*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_73_layer_call_and_return_conditional_losses_2435792#
!conv2d_73/StatefulPartitionedCall?
activation_96/PartitionedCallPartitionedCall*conv2d_73/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_96_layer_call_and_return_conditional_losses_2436002
activation_96/PartitionedCall?
.batch_normalization_87/StatefulPartitionedCallStatefulPartitionedCall&activation_96/PartitionedCall:output:0batch_normalization_87_244276batch_normalization_87_244278batch_normalization_87_244280batch_normalization_87_244282*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_87_layer_call_and_return_conditional_losses_24364520
.batch_normalization_87/StatefulPartitionedCall?
 max_pooling2d_40/PartitionedCallPartitionedCall7batch_normalization_87/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_40_layer_call_and_return_conditional_losses_2428502"
 max_pooling2d_40/PartitionedCall?
dropout_54/PartitionedCallPartitionedCall)max_pooling2d_40/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_54_layer_call_and_return_conditional_losses_2436992
dropout_54/PartitionedCall?
flatten_5/PartitionedCallPartitionedCall#dropout_54/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_5_layer_call_and_return_conditional_losses_2437182
flatten_5/PartitionedCall?
 dense_24/StatefulPartitionedCallStatefulPartitionedCall"flatten_5/PartitionedCall:output:0dense_24_244288dense_24_244290*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_24_layer_call_and_return_conditional_losses_2437362"
 dense_24/StatefulPartitionedCall?
activation_97/PartitionedCallPartitionedCall)dense_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_97_layer_call_and_return_conditional_losses_2437572
activation_97/PartitionedCall?
.batch_normalization_88/StatefulPartitionedCallStatefulPartitionedCall&activation_97/PartitionedCall:output:0batch_normalization_88_244294batch_normalization_88_244296batch_normalization_88_244298batch_normalization_88_244300*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_88_layer_call_and_return_conditional_losses_24298520
.batch_normalization_88/StatefulPartitionedCall?
 dense_25/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_88/StatefulPartitionedCall:output:0dense_25_244303dense_25_244305*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_25_layer_call_and_return_conditional_losses_2438102"
 dense_25/StatefulPartitionedCall?
activation_98/PartitionedCallPartitionedCall)dense_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_98_layer_call_and_return_conditional_losses_2438312
activation_98/PartitionedCall?
.batch_normalization_89/StatefulPartitionedCallStatefulPartitionedCall&activation_98/PartitionedCall:output:0batch_normalization_89_244309batch_normalization_89_244311batch_normalization_89_244313batch_normalization_89_244315*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_89_layer_call_and_return_conditional_losses_24312520
.batch_normalization_89/StatefulPartitionedCall?
 dense_26/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_89/StatefulPartitionedCall:output:0dense_26_244318dense_26_244320*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_2438842"
 dense_26/StatefulPartitionedCall?
activation_99/PartitionedCallPartitionedCall)dense_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_99_layer_call_and_return_conditional_losses_2439052
activation_99/PartitionedCall?
IdentityIdentity&activation_99/PartitionedCall:output:0/^batch_normalization_84/StatefulPartitionedCall/^batch_normalization_85/StatefulPartitionedCall/^batch_normalization_86/StatefulPartitionedCall/^batch_normalization_87/StatefulPartitionedCall/^batch_normalization_88/StatefulPartitionedCall/^batch_normalization_89/StatefulPartitionedCall"^conv2d_70/StatefulPartitionedCall"^conv2d_71/StatefulPartitionedCall"^conv2d_72/StatefulPartitionedCall"^conv2d_73/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????00::::::::::::::::::::::::::::::::::::::2`
.batch_normalization_84/StatefulPartitionedCall.batch_normalization_84/StatefulPartitionedCall2`
.batch_normalization_85/StatefulPartitionedCall.batch_normalization_85/StatefulPartitionedCall2`
.batch_normalization_86/StatefulPartitionedCall.batch_normalization_86/StatefulPartitionedCall2`
.batch_normalization_87/StatefulPartitionedCall.batch_normalization_87/StatefulPartitionedCall2`
.batch_normalization_88/StatefulPartitionedCall.batch_normalization_88/StatefulPartitionedCall2`
.batch_normalization_89/StatefulPartitionedCall.batch_normalization_89/StatefulPartitionedCall2F
!conv2d_70/StatefulPartitionedCall!conv2d_70/StatefulPartitionedCall2F
!conv2d_71/StatefulPartitionedCall!conv2d_71/StatefulPartitionedCall2F
!conv2d_72/StatefulPartitionedCall!conv2d_72/StatefulPartitionedCall2F
!conv2d_73/StatefulPartitionedCall!conv2d_73/StatefulPartitionedCall2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall:W S
/
_output_shapes
:?????????00
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_87_layer_call_fn_245723

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_87_layer_call_and_return_conditional_losses_2428022
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
J
.__inference_activation_99_layer_call_fn_246025

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_99_layer_call_and_return_conditional_losses_2439052
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
~
)__inference_dense_25_layer_call_fn_245904

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_25_layer_call_and_return_conditional_losses_2438102
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_86_layer_call_fn_245552

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_86_layer_call_and_return_conditional_losses_2435022
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_39_layer_call_fn_242740

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_2427342
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
ʨ
?9
"__inference__traced_restore_246652
file_prefix%
!assignvariableop_conv2d_70_kernel%
!assignvariableop_1_conv2d_70_bias3
/assignvariableop_2_batch_normalization_84_gamma2
.assignvariableop_3_batch_normalization_84_beta9
5assignvariableop_4_batch_normalization_84_moving_mean=
9assignvariableop_5_batch_normalization_84_moving_variance'
#assignvariableop_6_conv2d_71_kernel%
!assignvariableop_7_conv2d_71_bias3
/assignvariableop_8_batch_normalization_85_gamma2
.assignvariableop_9_batch_normalization_85_beta:
6assignvariableop_10_batch_normalization_85_moving_mean>
:assignvariableop_11_batch_normalization_85_moving_variance(
$assignvariableop_12_conv2d_72_kernel&
"assignvariableop_13_conv2d_72_bias4
0assignvariableop_14_batch_normalization_86_gamma3
/assignvariableop_15_batch_normalization_86_beta:
6assignvariableop_16_batch_normalization_86_moving_mean>
:assignvariableop_17_batch_normalization_86_moving_variance(
$assignvariableop_18_conv2d_73_kernel&
"assignvariableop_19_conv2d_73_bias4
0assignvariableop_20_batch_normalization_87_gamma3
/assignvariableop_21_batch_normalization_87_beta:
6assignvariableop_22_batch_normalization_87_moving_mean>
:assignvariableop_23_batch_normalization_87_moving_variance'
#assignvariableop_24_dense_24_kernel%
!assignvariableop_25_dense_24_bias4
0assignvariableop_26_batch_normalization_88_gamma3
/assignvariableop_27_batch_normalization_88_beta:
6assignvariableop_28_batch_normalization_88_moving_mean>
:assignvariableop_29_batch_normalization_88_moving_variance'
#assignvariableop_30_dense_25_kernel%
!assignvariableop_31_dense_25_bias4
0assignvariableop_32_batch_normalization_89_gamma3
/assignvariableop_33_batch_normalization_89_beta:
6assignvariableop_34_batch_normalization_89_moving_mean>
:assignvariableop_35_batch_normalization_89_moving_variance'
#assignvariableop_36_dense_26_kernel%
!assignvariableop_37_dense_26_bias#
assignvariableop_38_adamax_iter%
!assignvariableop_39_adamax_beta_1%
!assignvariableop_40_adamax_beta_2$
 assignvariableop_41_adamax_decay,
(assignvariableop_42_adamax_learning_rate
assignvariableop_43_total
assignvariableop_44_count
assignvariableop_45_total_1
assignvariableop_46_count_11
-assignvariableop_47_adamax_conv2d_70_kernel_m/
+assignvariableop_48_adamax_conv2d_70_bias_m=
9assignvariableop_49_adamax_batch_normalization_84_gamma_m<
8assignvariableop_50_adamax_batch_normalization_84_beta_m1
-assignvariableop_51_adamax_conv2d_71_kernel_m/
+assignvariableop_52_adamax_conv2d_71_bias_m=
9assignvariableop_53_adamax_batch_normalization_85_gamma_m<
8assignvariableop_54_adamax_batch_normalization_85_beta_m1
-assignvariableop_55_adamax_conv2d_72_kernel_m/
+assignvariableop_56_adamax_conv2d_72_bias_m=
9assignvariableop_57_adamax_batch_normalization_86_gamma_m<
8assignvariableop_58_adamax_batch_normalization_86_beta_m1
-assignvariableop_59_adamax_conv2d_73_kernel_m/
+assignvariableop_60_adamax_conv2d_73_bias_m=
9assignvariableop_61_adamax_batch_normalization_87_gamma_m<
8assignvariableop_62_adamax_batch_normalization_87_beta_m0
,assignvariableop_63_adamax_dense_24_kernel_m.
*assignvariableop_64_adamax_dense_24_bias_m=
9assignvariableop_65_adamax_batch_normalization_88_gamma_m<
8assignvariableop_66_adamax_batch_normalization_88_beta_m0
,assignvariableop_67_adamax_dense_25_kernel_m.
*assignvariableop_68_adamax_dense_25_bias_m=
9assignvariableop_69_adamax_batch_normalization_89_gamma_m<
8assignvariableop_70_adamax_batch_normalization_89_beta_m0
,assignvariableop_71_adamax_dense_26_kernel_m.
*assignvariableop_72_adamax_dense_26_bias_m1
-assignvariableop_73_adamax_conv2d_70_kernel_v/
+assignvariableop_74_adamax_conv2d_70_bias_v=
9assignvariableop_75_adamax_batch_normalization_84_gamma_v<
8assignvariableop_76_adamax_batch_normalization_84_beta_v1
-assignvariableop_77_adamax_conv2d_71_kernel_v/
+assignvariableop_78_adamax_conv2d_71_bias_v=
9assignvariableop_79_adamax_batch_normalization_85_gamma_v<
8assignvariableop_80_adamax_batch_normalization_85_beta_v1
-assignvariableop_81_adamax_conv2d_72_kernel_v/
+assignvariableop_82_adamax_conv2d_72_bias_v=
9assignvariableop_83_adamax_batch_normalization_86_gamma_v<
8assignvariableop_84_adamax_batch_normalization_86_beta_v1
-assignvariableop_85_adamax_conv2d_73_kernel_v/
+assignvariableop_86_adamax_conv2d_73_bias_v=
9assignvariableop_87_adamax_batch_normalization_87_gamma_v<
8assignvariableop_88_adamax_batch_normalization_87_beta_v0
,assignvariableop_89_adamax_dense_24_kernel_v.
*assignvariableop_90_adamax_dense_24_bias_v=
9assignvariableop_91_adamax_batch_normalization_88_gamma_v<
8assignvariableop_92_adamax_batch_normalization_88_beta_v0
,assignvariableop_93_adamax_dense_25_kernel_v.
*assignvariableop_94_adamax_dense_25_bias_v=
9assignvariableop_95_adamax_batch_normalization_89_gamma_v<
8assignvariableop_96_adamax_batch_normalization_89_beta_v0
,assignvariableop_97_adamax_dense_26_kernel_v.
*assignvariableop_98_adamax_dense_26_bias_v
identity_100??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_68?AssignVariableOp_69?AssignVariableOp_7?AssignVariableOp_70?AssignVariableOp_71?AssignVariableOp_72?AssignVariableOp_73?AssignVariableOp_74?AssignVariableOp_75?AssignVariableOp_76?AssignVariableOp_77?AssignVariableOp_78?AssignVariableOp_79?AssignVariableOp_8?AssignVariableOp_80?AssignVariableOp_81?AssignVariableOp_82?AssignVariableOp_83?AssignVariableOp_84?AssignVariableOp_85?AssignVariableOp_86?AssignVariableOp_87?AssignVariableOp_88?AssignVariableOp_89?AssignVariableOp_9?AssignVariableOp_90?AssignVariableOp_91?AssignVariableOp_92?AssignVariableOp_93?AssignVariableOp_94?AssignVariableOp_95?AssignVariableOp_96?AssignVariableOp_97?AssignVariableOp_98?7
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:d*
dtype0*?6
value?6B?6dB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:d*
dtype0*?
value?B?dB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*r
dtypesh
f2d	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_70_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_70_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp/assignvariableop_2_batch_normalization_84_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp.assignvariableop_3_batch_normalization_84_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp5assignvariableop_4_batch_normalization_84_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp9assignvariableop_5_batch_normalization_84_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_71_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_71_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp/assignvariableop_8_batch_normalization_85_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_batch_normalization_85_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp6assignvariableop_10_batch_normalization_85_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp:assignvariableop_11_batch_normalization_85_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv2d_72_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv2d_72_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp0assignvariableop_14_batch_normalization_86_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_batch_normalization_86_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp6assignvariableop_16_batch_normalization_86_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp:assignvariableop_17_batch_normalization_86_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp$assignvariableop_18_conv2d_73_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp"assignvariableop_19_conv2d_73_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp0assignvariableop_20_batch_normalization_87_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp/assignvariableop_21_batch_normalization_87_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_batch_normalization_87_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp:assignvariableop_23_batch_normalization_87_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp#assignvariableop_24_dense_24_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp!assignvariableop_25_dense_24_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp0assignvariableop_26_batch_normalization_88_gammaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp/assignvariableop_27_batch_normalization_88_betaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_batch_normalization_88_moving_meanIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp:assignvariableop_29_batch_normalization_88_moving_varianceIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp#assignvariableop_30_dense_25_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp!assignvariableop_31_dense_25_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp0assignvariableop_32_batch_normalization_89_gammaIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp/assignvariableop_33_batch_normalization_89_betaIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp6assignvariableop_34_batch_normalization_89_moving_meanIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp:assignvariableop_35_batch_normalization_89_moving_varianceIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp#assignvariableop_36_dense_26_kernelIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp!assignvariableop_37_dense_26_biasIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOpassignvariableop_38_adamax_iterIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp!assignvariableop_39_adamax_beta_1Identity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp!assignvariableop_40_adamax_beta_2Identity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp assignvariableop_41_adamax_decayIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp(assignvariableop_42_adamax_learning_rateIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOpassignvariableop_43_totalIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOpassignvariableop_44_countIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOpassignvariableop_45_total_1Identity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOpassignvariableop_46_count_1Identity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp-assignvariableop_47_adamax_conv2d_70_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp+assignvariableop_48_adamax_conv2d_70_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOp9assignvariableop_49_adamax_batch_normalization_84_gamma_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp8assignvariableop_50_adamax_batch_normalization_84_beta_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOp-assignvariableop_51_adamax_conv2d_71_kernel_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOp+assignvariableop_52_adamax_conv2d_71_bias_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOp9assignvariableop_53_adamax_batch_normalization_85_gamma_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOp8assignvariableop_54_adamax_batch_normalization_85_beta_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOp-assignvariableop_55_adamax_conv2d_72_kernel_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56?
AssignVariableOp_56AssignVariableOp+assignvariableop_56_adamax_conv2d_72_bias_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57?
AssignVariableOp_57AssignVariableOp9assignvariableop_57_adamax_batch_normalization_86_gamma_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58?
AssignVariableOp_58AssignVariableOp8assignvariableop_58_adamax_batch_normalization_86_beta_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59?
AssignVariableOp_59AssignVariableOp-assignvariableop_59_adamax_conv2d_73_kernel_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60?
AssignVariableOp_60AssignVariableOp+assignvariableop_60_adamax_conv2d_73_bias_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61?
AssignVariableOp_61AssignVariableOp9assignvariableop_61_adamax_batch_normalization_87_gamma_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62?
AssignVariableOp_62AssignVariableOp8assignvariableop_62_adamax_batch_normalization_87_beta_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63?
AssignVariableOp_63AssignVariableOp,assignvariableop_63_adamax_dense_24_kernel_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64?
AssignVariableOp_64AssignVariableOp*assignvariableop_64_adamax_dense_24_bias_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65?
AssignVariableOp_65AssignVariableOp9assignvariableop_65_adamax_batch_normalization_88_gamma_mIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66?
AssignVariableOp_66AssignVariableOp8assignvariableop_66_adamax_batch_normalization_88_beta_mIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67?
AssignVariableOp_67AssignVariableOp,assignvariableop_67_adamax_dense_25_kernel_mIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68?
AssignVariableOp_68AssignVariableOp*assignvariableop_68_adamax_dense_25_bias_mIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69?
AssignVariableOp_69AssignVariableOp9assignvariableop_69_adamax_batch_normalization_89_gamma_mIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70?
AssignVariableOp_70AssignVariableOp8assignvariableop_70_adamax_batch_normalization_89_beta_mIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71?
AssignVariableOp_71AssignVariableOp,assignvariableop_71_adamax_dense_26_kernel_mIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72?
AssignVariableOp_72AssignVariableOp*assignvariableop_72_adamax_dense_26_bias_mIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73?
AssignVariableOp_73AssignVariableOp-assignvariableop_73_adamax_conv2d_70_kernel_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74?
AssignVariableOp_74AssignVariableOp+assignvariableop_74_adamax_conv2d_70_bias_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_74n
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:2
Identity_75?
AssignVariableOp_75AssignVariableOp9assignvariableop_75_adamax_batch_normalization_84_gamma_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_75n
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:2
Identity_76?
AssignVariableOp_76AssignVariableOp8assignvariableop_76_adamax_batch_normalization_84_beta_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_76n
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:2
Identity_77?
AssignVariableOp_77AssignVariableOp-assignvariableop_77_adamax_conv2d_71_kernel_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_77n
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:2
Identity_78?
AssignVariableOp_78AssignVariableOp+assignvariableop_78_adamax_conv2d_71_bias_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_78n
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:2
Identity_79?
AssignVariableOp_79AssignVariableOp9assignvariableop_79_adamax_batch_normalization_85_gamma_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79n
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:2
Identity_80?
AssignVariableOp_80AssignVariableOp8assignvariableop_80_adamax_batch_normalization_85_beta_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_80n
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:2
Identity_81?
AssignVariableOp_81AssignVariableOp-assignvariableop_81_adamax_conv2d_72_kernel_vIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_81n
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:2
Identity_82?
AssignVariableOp_82AssignVariableOp+assignvariableop_82_adamax_conv2d_72_bias_vIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_82n
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:2
Identity_83?
AssignVariableOp_83AssignVariableOp9assignvariableop_83_adamax_batch_normalization_86_gamma_vIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_83n
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:2
Identity_84?
AssignVariableOp_84AssignVariableOp8assignvariableop_84_adamax_batch_normalization_86_beta_vIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_84n
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:2
Identity_85?
AssignVariableOp_85AssignVariableOp-assignvariableop_85_adamax_conv2d_73_kernel_vIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_85n
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:2
Identity_86?
AssignVariableOp_86AssignVariableOp+assignvariableop_86_adamax_conv2d_73_bias_vIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_86n
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:2
Identity_87?
AssignVariableOp_87AssignVariableOp9assignvariableop_87_adamax_batch_normalization_87_gamma_vIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_87n
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:2
Identity_88?
AssignVariableOp_88AssignVariableOp8assignvariableop_88_adamax_batch_normalization_87_beta_vIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_88n
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:2
Identity_89?
AssignVariableOp_89AssignVariableOp,assignvariableop_89_adamax_dense_24_kernel_vIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_89n
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:2
Identity_90?
AssignVariableOp_90AssignVariableOp*assignvariableop_90_adamax_dense_24_bias_vIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_90n
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:2
Identity_91?
AssignVariableOp_91AssignVariableOp9assignvariableop_91_adamax_batch_normalization_88_gamma_vIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_91n
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:2
Identity_92?
AssignVariableOp_92AssignVariableOp8assignvariableop_92_adamax_batch_normalization_88_beta_vIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_92n
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:2
Identity_93?
AssignVariableOp_93AssignVariableOp,assignvariableop_93_adamax_dense_25_kernel_vIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_93n
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:2
Identity_94?
AssignVariableOp_94AssignVariableOp*assignvariableop_94_adamax_dense_25_bias_vIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_94n
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:2
Identity_95?
AssignVariableOp_95AssignVariableOp9assignvariableop_95_adamax_batch_normalization_89_gamma_vIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_95n
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:2
Identity_96?
AssignVariableOp_96AssignVariableOp8assignvariableop_96_adamax_batch_normalization_89_beta_vIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_96n
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:2
Identity_97?
AssignVariableOp_97AssignVariableOp,assignvariableop_97_adamax_dense_26_kernel_vIdentity_97:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_97n
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:2
Identity_98?
AssignVariableOp_98AssignVariableOp*assignvariableop_98_adamax_dense_26_bias_vIdentity_98:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_989
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_99Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_99?
Identity_100IdentityIdentity_99:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98*
T0*
_output_shapes
: 2
Identity_100"%
identity_100Identity_100:output:0*?
_input_shapes?
?: :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_98:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
R__inference_batch_normalization_88_layer_call_and_return_conditional_losses_242985

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?.
__inference__traced_save_246345
file_prefix/
+savev2_conv2d_70_kernel_read_readvariableop-
)savev2_conv2d_70_bias_read_readvariableop;
7savev2_batch_normalization_84_gamma_read_readvariableop:
6savev2_batch_normalization_84_beta_read_readvariableopA
=savev2_batch_normalization_84_moving_mean_read_readvariableopE
Asavev2_batch_normalization_84_moving_variance_read_readvariableop/
+savev2_conv2d_71_kernel_read_readvariableop-
)savev2_conv2d_71_bias_read_readvariableop;
7savev2_batch_normalization_85_gamma_read_readvariableop:
6savev2_batch_normalization_85_beta_read_readvariableopA
=savev2_batch_normalization_85_moving_mean_read_readvariableopE
Asavev2_batch_normalization_85_moving_variance_read_readvariableop/
+savev2_conv2d_72_kernel_read_readvariableop-
)savev2_conv2d_72_bias_read_readvariableop;
7savev2_batch_normalization_86_gamma_read_readvariableop:
6savev2_batch_normalization_86_beta_read_readvariableopA
=savev2_batch_normalization_86_moving_mean_read_readvariableopE
Asavev2_batch_normalization_86_moving_variance_read_readvariableop/
+savev2_conv2d_73_kernel_read_readvariableop-
)savev2_conv2d_73_bias_read_readvariableop;
7savev2_batch_normalization_87_gamma_read_readvariableop:
6savev2_batch_normalization_87_beta_read_readvariableopA
=savev2_batch_normalization_87_moving_mean_read_readvariableopE
Asavev2_batch_normalization_87_moving_variance_read_readvariableop.
*savev2_dense_24_kernel_read_readvariableop,
(savev2_dense_24_bias_read_readvariableop;
7savev2_batch_normalization_88_gamma_read_readvariableop:
6savev2_batch_normalization_88_beta_read_readvariableopA
=savev2_batch_normalization_88_moving_mean_read_readvariableopE
Asavev2_batch_normalization_88_moving_variance_read_readvariableop.
*savev2_dense_25_kernel_read_readvariableop,
(savev2_dense_25_bias_read_readvariableop;
7savev2_batch_normalization_89_gamma_read_readvariableop:
6savev2_batch_normalization_89_beta_read_readvariableopA
=savev2_batch_normalization_89_moving_mean_read_readvariableopE
Asavev2_batch_normalization_89_moving_variance_read_readvariableop.
*savev2_dense_26_kernel_read_readvariableop,
(savev2_dense_26_bias_read_readvariableop*
&savev2_adamax_iter_read_readvariableop	,
(savev2_adamax_beta_1_read_readvariableop,
(savev2_adamax_beta_2_read_readvariableop+
'savev2_adamax_decay_read_readvariableop3
/savev2_adamax_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop8
4savev2_adamax_conv2d_70_kernel_m_read_readvariableop6
2savev2_adamax_conv2d_70_bias_m_read_readvariableopD
@savev2_adamax_batch_normalization_84_gamma_m_read_readvariableopC
?savev2_adamax_batch_normalization_84_beta_m_read_readvariableop8
4savev2_adamax_conv2d_71_kernel_m_read_readvariableop6
2savev2_adamax_conv2d_71_bias_m_read_readvariableopD
@savev2_adamax_batch_normalization_85_gamma_m_read_readvariableopC
?savev2_adamax_batch_normalization_85_beta_m_read_readvariableop8
4savev2_adamax_conv2d_72_kernel_m_read_readvariableop6
2savev2_adamax_conv2d_72_bias_m_read_readvariableopD
@savev2_adamax_batch_normalization_86_gamma_m_read_readvariableopC
?savev2_adamax_batch_normalization_86_beta_m_read_readvariableop8
4savev2_adamax_conv2d_73_kernel_m_read_readvariableop6
2savev2_adamax_conv2d_73_bias_m_read_readvariableopD
@savev2_adamax_batch_normalization_87_gamma_m_read_readvariableopC
?savev2_adamax_batch_normalization_87_beta_m_read_readvariableop7
3savev2_adamax_dense_24_kernel_m_read_readvariableop5
1savev2_adamax_dense_24_bias_m_read_readvariableopD
@savev2_adamax_batch_normalization_88_gamma_m_read_readvariableopC
?savev2_adamax_batch_normalization_88_beta_m_read_readvariableop7
3savev2_adamax_dense_25_kernel_m_read_readvariableop5
1savev2_adamax_dense_25_bias_m_read_readvariableopD
@savev2_adamax_batch_normalization_89_gamma_m_read_readvariableopC
?savev2_adamax_batch_normalization_89_beta_m_read_readvariableop7
3savev2_adamax_dense_26_kernel_m_read_readvariableop5
1savev2_adamax_dense_26_bias_m_read_readvariableop8
4savev2_adamax_conv2d_70_kernel_v_read_readvariableop6
2savev2_adamax_conv2d_70_bias_v_read_readvariableopD
@savev2_adamax_batch_normalization_84_gamma_v_read_readvariableopC
?savev2_adamax_batch_normalization_84_beta_v_read_readvariableop8
4savev2_adamax_conv2d_71_kernel_v_read_readvariableop6
2savev2_adamax_conv2d_71_bias_v_read_readvariableopD
@savev2_adamax_batch_normalization_85_gamma_v_read_readvariableopC
?savev2_adamax_batch_normalization_85_beta_v_read_readvariableop8
4savev2_adamax_conv2d_72_kernel_v_read_readvariableop6
2savev2_adamax_conv2d_72_bias_v_read_readvariableopD
@savev2_adamax_batch_normalization_86_gamma_v_read_readvariableopC
?savev2_adamax_batch_normalization_86_beta_v_read_readvariableop8
4savev2_adamax_conv2d_73_kernel_v_read_readvariableop6
2savev2_adamax_conv2d_73_bias_v_read_readvariableopD
@savev2_adamax_batch_normalization_87_gamma_v_read_readvariableopC
?savev2_adamax_batch_normalization_87_beta_v_read_readvariableop7
3savev2_adamax_dense_24_kernel_v_read_readvariableop5
1savev2_adamax_dense_24_bias_v_read_readvariableopD
@savev2_adamax_batch_normalization_88_gamma_v_read_readvariableopC
?savev2_adamax_batch_normalization_88_beta_v_read_readvariableop7
3savev2_adamax_dense_25_kernel_v_read_readvariableop5
1savev2_adamax_dense_25_bias_v_read_readvariableopD
@savev2_adamax_batch_normalization_89_gamma_v_read_readvariableopC
?savev2_adamax_batch_normalization_89_beta_v_read_readvariableop7
3savev2_adamax_dense_26_kernel_v_read_readvariableop5
1savev2_adamax_dense_26_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?7
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:d*
dtype0*?6
value?6B?6dB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:d*
dtype0*?
value?B?dB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?,
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_70_kernel_read_readvariableop)savev2_conv2d_70_bias_read_readvariableop7savev2_batch_normalization_84_gamma_read_readvariableop6savev2_batch_normalization_84_beta_read_readvariableop=savev2_batch_normalization_84_moving_mean_read_readvariableopAsavev2_batch_normalization_84_moving_variance_read_readvariableop+savev2_conv2d_71_kernel_read_readvariableop)savev2_conv2d_71_bias_read_readvariableop7savev2_batch_normalization_85_gamma_read_readvariableop6savev2_batch_normalization_85_beta_read_readvariableop=savev2_batch_normalization_85_moving_mean_read_readvariableopAsavev2_batch_normalization_85_moving_variance_read_readvariableop+savev2_conv2d_72_kernel_read_readvariableop)savev2_conv2d_72_bias_read_readvariableop7savev2_batch_normalization_86_gamma_read_readvariableop6savev2_batch_normalization_86_beta_read_readvariableop=savev2_batch_normalization_86_moving_mean_read_readvariableopAsavev2_batch_normalization_86_moving_variance_read_readvariableop+savev2_conv2d_73_kernel_read_readvariableop)savev2_conv2d_73_bias_read_readvariableop7savev2_batch_normalization_87_gamma_read_readvariableop6savev2_batch_normalization_87_beta_read_readvariableop=savev2_batch_normalization_87_moving_mean_read_readvariableopAsavev2_batch_normalization_87_moving_variance_read_readvariableop*savev2_dense_24_kernel_read_readvariableop(savev2_dense_24_bias_read_readvariableop7savev2_batch_normalization_88_gamma_read_readvariableop6savev2_batch_normalization_88_beta_read_readvariableop=savev2_batch_normalization_88_moving_mean_read_readvariableopAsavev2_batch_normalization_88_moving_variance_read_readvariableop*savev2_dense_25_kernel_read_readvariableop(savev2_dense_25_bias_read_readvariableop7savev2_batch_normalization_89_gamma_read_readvariableop6savev2_batch_normalization_89_beta_read_readvariableop=savev2_batch_normalization_89_moving_mean_read_readvariableopAsavev2_batch_normalization_89_moving_variance_read_readvariableop*savev2_dense_26_kernel_read_readvariableop(savev2_dense_26_bias_read_readvariableop&savev2_adamax_iter_read_readvariableop(savev2_adamax_beta_1_read_readvariableop(savev2_adamax_beta_2_read_readvariableop'savev2_adamax_decay_read_readvariableop/savev2_adamax_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop4savev2_adamax_conv2d_70_kernel_m_read_readvariableop2savev2_adamax_conv2d_70_bias_m_read_readvariableop@savev2_adamax_batch_normalization_84_gamma_m_read_readvariableop?savev2_adamax_batch_normalization_84_beta_m_read_readvariableop4savev2_adamax_conv2d_71_kernel_m_read_readvariableop2savev2_adamax_conv2d_71_bias_m_read_readvariableop@savev2_adamax_batch_normalization_85_gamma_m_read_readvariableop?savev2_adamax_batch_normalization_85_beta_m_read_readvariableop4savev2_adamax_conv2d_72_kernel_m_read_readvariableop2savev2_adamax_conv2d_72_bias_m_read_readvariableop@savev2_adamax_batch_normalization_86_gamma_m_read_readvariableop?savev2_adamax_batch_normalization_86_beta_m_read_readvariableop4savev2_adamax_conv2d_73_kernel_m_read_readvariableop2savev2_adamax_conv2d_73_bias_m_read_readvariableop@savev2_adamax_batch_normalization_87_gamma_m_read_readvariableop?savev2_adamax_batch_normalization_87_beta_m_read_readvariableop3savev2_adamax_dense_24_kernel_m_read_readvariableop1savev2_adamax_dense_24_bias_m_read_readvariableop@savev2_adamax_batch_normalization_88_gamma_m_read_readvariableop?savev2_adamax_batch_normalization_88_beta_m_read_readvariableop3savev2_adamax_dense_25_kernel_m_read_readvariableop1savev2_adamax_dense_25_bias_m_read_readvariableop@savev2_adamax_batch_normalization_89_gamma_m_read_readvariableop?savev2_adamax_batch_normalization_89_beta_m_read_readvariableop3savev2_adamax_dense_26_kernel_m_read_readvariableop1savev2_adamax_dense_26_bias_m_read_readvariableop4savev2_adamax_conv2d_70_kernel_v_read_readvariableop2savev2_adamax_conv2d_70_bias_v_read_readvariableop@savev2_adamax_batch_normalization_84_gamma_v_read_readvariableop?savev2_adamax_batch_normalization_84_beta_v_read_readvariableop4savev2_adamax_conv2d_71_kernel_v_read_readvariableop2savev2_adamax_conv2d_71_bias_v_read_readvariableop@savev2_adamax_batch_normalization_85_gamma_v_read_readvariableop?savev2_adamax_batch_normalization_85_beta_v_read_readvariableop4savev2_adamax_conv2d_72_kernel_v_read_readvariableop2savev2_adamax_conv2d_72_bias_v_read_readvariableop@savev2_adamax_batch_normalization_86_gamma_v_read_readvariableop?savev2_adamax_batch_normalization_86_beta_v_read_readvariableop4savev2_adamax_conv2d_73_kernel_v_read_readvariableop2savev2_adamax_conv2d_73_bias_v_read_readvariableop@savev2_adamax_batch_normalization_87_gamma_v_read_readvariableop?savev2_adamax_batch_normalization_87_beta_v_read_readvariableop3savev2_adamax_dense_24_kernel_v_read_readvariableop1savev2_adamax_dense_24_bias_v_read_readvariableop@savev2_adamax_batch_normalization_88_gamma_v_read_readvariableop?savev2_adamax_batch_normalization_88_beta_v_read_readvariableop3savev2_adamax_dense_25_kernel_v_read_readvariableop1savev2_adamax_dense_25_bias_v_read_readvariableop@savev2_adamax_batch_normalization_89_gamma_v_read_readvariableop?savev2_adamax_batch_normalization_89_beta_v_read_readvariableop3savev2_adamax_dense_26_kernel_v_read_readvariableop1savev2_adamax_dense_26_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *r
dtypesh
f2d	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: : : : : : : :  : : : : : : @:@:@:@:@:@:@@:@:@:@:@:@:
??:?:?:?:?:?:
??:?:?:?:?:?:	?:: : : : : : : : : : : : : :  : : : : @:@:@:@:@@:@:@:@:
??:?:?:?:
??:?:?:?:	?:: : : : :  : : : : @:@:@:@:@@:@:@:@:
??:?:?:?:
??:?:?:?:	?:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: : 	

_output_shapes
: : 


_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:! 

_output_shapes	
:?:!!

_output_shapes	
:?:!"

_output_shapes	
:?:!#

_output_shapes	
:?:!$

_output_shapes	
:?:%%!

_output_shapes
:	?: &

_output_shapes
::'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: :*

_output_shapes
: :+

_output_shapes
: :,

_output_shapes
: :-

_output_shapes
: :.

_output_shapes
: :/

_output_shapes
: :,0(
&
_output_shapes
: : 1

_output_shapes
: : 2

_output_shapes
: : 3

_output_shapes
: :,4(
&
_output_shapes
:  : 5

_output_shapes
: : 6

_output_shapes
: : 7

_output_shapes
: :,8(
&
_output_shapes
: @: 9

_output_shapes
:@: :

_output_shapes
:@: ;

_output_shapes
:@:,<(
&
_output_shapes
:@@: =

_output_shapes
:@: >

_output_shapes
:@: ?

_output_shapes
:@:&@"
 
_output_shapes
:
??:!A

_output_shapes	
:?:!B

_output_shapes	
:?:!C

_output_shapes	
:?:&D"
 
_output_shapes
:
??:!E

_output_shapes	
:?:!F

_output_shapes	
:?:!G

_output_shapes	
:?:%H!

_output_shapes
:	?: I

_output_shapes
::,J(
&
_output_shapes
: : K

_output_shapes
: : L

_output_shapes
: : M

_output_shapes
: :,N(
&
_output_shapes
:  : O

_output_shapes
: : P

_output_shapes
: : Q

_output_shapes
: :,R(
&
_output_shapes
: @: S

_output_shapes
:@: T

_output_shapes
:@: U

_output_shapes
:@:,V(
&
_output_shapes
:@@: W

_output_shapes
:@: X

_output_shapes
:@: Y

_output_shapes
:@:&Z"
 
_output_shapes
:
??:![

_output_shapes	
:?:!\

_output_shapes	
:?:!]

_output_shapes	
:?:&^"
 
_output_shapes
:
??:!_

_output_shapes	
:?:!`

_output_shapes	
:?:!a

_output_shapes	
:?:%b!

_output_shapes
:	?: c

_output_shapes
::d

_output_shapes
: 
?
e
F__inference_dropout_54_layer_call_and_return_conditional_losses_245748

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_87_layer_call_and_return_conditional_losses_243627

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
d
+__inference_dropout_54_layer_call_fn_245758

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_54_layer_call_and_return_conditional_losses_2436942
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
.__inference_sequential_10_layer_call_fn_244404
conv2d_70_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_70_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*H
_read_only_resource_inputs*
(&	
 !"#$%&*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_10_layer_call_and_return_conditional_losses_2443252
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????00::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:?????????00
)
_user_specified_nameconv2d_70_input
?
?
R__inference_batch_normalization_85_layer_call_and_return_conditional_losses_245342

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:????????? ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_87_layer_call_and_return_conditional_losses_245628

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
.__inference_sequential_10_layer_call_fn_244214
conv2d_70_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_70_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*<
_read_only_resource_inputs
	
 #$%&*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_10_layer_call_and_return_conditional_losses_2441352
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????00::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:?????????00
)
_user_specified_nameconv2d_70_input
?
?
R__inference_batch_normalization_84_layer_call_and_return_conditional_losses_245094

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
e
I__inference_activation_94_layer_call_and_return_conditional_losses_245235

inputs
identityS
EluEluinputs*
T0*/
_output_shapes
:????????? 2
Elum
IdentityIdentityElu:activations:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
e
F__inference_dropout_52_layer_call_and_return_conditional_losses_245380

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:????????? *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:????????? 2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:????????? 2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:????????? 2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
e
F__inference_dropout_52_layer_call_and_return_conditional_losses_243408

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:????????? *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:????????? 2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:????????? 2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:????????? 2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
d
+__inference_dropout_53_layer_call_fn_245574

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_53_layer_call_and_return_conditional_losses_2435512
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
~
)__inference_dense_24_layer_call_fn_245793

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_24_layer_call_and_return_conditional_losses_2437362
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_51_layer_call_and_return_conditional_losses_243270

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:????????? 2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:????????? 2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_86_layer_call_and_return_conditional_losses_245462

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
e
I__inference_activation_97_layer_call_and_return_conditional_losses_243757

inputs
identityL
EluEluinputs*
T0*(
_output_shapes
:??????????2
Eluf
IdentityIdentityElu:activations:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
+__inference_dropout_51_layer_call_fn_245206

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_51_layer_call_and_return_conditional_losses_2432652
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?	
?
E__inference_conv2d_71_layer_call_and_return_conditional_losses_243293

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:????????? ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
e
I__inference_activation_98_layer_call_and_return_conditional_losses_245909

inputs
identityL
EluEluinputs*
T0*(
_output_shapes
:??????????2
Eluf
IdentityIdentityElu:activations:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_85_layer_call_fn_245355

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_85_layer_call_and_return_conditional_losses_2433412
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_88_layer_call_and_return_conditional_losses_245859

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_86_layer_call_fn_245488

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_86_layer_call_and_return_conditional_losses_2427172
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_86_layer_call_fn_245539

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_86_layer_call_and_return_conditional_losses_2434842
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_84_layer_call_fn_245120

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_84_layer_call_and_return_conditional_losses_2424852
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_87_layer_call_and_return_conditional_losses_245710

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
J
.__inference_activation_97_layer_call_fn_245803

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_97_layer_call_and_return_conditional_losses_2437572
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_40_layer_call_and_return_conditional_losses_242850

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_84_layer_call_and_return_conditional_losses_245140

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????00 : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????00 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????00 ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????00 
 
_user_specified_nameinputs
?
d
F__inference_dropout_51_layer_call_and_return_conditional_losses_245201

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:????????? 2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:????????? 2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_86_layer_call_and_return_conditional_losses_242686

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
e
I__inference_activation_93_layer_call_and_return_conditional_losses_245051

inputs
identityS
EluEluinputs*
T0*/
_output_shapes
:?????????00 2
Elum
IdentityIdentityElu:activations:0*
T0*/
_output_shapes
:?????????00 2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????00 :W S
/
_output_shapes
:?????????00 
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_40_layer_call_fn_242856

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_40_layer_call_and_return_conditional_losses_2428502
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?0
?
R__inference_batch_normalization_88_layer_call_and_return_conditional_losses_242952

inputs
assignmovingavg_242927
assignmovingavg_1_242933)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg/242927*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_242927*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg/242927*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg/242927*
_output_shapes	
:?2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_242927AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg/242927*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg_1/242933*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_242933*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/242933*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/242933*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_242933AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg_1/242933*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_86_layer_call_and_return_conditional_losses_242717

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_87_layer_call_and_return_conditional_losses_245692

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?	
?
E__inference_conv2d_72_layer_call_and_return_conditional_losses_243436

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:????????? ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

*__inference_conv2d_72_layer_call_fn_245414

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_72_layer_call_and_return_conditional_losses_2434362
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:????????? ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?	
?
E__inference_conv2d_73_layer_call_and_return_conditional_losses_243579

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
E__inference_conv2d_70_layer_call_and_return_conditional_losses_245037

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00 *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00 2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????00 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????00::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????00
 
_user_specified_nameinputs
?
e
F__inference_dropout_51_layer_call_and_return_conditional_losses_243265

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:????????? *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:????????? 2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:????????? 2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:????????? 2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_87_layer_call_and_return_conditional_losses_242833

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
d
F__inference_dropout_52_layer_call_and_return_conditional_losses_245385

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:????????? 2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:????????? 2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?0
?
R__inference_batch_normalization_89_layer_call_and_return_conditional_losses_243092

inputs
assignmovingavg_243067
assignmovingavg_1_243073)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg/243067*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_243067*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg/243067*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg/243067*
_output_shapes	
:?2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_243067AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg/243067*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg_1/243073*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_243073*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/243073*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/243073*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_243073AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg_1/243073*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
J
.__inference_activation_94_layer_call_fn_245240

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_94_layer_call_and_return_conditional_losses_2433142
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
J
.__inference_activation_96_layer_call_fn_245608

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_96_layer_call_and_return_conditional_losses_2436002
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_85_layer_call_and_return_conditional_losses_242601

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?	
?
E__inference_conv2d_72_layer_call_and_return_conditional_losses_245405

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:????????? ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
d
F__inference_dropout_54_layer_call_and_return_conditional_losses_245753

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_86_layer_call_and_return_conditional_losses_245444

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_88_layer_call_fn_245885

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_88_layer_call_and_return_conditional_losses_2429852
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_88_layer_call_fn_245872

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_88_layer_call_and_return_conditional_losses_2429522
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_84_layer_call_fn_245107

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_84_layer_call_and_return_conditional_losses_2424542
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
.__inference_sequential_10_layer_call_fn_244946

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*<
_read_only_resource_inputs
	
 #$%&*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_10_layer_call_and_return_conditional_losses_2441352
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????00::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????00
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_84_layer_call_and_return_conditional_losses_242454

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
??
?
I__inference_sequential_10_layer_call_and_return_conditional_losses_244865

inputs,
(conv2d_70_conv2d_readvariableop_resource-
)conv2d_70_biasadd_readvariableop_resource2
.batch_normalization_84_readvariableop_resource4
0batch_normalization_84_readvariableop_1_resourceC
?batch_normalization_84_fusedbatchnormv3_readvariableop_resourceE
Abatch_normalization_84_fusedbatchnormv3_readvariableop_1_resource,
(conv2d_71_conv2d_readvariableop_resource-
)conv2d_71_biasadd_readvariableop_resource2
.batch_normalization_85_readvariableop_resource4
0batch_normalization_85_readvariableop_1_resourceC
?batch_normalization_85_fusedbatchnormv3_readvariableop_resourceE
Abatch_normalization_85_fusedbatchnormv3_readvariableop_1_resource,
(conv2d_72_conv2d_readvariableop_resource-
)conv2d_72_biasadd_readvariableop_resource2
.batch_normalization_86_readvariableop_resource4
0batch_normalization_86_readvariableop_1_resourceC
?batch_normalization_86_fusedbatchnormv3_readvariableop_resourceE
Abatch_normalization_86_fusedbatchnormv3_readvariableop_1_resource,
(conv2d_73_conv2d_readvariableop_resource-
)conv2d_73_biasadd_readvariableop_resource2
.batch_normalization_87_readvariableop_resource4
0batch_normalization_87_readvariableop_1_resourceC
?batch_normalization_87_fusedbatchnormv3_readvariableop_resourceE
Abatch_normalization_87_fusedbatchnormv3_readvariableop_1_resource+
'dense_24_matmul_readvariableop_resource,
(dense_24_biasadd_readvariableop_resource<
8batch_normalization_88_batchnorm_readvariableop_resource@
<batch_normalization_88_batchnorm_mul_readvariableop_resource>
:batch_normalization_88_batchnorm_readvariableop_1_resource>
:batch_normalization_88_batchnorm_readvariableop_2_resource+
'dense_25_matmul_readvariableop_resource,
(dense_25_biasadd_readvariableop_resource<
8batch_normalization_89_batchnorm_readvariableop_resource@
<batch_normalization_89_batchnorm_mul_readvariableop_resource>
:batch_normalization_89_batchnorm_readvariableop_1_resource>
:batch_normalization_89_batchnorm_readvariableop_2_resource+
'dense_26_matmul_readvariableop_resource,
(dense_26_biasadd_readvariableop_resource
identity??6batch_normalization_84/FusedBatchNormV3/ReadVariableOp?8batch_normalization_84/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_84/ReadVariableOp?'batch_normalization_84/ReadVariableOp_1?6batch_normalization_85/FusedBatchNormV3/ReadVariableOp?8batch_normalization_85/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_85/ReadVariableOp?'batch_normalization_85/ReadVariableOp_1?6batch_normalization_86/FusedBatchNormV3/ReadVariableOp?8batch_normalization_86/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_86/ReadVariableOp?'batch_normalization_86/ReadVariableOp_1?6batch_normalization_87/FusedBatchNormV3/ReadVariableOp?8batch_normalization_87/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_87/ReadVariableOp?'batch_normalization_87/ReadVariableOp_1?/batch_normalization_88/batchnorm/ReadVariableOp?1batch_normalization_88/batchnorm/ReadVariableOp_1?1batch_normalization_88/batchnorm/ReadVariableOp_2?3batch_normalization_88/batchnorm/mul/ReadVariableOp?/batch_normalization_89/batchnorm/ReadVariableOp?1batch_normalization_89/batchnorm/ReadVariableOp_1?1batch_normalization_89/batchnorm/ReadVariableOp_2?3batch_normalization_89/batchnorm/mul/ReadVariableOp? conv2d_70/BiasAdd/ReadVariableOp?conv2d_70/Conv2D/ReadVariableOp? conv2d_71/BiasAdd/ReadVariableOp?conv2d_71/Conv2D/ReadVariableOp? conv2d_72/BiasAdd/ReadVariableOp?conv2d_72/Conv2D/ReadVariableOp? conv2d_73/BiasAdd/ReadVariableOp?conv2d_73/Conv2D/ReadVariableOp?dense_24/BiasAdd/ReadVariableOp?dense_24/MatMul/ReadVariableOp?dense_25/BiasAdd/ReadVariableOp?dense_25/MatMul/ReadVariableOp?dense_26/BiasAdd/ReadVariableOp?dense_26/MatMul/ReadVariableOp?
conv2d_70/Conv2D/ReadVariableOpReadVariableOp(conv2d_70_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_70/Conv2D/ReadVariableOp?
conv2d_70/Conv2DConv2Dinputs'conv2d_70/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00 *
paddingSAME*
strides
2
conv2d_70/Conv2D?
 conv2d_70/BiasAdd/ReadVariableOpReadVariableOp)conv2d_70_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_70/BiasAdd/ReadVariableOp?
conv2d_70/BiasAddBiasAddconv2d_70/Conv2D:output:0(conv2d_70/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00 2
conv2d_70/BiasAdd?
activation_93/EluEluconv2d_70/BiasAdd:output:0*
T0*/
_output_shapes
:?????????00 2
activation_93/Elu?
%batch_normalization_84/ReadVariableOpReadVariableOp.batch_normalization_84_readvariableop_resource*
_output_shapes
: *
dtype02'
%batch_normalization_84/ReadVariableOp?
'batch_normalization_84/ReadVariableOp_1ReadVariableOp0batch_normalization_84_readvariableop_1_resource*
_output_shapes
: *
dtype02)
'batch_normalization_84/ReadVariableOp_1?
6batch_normalization_84/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_84_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype028
6batch_normalization_84/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_84/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_84_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02:
8batch_normalization_84/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_84/FusedBatchNormV3FusedBatchNormV3activation_93/Elu:activations:0-batch_normalization_84/ReadVariableOp:value:0/batch_normalization_84/ReadVariableOp_1:value:0>batch_normalization_84/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_84/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????00 : : : : :*
epsilon%o?:*
is_training( 2)
'batch_normalization_84/FusedBatchNormV3?
max_pooling2d_37/MaxPoolMaxPool+batch_normalization_84/FusedBatchNormV3:y:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_37/MaxPool?
dropout_51/IdentityIdentity!max_pooling2d_37/MaxPool:output:0*
T0*/
_output_shapes
:????????? 2
dropout_51/Identity?
conv2d_71/Conv2D/ReadVariableOpReadVariableOp(conv2d_71_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02!
conv2d_71/Conv2D/ReadVariableOp?
conv2d_71/Conv2DConv2Ddropout_51/Identity:output:0'conv2d_71/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
conv2d_71/Conv2D?
 conv2d_71/BiasAdd/ReadVariableOpReadVariableOp)conv2d_71_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_71/BiasAdd/ReadVariableOp?
conv2d_71/BiasAddBiasAddconv2d_71/Conv2D:output:0(conv2d_71/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_71/BiasAdd?
activation_94/EluEluconv2d_71/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
activation_94/Elu?
%batch_normalization_85/ReadVariableOpReadVariableOp.batch_normalization_85_readvariableop_resource*
_output_shapes
: *
dtype02'
%batch_normalization_85/ReadVariableOp?
'batch_normalization_85/ReadVariableOp_1ReadVariableOp0batch_normalization_85_readvariableop_1_resource*
_output_shapes
: *
dtype02)
'batch_normalization_85/ReadVariableOp_1?
6batch_normalization_85/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_85_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype028
6batch_normalization_85/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_85/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_85_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02:
8batch_normalization_85/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_85/FusedBatchNormV3FusedBatchNormV3activation_94/Elu:activations:0-batch_normalization_85/ReadVariableOp:value:0/batch_normalization_85/ReadVariableOp_1:value:0>batch_normalization_85/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_85/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
is_training( 2)
'batch_normalization_85/FusedBatchNormV3?
max_pooling2d_38/MaxPoolMaxPool+batch_normalization_85/FusedBatchNormV3:y:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_38/MaxPool?
dropout_52/IdentityIdentity!max_pooling2d_38/MaxPool:output:0*
T0*/
_output_shapes
:????????? 2
dropout_52/Identity?
conv2d_72/Conv2D/ReadVariableOpReadVariableOp(conv2d_72_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_72/Conv2D/ReadVariableOp?
conv2d_72/Conv2DConv2Ddropout_52/Identity:output:0'conv2d_72/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_72/Conv2D?
 conv2d_72/BiasAdd/ReadVariableOpReadVariableOp)conv2d_72_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_72/BiasAdd/ReadVariableOp?
conv2d_72/BiasAddBiasAddconv2d_72/Conv2D:output:0(conv2d_72/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_72/BiasAdd?
activation_95/EluEluconv2d_72/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
activation_95/Elu?
%batch_normalization_86/ReadVariableOpReadVariableOp.batch_normalization_86_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_86/ReadVariableOp?
'batch_normalization_86/ReadVariableOp_1ReadVariableOp0batch_normalization_86_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_86/ReadVariableOp_1?
6batch_normalization_86/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_86_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_86/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_86/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_86_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_86/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_86/FusedBatchNormV3FusedBatchNormV3activation_95/Elu:activations:0-batch_normalization_86/ReadVariableOp:value:0/batch_normalization_86/ReadVariableOp_1:value:0>batch_normalization_86/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_86/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2)
'batch_normalization_86/FusedBatchNormV3?
max_pooling2d_39/MaxPoolMaxPool+batch_normalization_86/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_39/MaxPool?
dropout_53/IdentityIdentity!max_pooling2d_39/MaxPool:output:0*
T0*/
_output_shapes
:?????????@2
dropout_53/Identity?
conv2d_73/Conv2D/ReadVariableOpReadVariableOp(conv2d_73_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_73/Conv2D/ReadVariableOp?
conv2d_73/Conv2DConv2Ddropout_53/Identity:output:0'conv2d_73/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_73/Conv2D?
 conv2d_73/BiasAdd/ReadVariableOpReadVariableOp)conv2d_73_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_73/BiasAdd/ReadVariableOp?
conv2d_73/BiasAddBiasAddconv2d_73/Conv2D:output:0(conv2d_73/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_73/BiasAdd?
activation_96/EluEluconv2d_73/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
activation_96/Elu?
%batch_normalization_87/ReadVariableOpReadVariableOp.batch_normalization_87_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_87/ReadVariableOp?
'batch_normalization_87/ReadVariableOp_1ReadVariableOp0batch_normalization_87_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_87/ReadVariableOp_1?
6batch_normalization_87/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_87_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_87/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_87/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_87_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_87/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_87/FusedBatchNormV3FusedBatchNormV3activation_96/Elu:activations:0-batch_normalization_87/ReadVariableOp:value:0/batch_normalization_87/ReadVariableOp_1:value:0>batch_normalization_87/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_87/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2)
'batch_normalization_87/FusedBatchNormV3?
max_pooling2d_40/MaxPoolMaxPool+batch_normalization_87/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_40/MaxPool?
dropout_54/IdentityIdentity!max_pooling2d_40/MaxPool:output:0*
T0*/
_output_shapes
:?????????@2
dropout_54/Identitys
flatten_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  2
flatten_5/Const?
flatten_5/ReshapeReshapedropout_54/Identity:output:0flatten_5/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_5/Reshape?
dense_24/MatMul/ReadVariableOpReadVariableOp'dense_24_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_24/MatMul/ReadVariableOp?
dense_24/MatMulMatMulflatten_5/Reshape:output:0&dense_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_24/MatMul?
dense_24/BiasAdd/ReadVariableOpReadVariableOp(dense_24_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_24/BiasAdd/ReadVariableOp?
dense_24/BiasAddBiasAdddense_24/MatMul:product:0'dense_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_24/BiasAdd{
activation_97/EluEludense_24/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
activation_97/Elu?
/batch_normalization_88/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_88_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype021
/batch_normalization_88/batchnorm/ReadVariableOp?
&batch_normalization_88/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_88/batchnorm/add/y?
$batch_normalization_88/batchnorm/addAddV27batch_normalization_88/batchnorm/ReadVariableOp:value:0/batch_normalization_88/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2&
$batch_normalization_88/batchnorm/add?
&batch_normalization_88/batchnorm/RsqrtRsqrt(batch_normalization_88/batchnorm/add:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_88/batchnorm/Rsqrt?
3batch_normalization_88/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_88_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype025
3batch_normalization_88/batchnorm/mul/ReadVariableOp?
$batch_normalization_88/batchnorm/mulMul*batch_normalization_88/batchnorm/Rsqrt:y:0;batch_normalization_88/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2&
$batch_normalization_88/batchnorm/mul?
&batch_normalization_88/batchnorm/mul_1Mulactivation_97/Elu:activations:0(batch_normalization_88/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_88/batchnorm/mul_1?
1batch_normalization_88/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_88_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype023
1batch_normalization_88/batchnorm/ReadVariableOp_1?
&batch_normalization_88/batchnorm/mul_2Mul9batch_normalization_88/batchnorm/ReadVariableOp_1:value:0(batch_normalization_88/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_88/batchnorm/mul_2?
1batch_normalization_88/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_88_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype023
1batch_normalization_88/batchnorm/ReadVariableOp_2?
$batch_normalization_88/batchnorm/subSub9batch_normalization_88/batchnorm/ReadVariableOp_2:value:0*batch_normalization_88/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2&
$batch_normalization_88/batchnorm/sub?
&batch_normalization_88/batchnorm/add_1AddV2*batch_normalization_88/batchnorm/mul_1:z:0(batch_normalization_88/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_88/batchnorm/add_1?
dense_25/MatMul/ReadVariableOpReadVariableOp'dense_25_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_25/MatMul/ReadVariableOp?
dense_25/MatMulMatMul*batch_normalization_88/batchnorm/add_1:z:0&dense_25/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_25/MatMul?
dense_25/BiasAdd/ReadVariableOpReadVariableOp(dense_25_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_25/BiasAdd/ReadVariableOp?
dense_25/BiasAddBiasAdddense_25/MatMul:product:0'dense_25/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_25/BiasAdd{
activation_98/EluEludense_25/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
activation_98/Elu?
/batch_normalization_89/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_89_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype021
/batch_normalization_89/batchnorm/ReadVariableOp?
&batch_normalization_89/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_89/batchnorm/add/y?
$batch_normalization_89/batchnorm/addAddV27batch_normalization_89/batchnorm/ReadVariableOp:value:0/batch_normalization_89/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2&
$batch_normalization_89/batchnorm/add?
&batch_normalization_89/batchnorm/RsqrtRsqrt(batch_normalization_89/batchnorm/add:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_89/batchnorm/Rsqrt?
3batch_normalization_89/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_89_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype025
3batch_normalization_89/batchnorm/mul/ReadVariableOp?
$batch_normalization_89/batchnorm/mulMul*batch_normalization_89/batchnorm/Rsqrt:y:0;batch_normalization_89/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2&
$batch_normalization_89/batchnorm/mul?
&batch_normalization_89/batchnorm/mul_1Mulactivation_98/Elu:activations:0(batch_normalization_89/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_89/batchnorm/mul_1?
1batch_normalization_89/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_89_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype023
1batch_normalization_89/batchnorm/ReadVariableOp_1?
&batch_normalization_89/batchnorm/mul_2Mul9batch_normalization_89/batchnorm/ReadVariableOp_1:value:0(batch_normalization_89/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_89/batchnorm/mul_2?
1batch_normalization_89/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_89_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype023
1batch_normalization_89/batchnorm/ReadVariableOp_2?
$batch_normalization_89/batchnorm/subSub9batch_normalization_89/batchnorm/ReadVariableOp_2:value:0*batch_normalization_89/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2&
$batch_normalization_89/batchnorm/sub?
&batch_normalization_89/batchnorm/add_1AddV2*batch_normalization_89/batchnorm/mul_1:z:0(batch_normalization_89/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_89/batchnorm/add_1?
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02 
dense_26/MatMul/ReadVariableOp?
dense_26/MatMulMatMul*batch_normalization_89/batchnorm/add_1:z:0&dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_26/MatMul?
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_26/BiasAdd/ReadVariableOp?
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_26/BiasAdd?
activation_99/SoftmaxSoftmaxdense_26/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
activation_99/Softmax?
IdentityIdentityactivation_99/Softmax:softmax:07^batch_normalization_84/FusedBatchNormV3/ReadVariableOp9^batch_normalization_84/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_84/ReadVariableOp(^batch_normalization_84/ReadVariableOp_17^batch_normalization_85/FusedBatchNormV3/ReadVariableOp9^batch_normalization_85/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_85/ReadVariableOp(^batch_normalization_85/ReadVariableOp_17^batch_normalization_86/FusedBatchNormV3/ReadVariableOp9^batch_normalization_86/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_86/ReadVariableOp(^batch_normalization_86/ReadVariableOp_17^batch_normalization_87/FusedBatchNormV3/ReadVariableOp9^batch_normalization_87/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_87/ReadVariableOp(^batch_normalization_87/ReadVariableOp_10^batch_normalization_88/batchnorm/ReadVariableOp2^batch_normalization_88/batchnorm/ReadVariableOp_12^batch_normalization_88/batchnorm/ReadVariableOp_24^batch_normalization_88/batchnorm/mul/ReadVariableOp0^batch_normalization_89/batchnorm/ReadVariableOp2^batch_normalization_89/batchnorm/ReadVariableOp_12^batch_normalization_89/batchnorm/ReadVariableOp_24^batch_normalization_89/batchnorm/mul/ReadVariableOp!^conv2d_70/BiasAdd/ReadVariableOp ^conv2d_70/Conv2D/ReadVariableOp!^conv2d_71/BiasAdd/ReadVariableOp ^conv2d_71/Conv2D/ReadVariableOp!^conv2d_72/BiasAdd/ReadVariableOp ^conv2d_72/Conv2D/ReadVariableOp!^conv2d_73/BiasAdd/ReadVariableOp ^conv2d_73/Conv2D/ReadVariableOp ^dense_24/BiasAdd/ReadVariableOp^dense_24/MatMul/ReadVariableOp ^dense_25/BiasAdd/ReadVariableOp^dense_25/MatMul/ReadVariableOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????00::::::::::::::::::::::::::::::::::::::2p
6batch_normalization_84/FusedBatchNormV3/ReadVariableOp6batch_normalization_84/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_84/FusedBatchNormV3/ReadVariableOp_18batch_normalization_84/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_84/ReadVariableOp%batch_normalization_84/ReadVariableOp2R
'batch_normalization_84/ReadVariableOp_1'batch_normalization_84/ReadVariableOp_12p
6batch_normalization_85/FusedBatchNormV3/ReadVariableOp6batch_normalization_85/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_85/FusedBatchNormV3/ReadVariableOp_18batch_normalization_85/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_85/ReadVariableOp%batch_normalization_85/ReadVariableOp2R
'batch_normalization_85/ReadVariableOp_1'batch_normalization_85/ReadVariableOp_12p
6batch_normalization_86/FusedBatchNormV3/ReadVariableOp6batch_normalization_86/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_86/FusedBatchNormV3/ReadVariableOp_18batch_normalization_86/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_86/ReadVariableOp%batch_normalization_86/ReadVariableOp2R
'batch_normalization_86/ReadVariableOp_1'batch_normalization_86/ReadVariableOp_12p
6batch_normalization_87/FusedBatchNormV3/ReadVariableOp6batch_normalization_87/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_87/FusedBatchNormV3/ReadVariableOp_18batch_normalization_87/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_87/ReadVariableOp%batch_normalization_87/ReadVariableOp2R
'batch_normalization_87/ReadVariableOp_1'batch_normalization_87/ReadVariableOp_12b
/batch_normalization_88/batchnorm/ReadVariableOp/batch_normalization_88/batchnorm/ReadVariableOp2f
1batch_normalization_88/batchnorm/ReadVariableOp_11batch_normalization_88/batchnorm/ReadVariableOp_12f
1batch_normalization_88/batchnorm/ReadVariableOp_21batch_normalization_88/batchnorm/ReadVariableOp_22j
3batch_normalization_88/batchnorm/mul/ReadVariableOp3batch_normalization_88/batchnorm/mul/ReadVariableOp2b
/batch_normalization_89/batchnorm/ReadVariableOp/batch_normalization_89/batchnorm/ReadVariableOp2f
1batch_normalization_89/batchnorm/ReadVariableOp_11batch_normalization_89/batchnorm/ReadVariableOp_12f
1batch_normalization_89/batchnorm/ReadVariableOp_21batch_normalization_89/batchnorm/ReadVariableOp_22j
3batch_normalization_89/batchnorm/mul/ReadVariableOp3batch_normalization_89/batchnorm/mul/ReadVariableOp2D
 conv2d_70/BiasAdd/ReadVariableOp conv2d_70/BiasAdd/ReadVariableOp2B
conv2d_70/Conv2D/ReadVariableOpconv2d_70/Conv2D/ReadVariableOp2D
 conv2d_71/BiasAdd/ReadVariableOp conv2d_71/BiasAdd/ReadVariableOp2B
conv2d_71/Conv2D/ReadVariableOpconv2d_71/Conv2D/ReadVariableOp2D
 conv2d_72/BiasAdd/ReadVariableOp conv2d_72/BiasAdd/ReadVariableOp2B
conv2d_72/Conv2D/ReadVariableOpconv2d_72/Conv2D/ReadVariableOp2D
 conv2d_73/BiasAdd/ReadVariableOp conv2d_73/BiasAdd/ReadVariableOp2B
conv2d_73/Conv2D/ReadVariableOpconv2d_73/Conv2D/ReadVariableOp2B
dense_24/BiasAdd/ReadVariableOpdense_24/BiasAdd/ReadVariableOp2@
dense_24/MatMul/ReadVariableOpdense_24/MatMul/ReadVariableOp2B
dense_25/BiasAdd/ReadVariableOpdense_25/BiasAdd/ReadVariableOp2@
dense_25/MatMul/ReadVariableOpdense_25/MatMul/ReadVariableOp2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????00
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_85_layer_call_and_return_conditional_losses_243341

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:????????? ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_84_layer_call_and_return_conditional_losses_245076

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?	
?
E__inference_conv2d_70_layer_call_and_return_conditional_losses_243150

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00 *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00 2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????00 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????00::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????00
 
_user_specified_nameinputs
?
d
F__inference_dropout_52_layer_call_and_return_conditional_losses_243413

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:????????? 2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:????????? 2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
e
I__inference_activation_96_layer_call_and_return_conditional_losses_243600

inputs
identityS
EluEluinputs*
T0*/
_output_shapes
:?????????@2
Elum
IdentityIdentityElu:activations:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_85_layer_call_and_return_conditional_losses_243359

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:????????? ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_87_layer_call_fn_245659

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_87_layer_call_and_return_conditional_losses_2436272
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_84_layer_call_and_return_conditional_losses_243198

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????00 : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????00 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????00 ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????00 
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_87_layer_call_and_return_conditional_losses_243645

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
J
.__inference_activation_98_layer_call_fn_245914

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_98_layer_call_and_return_conditional_losses_2438312
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
e
F__inference_dropout_53_layer_call_and_return_conditional_losses_245564

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
D__inference_dense_25_layer_call_and_return_conditional_losses_243810

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
E__inference_conv2d_71_layer_call_and_return_conditional_losses_245221

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:????????? ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
??
?&
!__inference__wrapped_model_242392
conv2d_70_input:
6sequential_10_conv2d_70_conv2d_readvariableop_resource;
7sequential_10_conv2d_70_biasadd_readvariableop_resource@
<sequential_10_batch_normalization_84_readvariableop_resourceB
>sequential_10_batch_normalization_84_readvariableop_1_resourceQ
Msequential_10_batch_normalization_84_fusedbatchnormv3_readvariableop_resourceS
Osequential_10_batch_normalization_84_fusedbatchnormv3_readvariableop_1_resource:
6sequential_10_conv2d_71_conv2d_readvariableop_resource;
7sequential_10_conv2d_71_biasadd_readvariableop_resource@
<sequential_10_batch_normalization_85_readvariableop_resourceB
>sequential_10_batch_normalization_85_readvariableop_1_resourceQ
Msequential_10_batch_normalization_85_fusedbatchnormv3_readvariableop_resourceS
Osequential_10_batch_normalization_85_fusedbatchnormv3_readvariableop_1_resource:
6sequential_10_conv2d_72_conv2d_readvariableop_resource;
7sequential_10_conv2d_72_biasadd_readvariableop_resource@
<sequential_10_batch_normalization_86_readvariableop_resourceB
>sequential_10_batch_normalization_86_readvariableop_1_resourceQ
Msequential_10_batch_normalization_86_fusedbatchnormv3_readvariableop_resourceS
Osequential_10_batch_normalization_86_fusedbatchnormv3_readvariableop_1_resource:
6sequential_10_conv2d_73_conv2d_readvariableop_resource;
7sequential_10_conv2d_73_biasadd_readvariableop_resource@
<sequential_10_batch_normalization_87_readvariableop_resourceB
>sequential_10_batch_normalization_87_readvariableop_1_resourceQ
Msequential_10_batch_normalization_87_fusedbatchnormv3_readvariableop_resourceS
Osequential_10_batch_normalization_87_fusedbatchnormv3_readvariableop_1_resource9
5sequential_10_dense_24_matmul_readvariableop_resource:
6sequential_10_dense_24_biasadd_readvariableop_resourceJ
Fsequential_10_batch_normalization_88_batchnorm_readvariableop_resourceN
Jsequential_10_batch_normalization_88_batchnorm_mul_readvariableop_resourceL
Hsequential_10_batch_normalization_88_batchnorm_readvariableop_1_resourceL
Hsequential_10_batch_normalization_88_batchnorm_readvariableop_2_resource9
5sequential_10_dense_25_matmul_readvariableop_resource:
6sequential_10_dense_25_biasadd_readvariableop_resourceJ
Fsequential_10_batch_normalization_89_batchnorm_readvariableop_resourceN
Jsequential_10_batch_normalization_89_batchnorm_mul_readvariableop_resourceL
Hsequential_10_batch_normalization_89_batchnorm_readvariableop_1_resourceL
Hsequential_10_batch_normalization_89_batchnorm_readvariableop_2_resource9
5sequential_10_dense_26_matmul_readvariableop_resource:
6sequential_10_dense_26_biasadd_readvariableop_resource
identity??Dsequential_10/batch_normalization_84/FusedBatchNormV3/ReadVariableOp?Fsequential_10/batch_normalization_84/FusedBatchNormV3/ReadVariableOp_1?3sequential_10/batch_normalization_84/ReadVariableOp?5sequential_10/batch_normalization_84/ReadVariableOp_1?Dsequential_10/batch_normalization_85/FusedBatchNormV3/ReadVariableOp?Fsequential_10/batch_normalization_85/FusedBatchNormV3/ReadVariableOp_1?3sequential_10/batch_normalization_85/ReadVariableOp?5sequential_10/batch_normalization_85/ReadVariableOp_1?Dsequential_10/batch_normalization_86/FusedBatchNormV3/ReadVariableOp?Fsequential_10/batch_normalization_86/FusedBatchNormV3/ReadVariableOp_1?3sequential_10/batch_normalization_86/ReadVariableOp?5sequential_10/batch_normalization_86/ReadVariableOp_1?Dsequential_10/batch_normalization_87/FusedBatchNormV3/ReadVariableOp?Fsequential_10/batch_normalization_87/FusedBatchNormV3/ReadVariableOp_1?3sequential_10/batch_normalization_87/ReadVariableOp?5sequential_10/batch_normalization_87/ReadVariableOp_1?=sequential_10/batch_normalization_88/batchnorm/ReadVariableOp??sequential_10/batch_normalization_88/batchnorm/ReadVariableOp_1??sequential_10/batch_normalization_88/batchnorm/ReadVariableOp_2?Asequential_10/batch_normalization_88/batchnorm/mul/ReadVariableOp?=sequential_10/batch_normalization_89/batchnorm/ReadVariableOp??sequential_10/batch_normalization_89/batchnorm/ReadVariableOp_1??sequential_10/batch_normalization_89/batchnorm/ReadVariableOp_2?Asequential_10/batch_normalization_89/batchnorm/mul/ReadVariableOp?.sequential_10/conv2d_70/BiasAdd/ReadVariableOp?-sequential_10/conv2d_70/Conv2D/ReadVariableOp?.sequential_10/conv2d_71/BiasAdd/ReadVariableOp?-sequential_10/conv2d_71/Conv2D/ReadVariableOp?.sequential_10/conv2d_72/BiasAdd/ReadVariableOp?-sequential_10/conv2d_72/Conv2D/ReadVariableOp?.sequential_10/conv2d_73/BiasAdd/ReadVariableOp?-sequential_10/conv2d_73/Conv2D/ReadVariableOp?-sequential_10/dense_24/BiasAdd/ReadVariableOp?,sequential_10/dense_24/MatMul/ReadVariableOp?-sequential_10/dense_25/BiasAdd/ReadVariableOp?,sequential_10/dense_25/MatMul/ReadVariableOp?-sequential_10/dense_26/BiasAdd/ReadVariableOp?,sequential_10/dense_26/MatMul/ReadVariableOp?
-sequential_10/conv2d_70/Conv2D/ReadVariableOpReadVariableOp6sequential_10_conv2d_70_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02/
-sequential_10/conv2d_70/Conv2D/ReadVariableOp?
sequential_10/conv2d_70/Conv2DConv2Dconv2d_70_input5sequential_10/conv2d_70/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00 *
paddingSAME*
strides
2 
sequential_10/conv2d_70/Conv2D?
.sequential_10/conv2d_70/BiasAdd/ReadVariableOpReadVariableOp7sequential_10_conv2d_70_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.sequential_10/conv2d_70/BiasAdd/ReadVariableOp?
sequential_10/conv2d_70/BiasAddBiasAdd'sequential_10/conv2d_70/Conv2D:output:06sequential_10/conv2d_70/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00 2!
sequential_10/conv2d_70/BiasAdd?
sequential_10/activation_93/EluElu(sequential_10/conv2d_70/BiasAdd:output:0*
T0*/
_output_shapes
:?????????00 2!
sequential_10/activation_93/Elu?
3sequential_10/batch_normalization_84/ReadVariableOpReadVariableOp<sequential_10_batch_normalization_84_readvariableop_resource*
_output_shapes
: *
dtype025
3sequential_10/batch_normalization_84/ReadVariableOp?
5sequential_10/batch_normalization_84/ReadVariableOp_1ReadVariableOp>sequential_10_batch_normalization_84_readvariableop_1_resource*
_output_shapes
: *
dtype027
5sequential_10/batch_normalization_84/ReadVariableOp_1?
Dsequential_10/batch_normalization_84/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_10_batch_normalization_84_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02F
Dsequential_10/batch_normalization_84/FusedBatchNormV3/ReadVariableOp?
Fsequential_10/batch_normalization_84/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_10_batch_normalization_84_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02H
Fsequential_10/batch_normalization_84/FusedBatchNormV3/ReadVariableOp_1?
5sequential_10/batch_normalization_84/FusedBatchNormV3FusedBatchNormV3-sequential_10/activation_93/Elu:activations:0;sequential_10/batch_normalization_84/ReadVariableOp:value:0=sequential_10/batch_normalization_84/ReadVariableOp_1:value:0Lsequential_10/batch_normalization_84/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_10/batch_normalization_84/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????00 : : : : :*
epsilon%o?:*
is_training( 27
5sequential_10/batch_normalization_84/FusedBatchNormV3?
&sequential_10/max_pooling2d_37/MaxPoolMaxPool9sequential_10/batch_normalization_84/FusedBatchNormV3:y:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2(
&sequential_10/max_pooling2d_37/MaxPool?
!sequential_10/dropout_51/IdentityIdentity/sequential_10/max_pooling2d_37/MaxPool:output:0*
T0*/
_output_shapes
:????????? 2#
!sequential_10/dropout_51/Identity?
-sequential_10/conv2d_71/Conv2D/ReadVariableOpReadVariableOp6sequential_10_conv2d_71_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02/
-sequential_10/conv2d_71/Conv2D/ReadVariableOp?
sequential_10/conv2d_71/Conv2DConv2D*sequential_10/dropout_51/Identity:output:05sequential_10/conv2d_71/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2 
sequential_10/conv2d_71/Conv2D?
.sequential_10/conv2d_71/BiasAdd/ReadVariableOpReadVariableOp7sequential_10_conv2d_71_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.sequential_10/conv2d_71/BiasAdd/ReadVariableOp?
sequential_10/conv2d_71/BiasAddBiasAdd'sequential_10/conv2d_71/Conv2D:output:06sequential_10/conv2d_71/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2!
sequential_10/conv2d_71/BiasAdd?
sequential_10/activation_94/EluElu(sequential_10/conv2d_71/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2!
sequential_10/activation_94/Elu?
3sequential_10/batch_normalization_85/ReadVariableOpReadVariableOp<sequential_10_batch_normalization_85_readvariableop_resource*
_output_shapes
: *
dtype025
3sequential_10/batch_normalization_85/ReadVariableOp?
5sequential_10/batch_normalization_85/ReadVariableOp_1ReadVariableOp>sequential_10_batch_normalization_85_readvariableop_1_resource*
_output_shapes
: *
dtype027
5sequential_10/batch_normalization_85/ReadVariableOp_1?
Dsequential_10/batch_normalization_85/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_10_batch_normalization_85_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02F
Dsequential_10/batch_normalization_85/FusedBatchNormV3/ReadVariableOp?
Fsequential_10/batch_normalization_85/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_10_batch_normalization_85_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02H
Fsequential_10/batch_normalization_85/FusedBatchNormV3/ReadVariableOp_1?
5sequential_10/batch_normalization_85/FusedBatchNormV3FusedBatchNormV3-sequential_10/activation_94/Elu:activations:0;sequential_10/batch_normalization_85/ReadVariableOp:value:0=sequential_10/batch_normalization_85/ReadVariableOp_1:value:0Lsequential_10/batch_normalization_85/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_10/batch_normalization_85/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
is_training( 27
5sequential_10/batch_normalization_85/FusedBatchNormV3?
&sequential_10/max_pooling2d_38/MaxPoolMaxPool9sequential_10/batch_normalization_85/FusedBatchNormV3:y:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2(
&sequential_10/max_pooling2d_38/MaxPool?
!sequential_10/dropout_52/IdentityIdentity/sequential_10/max_pooling2d_38/MaxPool:output:0*
T0*/
_output_shapes
:????????? 2#
!sequential_10/dropout_52/Identity?
-sequential_10/conv2d_72/Conv2D/ReadVariableOpReadVariableOp6sequential_10_conv2d_72_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02/
-sequential_10/conv2d_72/Conv2D/ReadVariableOp?
sequential_10/conv2d_72/Conv2DConv2D*sequential_10/dropout_52/Identity:output:05sequential_10/conv2d_72/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2 
sequential_10/conv2d_72/Conv2D?
.sequential_10/conv2d_72/BiasAdd/ReadVariableOpReadVariableOp7sequential_10_conv2d_72_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_10/conv2d_72/BiasAdd/ReadVariableOp?
sequential_10/conv2d_72/BiasAddBiasAdd'sequential_10/conv2d_72/Conv2D:output:06sequential_10/conv2d_72/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2!
sequential_10/conv2d_72/BiasAdd?
sequential_10/activation_95/EluElu(sequential_10/conv2d_72/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2!
sequential_10/activation_95/Elu?
3sequential_10/batch_normalization_86/ReadVariableOpReadVariableOp<sequential_10_batch_normalization_86_readvariableop_resource*
_output_shapes
:@*
dtype025
3sequential_10/batch_normalization_86/ReadVariableOp?
5sequential_10/batch_normalization_86/ReadVariableOp_1ReadVariableOp>sequential_10_batch_normalization_86_readvariableop_1_resource*
_output_shapes
:@*
dtype027
5sequential_10/batch_normalization_86/ReadVariableOp_1?
Dsequential_10/batch_normalization_86/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_10_batch_normalization_86_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02F
Dsequential_10/batch_normalization_86/FusedBatchNormV3/ReadVariableOp?
Fsequential_10/batch_normalization_86/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_10_batch_normalization_86_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02H
Fsequential_10/batch_normalization_86/FusedBatchNormV3/ReadVariableOp_1?
5sequential_10/batch_normalization_86/FusedBatchNormV3FusedBatchNormV3-sequential_10/activation_95/Elu:activations:0;sequential_10/batch_normalization_86/ReadVariableOp:value:0=sequential_10/batch_normalization_86/ReadVariableOp_1:value:0Lsequential_10/batch_normalization_86/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_10/batch_normalization_86/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 27
5sequential_10/batch_normalization_86/FusedBatchNormV3?
&sequential_10/max_pooling2d_39/MaxPoolMaxPool9sequential_10/batch_normalization_86/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2(
&sequential_10/max_pooling2d_39/MaxPool?
!sequential_10/dropout_53/IdentityIdentity/sequential_10/max_pooling2d_39/MaxPool:output:0*
T0*/
_output_shapes
:?????????@2#
!sequential_10/dropout_53/Identity?
-sequential_10/conv2d_73/Conv2D/ReadVariableOpReadVariableOp6sequential_10_conv2d_73_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02/
-sequential_10/conv2d_73/Conv2D/ReadVariableOp?
sequential_10/conv2d_73/Conv2DConv2D*sequential_10/dropout_53/Identity:output:05sequential_10/conv2d_73/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2 
sequential_10/conv2d_73/Conv2D?
.sequential_10/conv2d_73/BiasAdd/ReadVariableOpReadVariableOp7sequential_10_conv2d_73_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_10/conv2d_73/BiasAdd/ReadVariableOp?
sequential_10/conv2d_73/BiasAddBiasAdd'sequential_10/conv2d_73/Conv2D:output:06sequential_10/conv2d_73/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2!
sequential_10/conv2d_73/BiasAdd?
sequential_10/activation_96/EluElu(sequential_10/conv2d_73/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2!
sequential_10/activation_96/Elu?
3sequential_10/batch_normalization_87/ReadVariableOpReadVariableOp<sequential_10_batch_normalization_87_readvariableop_resource*
_output_shapes
:@*
dtype025
3sequential_10/batch_normalization_87/ReadVariableOp?
5sequential_10/batch_normalization_87/ReadVariableOp_1ReadVariableOp>sequential_10_batch_normalization_87_readvariableop_1_resource*
_output_shapes
:@*
dtype027
5sequential_10/batch_normalization_87/ReadVariableOp_1?
Dsequential_10/batch_normalization_87/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_10_batch_normalization_87_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02F
Dsequential_10/batch_normalization_87/FusedBatchNormV3/ReadVariableOp?
Fsequential_10/batch_normalization_87/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_10_batch_normalization_87_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02H
Fsequential_10/batch_normalization_87/FusedBatchNormV3/ReadVariableOp_1?
5sequential_10/batch_normalization_87/FusedBatchNormV3FusedBatchNormV3-sequential_10/activation_96/Elu:activations:0;sequential_10/batch_normalization_87/ReadVariableOp:value:0=sequential_10/batch_normalization_87/ReadVariableOp_1:value:0Lsequential_10/batch_normalization_87/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_10/batch_normalization_87/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 27
5sequential_10/batch_normalization_87/FusedBatchNormV3?
&sequential_10/max_pooling2d_40/MaxPoolMaxPool9sequential_10/batch_normalization_87/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2(
&sequential_10/max_pooling2d_40/MaxPool?
!sequential_10/dropout_54/IdentityIdentity/sequential_10/max_pooling2d_40/MaxPool:output:0*
T0*/
_output_shapes
:?????????@2#
!sequential_10/dropout_54/Identity?
sequential_10/flatten_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  2
sequential_10/flatten_5/Const?
sequential_10/flatten_5/ReshapeReshape*sequential_10/dropout_54/Identity:output:0&sequential_10/flatten_5/Const:output:0*
T0*(
_output_shapes
:??????????2!
sequential_10/flatten_5/Reshape?
,sequential_10/dense_24/MatMul/ReadVariableOpReadVariableOp5sequential_10_dense_24_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,sequential_10/dense_24/MatMul/ReadVariableOp?
sequential_10/dense_24/MatMulMatMul(sequential_10/flatten_5/Reshape:output:04sequential_10/dense_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_10/dense_24/MatMul?
-sequential_10/dense_24/BiasAdd/ReadVariableOpReadVariableOp6sequential_10_dense_24_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-sequential_10/dense_24/BiasAdd/ReadVariableOp?
sequential_10/dense_24/BiasAddBiasAdd'sequential_10/dense_24/MatMul:product:05sequential_10/dense_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_10/dense_24/BiasAdd?
sequential_10/activation_97/EluElu'sequential_10/dense_24/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2!
sequential_10/activation_97/Elu?
=sequential_10/batch_normalization_88/batchnorm/ReadVariableOpReadVariableOpFsequential_10_batch_normalization_88_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02?
=sequential_10/batch_normalization_88/batchnorm/ReadVariableOp?
4sequential_10/batch_normalization_88/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:26
4sequential_10/batch_normalization_88/batchnorm/add/y?
2sequential_10/batch_normalization_88/batchnorm/addAddV2Esequential_10/batch_normalization_88/batchnorm/ReadVariableOp:value:0=sequential_10/batch_normalization_88/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?24
2sequential_10/batch_normalization_88/batchnorm/add?
4sequential_10/batch_normalization_88/batchnorm/RsqrtRsqrt6sequential_10/batch_normalization_88/batchnorm/add:z:0*
T0*
_output_shapes	
:?26
4sequential_10/batch_normalization_88/batchnorm/Rsqrt?
Asequential_10/batch_normalization_88/batchnorm/mul/ReadVariableOpReadVariableOpJsequential_10_batch_normalization_88_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02C
Asequential_10/batch_normalization_88/batchnorm/mul/ReadVariableOp?
2sequential_10/batch_normalization_88/batchnorm/mulMul8sequential_10/batch_normalization_88/batchnorm/Rsqrt:y:0Isequential_10/batch_normalization_88/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?24
2sequential_10/batch_normalization_88/batchnorm/mul?
4sequential_10/batch_normalization_88/batchnorm/mul_1Mul-sequential_10/activation_97/Elu:activations:06sequential_10/batch_normalization_88/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????26
4sequential_10/batch_normalization_88/batchnorm/mul_1?
?sequential_10/batch_normalization_88/batchnorm/ReadVariableOp_1ReadVariableOpHsequential_10_batch_normalization_88_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02A
?sequential_10/batch_normalization_88/batchnorm/ReadVariableOp_1?
4sequential_10/batch_normalization_88/batchnorm/mul_2MulGsequential_10/batch_normalization_88/batchnorm/ReadVariableOp_1:value:06sequential_10/batch_normalization_88/batchnorm/mul:z:0*
T0*
_output_shapes	
:?26
4sequential_10/batch_normalization_88/batchnorm/mul_2?
?sequential_10/batch_normalization_88/batchnorm/ReadVariableOp_2ReadVariableOpHsequential_10_batch_normalization_88_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02A
?sequential_10/batch_normalization_88/batchnorm/ReadVariableOp_2?
2sequential_10/batch_normalization_88/batchnorm/subSubGsequential_10/batch_normalization_88/batchnorm/ReadVariableOp_2:value:08sequential_10/batch_normalization_88/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?24
2sequential_10/batch_normalization_88/batchnorm/sub?
4sequential_10/batch_normalization_88/batchnorm/add_1AddV28sequential_10/batch_normalization_88/batchnorm/mul_1:z:06sequential_10/batch_normalization_88/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????26
4sequential_10/batch_normalization_88/batchnorm/add_1?
,sequential_10/dense_25/MatMul/ReadVariableOpReadVariableOp5sequential_10_dense_25_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,sequential_10/dense_25/MatMul/ReadVariableOp?
sequential_10/dense_25/MatMulMatMul8sequential_10/batch_normalization_88/batchnorm/add_1:z:04sequential_10/dense_25/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_10/dense_25/MatMul?
-sequential_10/dense_25/BiasAdd/ReadVariableOpReadVariableOp6sequential_10_dense_25_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-sequential_10/dense_25/BiasAdd/ReadVariableOp?
sequential_10/dense_25/BiasAddBiasAdd'sequential_10/dense_25/MatMul:product:05sequential_10/dense_25/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_10/dense_25/BiasAdd?
sequential_10/activation_98/EluElu'sequential_10/dense_25/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2!
sequential_10/activation_98/Elu?
=sequential_10/batch_normalization_89/batchnorm/ReadVariableOpReadVariableOpFsequential_10_batch_normalization_89_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02?
=sequential_10/batch_normalization_89/batchnorm/ReadVariableOp?
4sequential_10/batch_normalization_89/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:26
4sequential_10/batch_normalization_89/batchnorm/add/y?
2sequential_10/batch_normalization_89/batchnorm/addAddV2Esequential_10/batch_normalization_89/batchnorm/ReadVariableOp:value:0=sequential_10/batch_normalization_89/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?24
2sequential_10/batch_normalization_89/batchnorm/add?
4sequential_10/batch_normalization_89/batchnorm/RsqrtRsqrt6sequential_10/batch_normalization_89/batchnorm/add:z:0*
T0*
_output_shapes	
:?26
4sequential_10/batch_normalization_89/batchnorm/Rsqrt?
Asequential_10/batch_normalization_89/batchnorm/mul/ReadVariableOpReadVariableOpJsequential_10_batch_normalization_89_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02C
Asequential_10/batch_normalization_89/batchnorm/mul/ReadVariableOp?
2sequential_10/batch_normalization_89/batchnorm/mulMul8sequential_10/batch_normalization_89/batchnorm/Rsqrt:y:0Isequential_10/batch_normalization_89/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?24
2sequential_10/batch_normalization_89/batchnorm/mul?
4sequential_10/batch_normalization_89/batchnorm/mul_1Mul-sequential_10/activation_98/Elu:activations:06sequential_10/batch_normalization_89/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????26
4sequential_10/batch_normalization_89/batchnorm/mul_1?
?sequential_10/batch_normalization_89/batchnorm/ReadVariableOp_1ReadVariableOpHsequential_10_batch_normalization_89_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02A
?sequential_10/batch_normalization_89/batchnorm/ReadVariableOp_1?
4sequential_10/batch_normalization_89/batchnorm/mul_2MulGsequential_10/batch_normalization_89/batchnorm/ReadVariableOp_1:value:06sequential_10/batch_normalization_89/batchnorm/mul:z:0*
T0*
_output_shapes	
:?26
4sequential_10/batch_normalization_89/batchnorm/mul_2?
?sequential_10/batch_normalization_89/batchnorm/ReadVariableOp_2ReadVariableOpHsequential_10_batch_normalization_89_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02A
?sequential_10/batch_normalization_89/batchnorm/ReadVariableOp_2?
2sequential_10/batch_normalization_89/batchnorm/subSubGsequential_10/batch_normalization_89/batchnorm/ReadVariableOp_2:value:08sequential_10/batch_normalization_89/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?24
2sequential_10/batch_normalization_89/batchnorm/sub?
4sequential_10/batch_normalization_89/batchnorm/add_1AddV28sequential_10/batch_normalization_89/batchnorm/mul_1:z:06sequential_10/batch_normalization_89/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????26
4sequential_10/batch_normalization_89/batchnorm/add_1?
,sequential_10/dense_26/MatMul/ReadVariableOpReadVariableOp5sequential_10_dense_26_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02.
,sequential_10/dense_26/MatMul/ReadVariableOp?
sequential_10/dense_26/MatMulMatMul8sequential_10/batch_normalization_89/batchnorm/add_1:z:04sequential_10/dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_10/dense_26/MatMul?
-sequential_10/dense_26/BiasAdd/ReadVariableOpReadVariableOp6sequential_10_dense_26_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_10/dense_26/BiasAdd/ReadVariableOp?
sequential_10/dense_26/BiasAddBiasAdd'sequential_10/dense_26/MatMul:product:05sequential_10/dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_10/dense_26/BiasAdd?
#sequential_10/activation_99/SoftmaxSoftmax'sequential_10/dense_26/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2%
#sequential_10/activation_99/Softmax?
IdentityIdentity-sequential_10/activation_99/Softmax:softmax:0E^sequential_10/batch_normalization_84/FusedBatchNormV3/ReadVariableOpG^sequential_10/batch_normalization_84/FusedBatchNormV3/ReadVariableOp_14^sequential_10/batch_normalization_84/ReadVariableOp6^sequential_10/batch_normalization_84/ReadVariableOp_1E^sequential_10/batch_normalization_85/FusedBatchNormV3/ReadVariableOpG^sequential_10/batch_normalization_85/FusedBatchNormV3/ReadVariableOp_14^sequential_10/batch_normalization_85/ReadVariableOp6^sequential_10/batch_normalization_85/ReadVariableOp_1E^sequential_10/batch_normalization_86/FusedBatchNormV3/ReadVariableOpG^sequential_10/batch_normalization_86/FusedBatchNormV3/ReadVariableOp_14^sequential_10/batch_normalization_86/ReadVariableOp6^sequential_10/batch_normalization_86/ReadVariableOp_1E^sequential_10/batch_normalization_87/FusedBatchNormV3/ReadVariableOpG^sequential_10/batch_normalization_87/FusedBatchNormV3/ReadVariableOp_14^sequential_10/batch_normalization_87/ReadVariableOp6^sequential_10/batch_normalization_87/ReadVariableOp_1>^sequential_10/batch_normalization_88/batchnorm/ReadVariableOp@^sequential_10/batch_normalization_88/batchnorm/ReadVariableOp_1@^sequential_10/batch_normalization_88/batchnorm/ReadVariableOp_2B^sequential_10/batch_normalization_88/batchnorm/mul/ReadVariableOp>^sequential_10/batch_normalization_89/batchnorm/ReadVariableOp@^sequential_10/batch_normalization_89/batchnorm/ReadVariableOp_1@^sequential_10/batch_normalization_89/batchnorm/ReadVariableOp_2B^sequential_10/batch_normalization_89/batchnorm/mul/ReadVariableOp/^sequential_10/conv2d_70/BiasAdd/ReadVariableOp.^sequential_10/conv2d_70/Conv2D/ReadVariableOp/^sequential_10/conv2d_71/BiasAdd/ReadVariableOp.^sequential_10/conv2d_71/Conv2D/ReadVariableOp/^sequential_10/conv2d_72/BiasAdd/ReadVariableOp.^sequential_10/conv2d_72/Conv2D/ReadVariableOp/^sequential_10/conv2d_73/BiasAdd/ReadVariableOp.^sequential_10/conv2d_73/Conv2D/ReadVariableOp.^sequential_10/dense_24/BiasAdd/ReadVariableOp-^sequential_10/dense_24/MatMul/ReadVariableOp.^sequential_10/dense_25/BiasAdd/ReadVariableOp-^sequential_10/dense_25/MatMul/ReadVariableOp.^sequential_10/dense_26/BiasAdd/ReadVariableOp-^sequential_10/dense_26/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????00::::::::::::::::::::::::::::::::::::::2?
Dsequential_10/batch_normalization_84/FusedBatchNormV3/ReadVariableOpDsequential_10/batch_normalization_84/FusedBatchNormV3/ReadVariableOp2?
Fsequential_10/batch_normalization_84/FusedBatchNormV3/ReadVariableOp_1Fsequential_10/batch_normalization_84/FusedBatchNormV3/ReadVariableOp_12j
3sequential_10/batch_normalization_84/ReadVariableOp3sequential_10/batch_normalization_84/ReadVariableOp2n
5sequential_10/batch_normalization_84/ReadVariableOp_15sequential_10/batch_normalization_84/ReadVariableOp_12?
Dsequential_10/batch_normalization_85/FusedBatchNormV3/ReadVariableOpDsequential_10/batch_normalization_85/FusedBatchNormV3/ReadVariableOp2?
Fsequential_10/batch_normalization_85/FusedBatchNormV3/ReadVariableOp_1Fsequential_10/batch_normalization_85/FusedBatchNormV3/ReadVariableOp_12j
3sequential_10/batch_normalization_85/ReadVariableOp3sequential_10/batch_normalization_85/ReadVariableOp2n
5sequential_10/batch_normalization_85/ReadVariableOp_15sequential_10/batch_normalization_85/ReadVariableOp_12?
Dsequential_10/batch_normalization_86/FusedBatchNormV3/ReadVariableOpDsequential_10/batch_normalization_86/FusedBatchNormV3/ReadVariableOp2?
Fsequential_10/batch_normalization_86/FusedBatchNormV3/ReadVariableOp_1Fsequential_10/batch_normalization_86/FusedBatchNormV3/ReadVariableOp_12j
3sequential_10/batch_normalization_86/ReadVariableOp3sequential_10/batch_normalization_86/ReadVariableOp2n
5sequential_10/batch_normalization_86/ReadVariableOp_15sequential_10/batch_normalization_86/ReadVariableOp_12?
Dsequential_10/batch_normalization_87/FusedBatchNormV3/ReadVariableOpDsequential_10/batch_normalization_87/FusedBatchNormV3/ReadVariableOp2?
Fsequential_10/batch_normalization_87/FusedBatchNormV3/ReadVariableOp_1Fsequential_10/batch_normalization_87/FusedBatchNormV3/ReadVariableOp_12j
3sequential_10/batch_normalization_87/ReadVariableOp3sequential_10/batch_normalization_87/ReadVariableOp2n
5sequential_10/batch_normalization_87/ReadVariableOp_15sequential_10/batch_normalization_87/ReadVariableOp_12~
=sequential_10/batch_normalization_88/batchnorm/ReadVariableOp=sequential_10/batch_normalization_88/batchnorm/ReadVariableOp2?
?sequential_10/batch_normalization_88/batchnorm/ReadVariableOp_1?sequential_10/batch_normalization_88/batchnorm/ReadVariableOp_12?
?sequential_10/batch_normalization_88/batchnorm/ReadVariableOp_2?sequential_10/batch_normalization_88/batchnorm/ReadVariableOp_22?
Asequential_10/batch_normalization_88/batchnorm/mul/ReadVariableOpAsequential_10/batch_normalization_88/batchnorm/mul/ReadVariableOp2~
=sequential_10/batch_normalization_89/batchnorm/ReadVariableOp=sequential_10/batch_normalization_89/batchnorm/ReadVariableOp2?
?sequential_10/batch_normalization_89/batchnorm/ReadVariableOp_1?sequential_10/batch_normalization_89/batchnorm/ReadVariableOp_12?
?sequential_10/batch_normalization_89/batchnorm/ReadVariableOp_2?sequential_10/batch_normalization_89/batchnorm/ReadVariableOp_22?
Asequential_10/batch_normalization_89/batchnorm/mul/ReadVariableOpAsequential_10/batch_normalization_89/batchnorm/mul/ReadVariableOp2`
.sequential_10/conv2d_70/BiasAdd/ReadVariableOp.sequential_10/conv2d_70/BiasAdd/ReadVariableOp2^
-sequential_10/conv2d_70/Conv2D/ReadVariableOp-sequential_10/conv2d_70/Conv2D/ReadVariableOp2`
.sequential_10/conv2d_71/BiasAdd/ReadVariableOp.sequential_10/conv2d_71/BiasAdd/ReadVariableOp2^
-sequential_10/conv2d_71/Conv2D/ReadVariableOp-sequential_10/conv2d_71/Conv2D/ReadVariableOp2`
.sequential_10/conv2d_72/BiasAdd/ReadVariableOp.sequential_10/conv2d_72/BiasAdd/ReadVariableOp2^
-sequential_10/conv2d_72/Conv2D/ReadVariableOp-sequential_10/conv2d_72/Conv2D/ReadVariableOp2`
.sequential_10/conv2d_73/BiasAdd/ReadVariableOp.sequential_10/conv2d_73/BiasAdd/ReadVariableOp2^
-sequential_10/conv2d_73/Conv2D/ReadVariableOp-sequential_10/conv2d_73/Conv2D/ReadVariableOp2^
-sequential_10/dense_24/BiasAdd/ReadVariableOp-sequential_10/dense_24/BiasAdd/ReadVariableOp2\
,sequential_10/dense_24/MatMul/ReadVariableOp,sequential_10/dense_24/MatMul/ReadVariableOp2^
-sequential_10/dense_25/BiasAdd/ReadVariableOp-sequential_10/dense_25/BiasAdd/ReadVariableOp2\
,sequential_10/dense_25/MatMul/ReadVariableOp,sequential_10/dense_25/MatMul/ReadVariableOp2^
-sequential_10/dense_26/BiasAdd/ReadVariableOp-sequential_10/dense_26/BiasAdd/ReadVariableOp2\
,sequential_10/dense_26/MatMul/ReadVariableOp,sequential_10/dense_26/MatMul/ReadVariableOp:` \
/
_output_shapes
:?????????00
)
_user_specified_nameconv2d_70_input
?
?
R__inference_batch_normalization_86_layer_call_and_return_conditional_losses_243484

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
J
.__inference_activation_95_layer_call_fn_245424

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_95_layer_call_and_return_conditional_losses_2434572
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
G
+__inference_dropout_53_layer_call_fn_245579

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_53_layer_call_and_return_conditional_losses_2435562
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_242734

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_85_layer_call_and_return_conditional_losses_245278

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?	
?
D__inference_dense_26_layer_call_and_return_conditional_losses_246006

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_38_layer_call_fn_242624

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_2426182
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
e
I__inference_activation_97_layer_call_and_return_conditional_losses_245798

inputs
identityL
EluEluinputs*
T0*(
_output_shapes
:??????????2
Eluf
IdentityIdentityElu:activations:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
$__inference_signature_wrapper_244495
conv2d_70_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_70_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*H
_read_only_resource_inputs*
(&	
 !"#$%&*0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__wrapped_model_2423922
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????00::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:?????????00
)
_user_specified_nameconv2d_70_input
?
e
F__inference_dropout_51_layer_call_and_return_conditional_losses_245196

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:????????? *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:????????? 2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:????????? 2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:????????? 2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
e
F__inference_dropout_54_layer_call_and_return_conditional_losses_243694

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

*__inference_conv2d_73_layer_call_fn_245598

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_73_layer_call_and_return_conditional_losses_2435792
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_89_layer_call_and_return_conditional_losses_245970

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_87_layer_call_fn_245672

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_87_layer_call_and_return_conditional_losses_2436452
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
D__inference_dense_25_layer_call_and_return_conditional_losses_245895

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?0
?
R__inference_batch_normalization_89_layer_call_and_return_conditional_losses_245950

inputs
assignmovingavg_245925
assignmovingavg_1_245931)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg/245925*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_245925*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg/245925*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg/245925*
_output_shapes	
:?2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_245925AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg/245925*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg_1/245931*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_245931*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/245931*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/245931*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_245931AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg_1/245931*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_54_layer_call_and_return_conditional_losses_243699

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

*__inference_conv2d_70_layer_call_fn_245046

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_70_layer_call_and_return_conditional_losses_2431502
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????00 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????00::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????00
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_84_layer_call_and_return_conditional_losses_242485

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
.__inference_sequential_10_layer_call_fn_245027

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*H
_read_only_resource_inputs*
(&	
 !"#$%&*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_10_layer_call_and_return_conditional_losses_2443252
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????00::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????00
 
_user_specified_nameinputs
?
e
I__inference_activation_98_layer_call_and_return_conditional_losses_243831

inputs
identityL
EluEluinputs*
T0*(
_output_shapes
:??????????2
Eluf
IdentityIdentityElu:activations:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_53_layer_call_and_return_conditional_losses_245569

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_37_layer_call_fn_242508

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_2425022
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_242618

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_86_layer_call_and_return_conditional_losses_245526

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_85_layer_call_fn_245368

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_85_layer_call_and_return_conditional_losses_2433592
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
e
I__inference_activation_99_layer_call_and_return_conditional_losses_243905

inputs
identityW
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:?????????2	
Softmaxe
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
d
+__inference_dropout_52_layer_call_fn_245390

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_52_layer_call_and_return_conditional_losses_2434082
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_87_layer_call_and_return_conditional_losses_242802

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
e
I__inference_activation_95_layer_call_and_return_conditional_losses_245419

inputs
identityS
EluEluinputs*
T0*/
_output_shapes
:?????????@2
Elum
IdentityIdentityElu:activations:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
??
?
I__inference_sequential_10_layer_call_and_return_conditional_losses_244135

inputs
conv2d_70_244029
conv2d_70_244031!
batch_normalization_84_244035!
batch_normalization_84_244037!
batch_normalization_84_244039!
batch_normalization_84_244041
conv2d_71_244046
conv2d_71_244048!
batch_normalization_85_244052!
batch_normalization_85_244054!
batch_normalization_85_244056!
batch_normalization_85_244058
conv2d_72_244063
conv2d_72_244065!
batch_normalization_86_244069!
batch_normalization_86_244071!
batch_normalization_86_244073!
batch_normalization_86_244075
conv2d_73_244080
conv2d_73_244082!
batch_normalization_87_244086!
batch_normalization_87_244088!
batch_normalization_87_244090!
batch_normalization_87_244092
dense_24_244098
dense_24_244100!
batch_normalization_88_244104!
batch_normalization_88_244106!
batch_normalization_88_244108!
batch_normalization_88_244110
dense_25_244113
dense_25_244115!
batch_normalization_89_244119!
batch_normalization_89_244121!
batch_normalization_89_244123!
batch_normalization_89_244125
dense_26_244128
dense_26_244130
identity??.batch_normalization_84/StatefulPartitionedCall?.batch_normalization_85/StatefulPartitionedCall?.batch_normalization_86/StatefulPartitionedCall?.batch_normalization_87/StatefulPartitionedCall?.batch_normalization_88/StatefulPartitionedCall?.batch_normalization_89/StatefulPartitionedCall?!conv2d_70/StatefulPartitionedCall?!conv2d_71/StatefulPartitionedCall?!conv2d_72/StatefulPartitionedCall?!conv2d_73/StatefulPartitionedCall? dense_24/StatefulPartitionedCall? dense_25/StatefulPartitionedCall? dense_26/StatefulPartitionedCall?"dropout_51/StatefulPartitionedCall?"dropout_52/StatefulPartitionedCall?"dropout_53/StatefulPartitionedCall?"dropout_54/StatefulPartitionedCall?
!conv2d_70/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_70_244029conv2d_70_244031*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_70_layer_call_and_return_conditional_losses_2431502#
!conv2d_70/StatefulPartitionedCall?
activation_93/PartitionedCallPartitionedCall*conv2d_70/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_93_layer_call_and_return_conditional_losses_2431712
activation_93/PartitionedCall?
.batch_normalization_84/StatefulPartitionedCallStatefulPartitionedCall&activation_93/PartitionedCall:output:0batch_normalization_84_244035batch_normalization_84_244037batch_normalization_84_244039batch_normalization_84_244041*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_84_layer_call_and_return_conditional_losses_24319820
.batch_normalization_84/StatefulPartitionedCall?
 max_pooling2d_37/PartitionedCallPartitionedCall7batch_normalization_84/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_2425022"
 max_pooling2d_37/PartitionedCall?
"dropout_51/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_37/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_51_layer_call_and_return_conditional_losses_2432652$
"dropout_51/StatefulPartitionedCall?
!conv2d_71/StatefulPartitionedCallStatefulPartitionedCall+dropout_51/StatefulPartitionedCall:output:0conv2d_71_244046conv2d_71_244048*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_71_layer_call_and_return_conditional_losses_2432932#
!conv2d_71/StatefulPartitionedCall?
activation_94/PartitionedCallPartitionedCall*conv2d_71/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_94_layer_call_and_return_conditional_losses_2433142
activation_94/PartitionedCall?
.batch_normalization_85/StatefulPartitionedCallStatefulPartitionedCall&activation_94/PartitionedCall:output:0batch_normalization_85_244052batch_normalization_85_244054batch_normalization_85_244056batch_normalization_85_244058*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_85_layer_call_and_return_conditional_losses_24334120
.batch_normalization_85/StatefulPartitionedCall?
 max_pooling2d_38/PartitionedCallPartitionedCall7batch_normalization_85/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_2426182"
 max_pooling2d_38/PartitionedCall?
"dropout_52/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_38/PartitionedCall:output:0#^dropout_51/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_52_layer_call_and_return_conditional_losses_2434082$
"dropout_52/StatefulPartitionedCall?
!conv2d_72/StatefulPartitionedCallStatefulPartitionedCall+dropout_52/StatefulPartitionedCall:output:0conv2d_72_244063conv2d_72_244065*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_72_layer_call_and_return_conditional_losses_2434362#
!conv2d_72/StatefulPartitionedCall?
activation_95/PartitionedCallPartitionedCall*conv2d_72/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_95_layer_call_and_return_conditional_losses_2434572
activation_95/PartitionedCall?
.batch_normalization_86/StatefulPartitionedCallStatefulPartitionedCall&activation_95/PartitionedCall:output:0batch_normalization_86_244069batch_normalization_86_244071batch_normalization_86_244073batch_normalization_86_244075*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_86_layer_call_and_return_conditional_losses_24348420
.batch_normalization_86/StatefulPartitionedCall?
 max_pooling2d_39/PartitionedCallPartitionedCall7batch_normalization_86/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_2427342"
 max_pooling2d_39/PartitionedCall?
"dropout_53/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_39/PartitionedCall:output:0#^dropout_52/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_53_layer_call_and_return_conditional_losses_2435512$
"dropout_53/StatefulPartitionedCall?
!conv2d_73/StatefulPartitionedCallStatefulPartitionedCall+dropout_53/StatefulPartitionedCall:output:0conv2d_73_244080conv2d_73_244082*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_73_layer_call_and_return_conditional_losses_2435792#
!conv2d_73/StatefulPartitionedCall?
activation_96/PartitionedCallPartitionedCall*conv2d_73/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_96_layer_call_and_return_conditional_losses_2436002
activation_96/PartitionedCall?
.batch_normalization_87/StatefulPartitionedCallStatefulPartitionedCall&activation_96/PartitionedCall:output:0batch_normalization_87_244086batch_normalization_87_244088batch_normalization_87_244090batch_normalization_87_244092*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_87_layer_call_and_return_conditional_losses_24362720
.batch_normalization_87/StatefulPartitionedCall?
 max_pooling2d_40/PartitionedCallPartitionedCall7batch_normalization_87/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_40_layer_call_and_return_conditional_losses_2428502"
 max_pooling2d_40/PartitionedCall?
"dropout_54/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_40/PartitionedCall:output:0#^dropout_53/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_54_layer_call_and_return_conditional_losses_2436942$
"dropout_54/StatefulPartitionedCall?
flatten_5/PartitionedCallPartitionedCall+dropout_54/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_5_layer_call_and_return_conditional_losses_2437182
flatten_5/PartitionedCall?
 dense_24/StatefulPartitionedCallStatefulPartitionedCall"flatten_5/PartitionedCall:output:0dense_24_244098dense_24_244100*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_24_layer_call_and_return_conditional_losses_2437362"
 dense_24/StatefulPartitionedCall?
activation_97/PartitionedCallPartitionedCall)dense_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_97_layer_call_and_return_conditional_losses_2437572
activation_97/PartitionedCall?
.batch_normalization_88/StatefulPartitionedCallStatefulPartitionedCall&activation_97/PartitionedCall:output:0batch_normalization_88_244104batch_normalization_88_244106batch_normalization_88_244108batch_normalization_88_244110*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_88_layer_call_and_return_conditional_losses_24295220
.batch_normalization_88/StatefulPartitionedCall?
 dense_25/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_88/StatefulPartitionedCall:output:0dense_25_244113dense_25_244115*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_25_layer_call_and_return_conditional_losses_2438102"
 dense_25/StatefulPartitionedCall?
activation_98/PartitionedCallPartitionedCall)dense_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_98_layer_call_and_return_conditional_losses_2438312
activation_98/PartitionedCall?
.batch_normalization_89/StatefulPartitionedCallStatefulPartitionedCall&activation_98/PartitionedCall:output:0batch_normalization_89_244119batch_normalization_89_244121batch_normalization_89_244123batch_normalization_89_244125*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_89_layer_call_and_return_conditional_losses_24309220
.batch_normalization_89/StatefulPartitionedCall?
 dense_26/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_89/StatefulPartitionedCall:output:0dense_26_244128dense_26_244130*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_2438842"
 dense_26/StatefulPartitionedCall?
activation_99/PartitionedCallPartitionedCall)dense_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_99_layer_call_and_return_conditional_losses_2439052
activation_99/PartitionedCall?
IdentityIdentity&activation_99/PartitionedCall:output:0/^batch_normalization_84/StatefulPartitionedCall/^batch_normalization_85/StatefulPartitionedCall/^batch_normalization_86/StatefulPartitionedCall/^batch_normalization_87/StatefulPartitionedCall/^batch_normalization_88/StatefulPartitionedCall/^batch_normalization_89/StatefulPartitionedCall"^conv2d_70/StatefulPartitionedCall"^conv2d_71/StatefulPartitionedCall"^conv2d_72/StatefulPartitionedCall"^conv2d_73/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall#^dropout_51/StatefulPartitionedCall#^dropout_52/StatefulPartitionedCall#^dropout_53/StatefulPartitionedCall#^dropout_54/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????00::::::::::::::::::::::::::::::::::::::2`
.batch_normalization_84/StatefulPartitionedCall.batch_normalization_84/StatefulPartitionedCall2`
.batch_normalization_85/StatefulPartitionedCall.batch_normalization_85/StatefulPartitionedCall2`
.batch_normalization_86/StatefulPartitionedCall.batch_normalization_86/StatefulPartitionedCall2`
.batch_normalization_87/StatefulPartitionedCall.batch_normalization_87/StatefulPartitionedCall2`
.batch_normalization_88/StatefulPartitionedCall.batch_normalization_88/StatefulPartitionedCall2`
.batch_normalization_89/StatefulPartitionedCall.batch_normalization_89/StatefulPartitionedCall2F
!conv2d_70/StatefulPartitionedCall!conv2d_70/StatefulPartitionedCall2F
!conv2d_71/StatefulPartitionedCall!conv2d_71/StatefulPartitionedCall2F
!conv2d_72/StatefulPartitionedCall!conv2d_72/StatefulPartitionedCall2F
!conv2d_73/StatefulPartitionedCall!conv2d_73/StatefulPartitionedCall2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2H
"dropout_51/StatefulPartitionedCall"dropout_51/StatefulPartitionedCall2H
"dropout_52/StatefulPartitionedCall"dropout_52/StatefulPartitionedCall2H
"dropout_53/StatefulPartitionedCall"dropout_53/StatefulPartitionedCall2H
"dropout_54/StatefulPartitionedCall"dropout_54/StatefulPartitionedCall:W S
/
_output_shapes
:?????????00
 
_user_specified_nameinputs
?
e
I__inference_activation_93_layer_call_and_return_conditional_losses_243171

inputs
identityS
EluEluinputs*
T0*/
_output_shapes
:?????????00 2
Elum
IdentityIdentityElu:activations:0*
T0*/
_output_shapes
:?????????00 2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????00 :W S
/
_output_shapes
:?????????00 
 
_user_specified_nameinputs
?
G
+__inference_dropout_51_layer_call_fn_245211

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_51_layer_call_and_return_conditional_losses_2432702
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
e
F__inference_dropout_53_layer_call_and_return_conditional_losses_243551

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_86_layer_call_and_return_conditional_losses_245508

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
D__inference_dense_26_layer_call_and_return_conditional_losses_243884

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
D__inference_dense_24_layer_call_and_return_conditional_losses_243736

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_84_layer_call_fn_245171

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_84_layer_call_and_return_conditional_losses_2431982
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????00 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????00 ::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????00 
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_87_layer_call_and_return_conditional_losses_245646

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
e
I__inference_activation_95_layer_call_and_return_conditional_losses_243457

inputs
identityS
EluEluinputs*
T0*/
_output_shapes
:?????????@2
Elum
IdentityIdentityElu:activations:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_89_layer_call_fn_245996

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_89_layer_call_and_return_conditional_losses_2431252
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
G
+__inference_dropout_54_layer_call_fn_245763

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_54_layer_call_and_return_conditional_losses_2436992
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
~
)__inference_dense_26_layer_call_fn_246015

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_2438842
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_85_layer_call_and_return_conditional_losses_245324

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:????????? ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
e
I__inference_activation_94_layer_call_and_return_conditional_losses_243314

inputs
identityS
EluEluinputs*
T0*/
_output_shapes
:????????? 2
Elum
IdentityIdentityElu:activations:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?	
?
D__inference_dense_24_layer_call_and_return_conditional_losses_245784

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
e
I__inference_activation_96_layer_call_and_return_conditional_losses_245603

inputs
identityS
EluEluinputs*
T0*/
_output_shapes
:?????????@2
Elum
IdentityIdentityElu:activations:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
??
?
I__inference_sequential_10_layer_call_and_return_conditional_losses_243914
conv2d_70_input
conv2d_70_243161
conv2d_70_243163!
batch_normalization_84_243243!
batch_normalization_84_243245!
batch_normalization_84_243247!
batch_normalization_84_243249
conv2d_71_243304
conv2d_71_243306!
batch_normalization_85_243386!
batch_normalization_85_243388!
batch_normalization_85_243390!
batch_normalization_85_243392
conv2d_72_243447
conv2d_72_243449!
batch_normalization_86_243529!
batch_normalization_86_243531!
batch_normalization_86_243533!
batch_normalization_86_243535
conv2d_73_243590
conv2d_73_243592!
batch_normalization_87_243672!
batch_normalization_87_243674!
batch_normalization_87_243676!
batch_normalization_87_243678
dense_24_243747
dense_24_243749!
batch_normalization_88_243791!
batch_normalization_88_243793!
batch_normalization_88_243795!
batch_normalization_88_243797
dense_25_243821
dense_25_243823!
batch_normalization_89_243865!
batch_normalization_89_243867!
batch_normalization_89_243869!
batch_normalization_89_243871
dense_26_243895
dense_26_243897
identity??.batch_normalization_84/StatefulPartitionedCall?.batch_normalization_85/StatefulPartitionedCall?.batch_normalization_86/StatefulPartitionedCall?.batch_normalization_87/StatefulPartitionedCall?.batch_normalization_88/StatefulPartitionedCall?.batch_normalization_89/StatefulPartitionedCall?!conv2d_70/StatefulPartitionedCall?!conv2d_71/StatefulPartitionedCall?!conv2d_72/StatefulPartitionedCall?!conv2d_73/StatefulPartitionedCall? dense_24/StatefulPartitionedCall? dense_25/StatefulPartitionedCall? dense_26/StatefulPartitionedCall?"dropout_51/StatefulPartitionedCall?"dropout_52/StatefulPartitionedCall?"dropout_53/StatefulPartitionedCall?"dropout_54/StatefulPartitionedCall?
!conv2d_70/StatefulPartitionedCallStatefulPartitionedCallconv2d_70_inputconv2d_70_243161conv2d_70_243163*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_70_layer_call_and_return_conditional_losses_2431502#
!conv2d_70/StatefulPartitionedCall?
activation_93/PartitionedCallPartitionedCall*conv2d_70/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_93_layer_call_and_return_conditional_losses_2431712
activation_93/PartitionedCall?
.batch_normalization_84/StatefulPartitionedCallStatefulPartitionedCall&activation_93/PartitionedCall:output:0batch_normalization_84_243243batch_normalization_84_243245batch_normalization_84_243247batch_normalization_84_243249*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_84_layer_call_and_return_conditional_losses_24319820
.batch_normalization_84/StatefulPartitionedCall?
 max_pooling2d_37/PartitionedCallPartitionedCall7batch_normalization_84/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_2425022"
 max_pooling2d_37/PartitionedCall?
"dropout_51/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_37/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_51_layer_call_and_return_conditional_losses_2432652$
"dropout_51/StatefulPartitionedCall?
!conv2d_71/StatefulPartitionedCallStatefulPartitionedCall+dropout_51/StatefulPartitionedCall:output:0conv2d_71_243304conv2d_71_243306*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_71_layer_call_and_return_conditional_losses_2432932#
!conv2d_71/StatefulPartitionedCall?
activation_94/PartitionedCallPartitionedCall*conv2d_71/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_94_layer_call_and_return_conditional_losses_2433142
activation_94/PartitionedCall?
.batch_normalization_85/StatefulPartitionedCallStatefulPartitionedCall&activation_94/PartitionedCall:output:0batch_normalization_85_243386batch_normalization_85_243388batch_normalization_85_243390batch_normalization_85_243392*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_85_layer_call_and_return_conditional_losses_24334120
.batch_normalization_85/StatefulPartitionedCall?
 max_pooling2d_38/PartitionedCallPartitionedCall7batch_normalization_85/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_2426182"
 max_pooling2d_38/PartitionedCall?
"dropout_52/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_38/PartitionedCall:output:0#^dropout_51/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_52_layer_call_and_return_conditional_losses_2434082$
"dropout_52/StatefulPartitionedCall?
!conv2d_72/StatefulPartitionedCallStatefulPartitionedCall+dropout_52/StatefulPartitionedCall:output:0conv2d_72_243447conv2d_72_243449*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_72_layer_call_and_return_conditional_losses_2434362#
!conv2d_72/StatefulPartitionedCall?
activation_95/PartitionedCallPartitionedCall*conv2d_72/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_95_layer_call_and_return_conditional_losses_2434572
activation_95/PartitionedCall?
.batch_normalization_86/StatefulPartitionedCallStatefulPartitionedCall&activation_95/PartitionedCall:output:0batch_normalization_86_243529batch_normalization_86_243531batch_normalization_86_243533batch_normalization_86_243535*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_86_layer_call_and_return_conditional_losses_24348420
.batch_normalization_86/StatefulPartitionedCall?
 max_pooling2d_39/PartitionedCallPartitionedCall7batch_normalization_86/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_2427342"
 max_pooling2d_39/PartitionedCall?
"dropout_53/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_39/PartitionedCall:output:0#^dropout_52/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_53_layer_call_and_return_conditional_losses_2435512$
"dropout_53/StatefulPartitionedCall?
!conv2d_73/StatefulPartitionedCallStatefulPartitionedCall+dropout_53/StatefulPartitionedCall:output:0conv2d_73_243590conv2d_73_243592*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_73_layer_call_and_return_conditional_losses_2435792#
!conv2d_73/StatefulPartitionedCall?
activation_96/PartitionedCallPartitionedCall*conv2d_73/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_96_layer_call_and_return_conditional_losses_2436002
activation_96/PartitionedCall?
.batch_normalization_87/StatefulPartitionedCallStatefulPartitionedCall&activation_96/PartitionedCall:output:0batch_normalization_87_243672batch_normalization_87_243674batch_normalization_87_243676batch_normalization_87_243678*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_87_layer_call_and_return_conditional_losses_24362720
.batch_normalization_87/StatefulPartitionedCall?
 max_pooling2d_40/PartitionedCallPartitionedCall7batch_normalization_87/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_40_layer_call_and_return_conditional_losses_2428502"
 max_pooling2d_40/PartitionedCall?
"dropout_54/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_40/PartitionedCall:output:0#^dropout_53/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_54_layer_call_and_return_conditional_losses_2436942$
"dropout_54/StatefulPartitionedCall?
flatten_5/PartitionedCallPartitionedCall+dropout_54/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_5_layer_call_and_return_conditional_losses_2437182
flatten_5/PartitionedCall?
 dense_24/StatefulPartitionedCallStatefulPartitionedCall"flatten_5/PartitionedCall:output:0dense_24_243747dense_24_243749*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_24_layer_call_and_return_conditional_losses_2437362"
 dense_24/StatefulPartitionedCall?
activation_97/PartitionedCallPartitionedCall)dense_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_97_layer_call_and_return_conditional_losses_2437572
activation_97/PartitionedCall?
.batch_normalization_88/StatefulPartitionedCallStatefulPartitionedCall&activation_97/PartitionedCall:output:0batch_normalization_88_243791batch_normalization_88_243793batch_normalization_88_243795batch_normalization_88_243797*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_88_layer_call_and_return_conditional_losses_24295220
.batch_normalization_88/StatefulPartitionedCall?
 dense_25/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_88/StatefulPartitionedCall:output:0dense_25_243821dense_25_243823*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_25_layer_call_and_return_conditional_losses_2438102"
 dense_25/StatefulPartitionedCall?
activation_98/PartitionedCallPartitionedCall)dense_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_98_layer_call_and_return_conditional_losses_2438312
activation_98/PartitionedCall?
.batch_normalization_89/StatefulPartitionedCallStatefulPartitionedCall&activation_98/PartitionedCall:output:0batch_normalization_89_243865batch_normalization_89_243867batch_normalization_89_243869batch_normalization_89_243871*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_89_layer_call_and_return_conditional_losses_24309220
.batch_normalization_89/StatefulPartitionedCall?
 dense_26/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_89/StatefulPartitionedCall:output:0dense_26_243895dense_26_243897*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_2438842"
 dense_26/StatefulPartitionedCall?
activation_99/PartitionedCallPartitionedCall)dense_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_99_layer_call_and_return_conditional_losses_2439052
activation_99/PartitionedCall?
IdentityIdentity&activation_99/PartitionedCall:output:0/^batch_normalization_84/StatefulPartitionedCall/^batch_normalization_85/StatefulPartitionedCall/^batch_normalization_86/StatefulPartitionedCall/^batch_normalization_87/StatefulPartitionedCall/^batch_normalization_88/StatefulPartitionedCall/^batch_normalization_89/StatefulPartitionedCall"^conv2d_70/StatefulPartitionedCall"^conv2d_71/StatefulPartitionedCall"^conv2d_72/StatefulPartitionedCall"^conv2d_73/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall#^dropout_51/StatefulPartitionedCall#^dropout_52/StatefulPartitionedCall#^dropout_53/StatefulPartitionedCall#^dropout_54/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????00::::::::::::::::::::::::::::::::::::::2`
.batch_normalization_84/StatefulPartitionedCall.batch_normalization_84/StatefulPartitionedCall2`
.batch_normalization_85/StatefulPartitionedCall.batch_normalization_85/StatefulPartitionedCall2`
.batch_normalization_86/StatefulPartitionedCall.batch_normalization_86/StatefulPartitionedCall2`
.batch_normalization_87/StatefulPartitionedCall.batch_normalization_87/StatefulPartitionedCall2`
.batch_normalization_88/StatefulPartitionedCall.batch_normalization_88/StatefulPartitionedCall2`
.batch_normalization_89/StatefulPartitionedCall.batch_normalization_89/StatefulPartitionedCall2F
!conv2d_70/StatefulPartitionedCall!conv2d_70/StatefulPartitionedCall2F
!conv2d_71/StatefulPartitionedCall!conv2d_71/StatefulPartitionedCall2F
!conv2d_72/StatefulPartitionedCall!conv2d_72/StatefulPartitionedCall2F
!conv2d_73/StatefulPartitionedCall!conv2d_73/StatefulPartitionedCall2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2H
"dropout_51/StatefulPartitionedCall"dropout_51/StatefulPartitionedCall2H
"dropout_52/StatefulPartitionedCall"dropout_52/StatefulPartitionedCall2H
"dropout_53/StatefulPartitionedCall"dropout_53/StatefulPartitionedCall2H
"dropout_54/StatefulPartitionedCall"dropout_54/StatefulPartitionedCall:` \
/
_output_shapes
:?????????00
)
_user_specified_nameconv2d_70_input
?
h
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_242502

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
e
I__inference_activation_99_layer_call_and_return_conditional_losses_246020

inputs
identityW
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:?????????2	
Softmaxe
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
a
E__inference_flatten_5_layer_call_and_return_conditional_losses_243718

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_86_layer_call_and_return_conditional_losses_243502

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
??
?"
I__inference_sequential_10_layer_call_and_return_conditional_losses_244714

inputs,
(conv2d_70_conv2d_readvariableop_resource-
)conv2d_70_biasadd_readvariableop_resource2
.batch_normalization_84_readvariableop_resource4
0batch_normalization_84_readvariableop_1_resourceC
?batch_normalization_84_fusedbatchnormv3_readvariableop_resourceE
Abatch_normalization_84_fusedbatchnormv3_readvariableop_1_resource,
(conv2d_71_conv2d_readvariableop_resource-
)conv2d_71_biasadd_readvariableop_resource2
.batch_normalization_85_readvariableop_resource4
0batch_normalization_85_readvariableop_1_resourceC
?batch_normalization_85_fusedbatchnormv3_readvariableop_resourceE
Abatch_normalization_85_fusedbatchnormv3_readvariableop_1_resource,
(conv2d_72_conv2d_readvariableop_resource-
)conv2d_72_biasadd_readvariableop_resource2
.batch_normalization_86_readvariableop_resource4
0batch_normalization_86_readvariableop_1_resourceC
?batch_normalization_86_fusedbatchnormv3_readvariableop_resourceE
Abatch_normalization_86_fusedbatchnormv3_readvariableop_1_resource,
(conv2d_73_conv2d_readvariableop_resource-
)conv2d_73_biasadd_readvariableop_resource2
.batch_normalization_87_readvariableop_resource4
0batch_normalization_87_readvariableop_1_resourceC
?batch_normalization_87_fusedbatchnormv3_readvariableop_resourceE
Abatch_normalization_87_fusedbatchnormv3_readvariableop_1_resource+
'dense_24_matmul_readvariableop_resource,
(dense_24_biasadd_readvariableop_resource1
-batch_normalization_88_assignmovingavg_2446433
/batch_normalization_88_assignmovingavg_1_244649@
<batch_normalization_88_batchnorm_mul_readvariableop_resource<
8batch_normalization_88_batchnorm_readvariableop_resource+
'dense_25_matmul_readvariableop_resource,
(dense_25_biasadd_readvariableop_resource1
-batch_normalization_89_assignmovingavg_2446823
/batch_normalization_89_assignmovingavg_1_244688@
<batch_normalization_89_batchnorm_mul_readvariableop_resource<
8batch_normalization_89_batchnorm_readvariableop_resource+
'dense_26_matmul_readvariableop_resource,
(dense_26_biasadd_readvariableop_resource
identity??%batch_normalization_84/AssignNewValue?'batch_normalization_84/AssignNewValue_1?6batch_normalization_84/FusedBatchNormV3/ReadVariableOp?8batch_normalization_84/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_84/ReadVariableOp?'batch_normalization_84/ReadVariableOp_1?%batch_normalization_85/AssignNewValue?'batch_normalization_85/AssignNewValue_1?6batch_normalization_85/FusedBatchNormV3/ReadVariableOp?8batch_normalization_85/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_85/ReadVariableOp?'batch_normalization_85/ReadVariableOp_1?%batch_normalization_86/AssignNewValue?'batch_normalization_86/AssignNewValue_1?6batch_normalization_86/FusedBatchNormV3/ReadVariableOp?8batch_normalization_86/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_86/ReadVariableOp?'batch_normalization_86/ReadVariableOp_1?%batch_normalization_87/AssignNewValue?'batch_normalization_87/AssignNewValue_1?6batch_normalization_87/FusedBatchNormV3/ReadVariableOp?8batch_normalization_87/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_87/ReadVariableOp?'batch_normalization_87/ReadVariableOp_1?:batch_normalization_88/AssignMovingAvg/AssignSubVariableOp?5batch_normalization_88/AssignMovingAvg/ReadVariableOp?<batch_normalization_88/AssignMovingAvg_1/AssignSubVariableOp?7batch_normalization_88/AssignMovingAvg_1/ReadVariableOp?/batch_normalization_88/batchnorm/ReadVariableOp?3batch_normalization_88/batchnorm/mul/ReadVariableOp?:batch_normalization_89/AssignMovingAvg/AssignSubVariableOp?5batch_normalization_89/AssignMovingAvg/ReadVariableOp?<batch_normalization_89/AssignMovingAvg_1/AssignSubVariableOp?7batch_normalization_89/AssignMovingAvg_1/ReadVariableOp?/batch_normalization_89/batchnorm/ReadVariableOp?3batch_normalization_89/batchnorm/mul/ReadVariableOp? conv2d_70/BiasAdd/ReadVariableOp?conv2d_70/Conv2D/ReadVariableOp? conv2d_71/BiasAdd/ReadVariableOp?conv2d_71/Conv2D/ReadVariableOp? conv2d_72/BiasAdd/ReadVariableOp?conv2d_72/Conv2D/ReadVariableOp? conv2d_73/BiasAdd/ReadVariableOp?conv2d_73/Conv2D/ReadVariableOp?dense_24/BiasAdd/ReadVariableOp?dense_24/MatMul/ReadVariableOp?dense_25/BiasAdd/ReadVariableOp?dense_25/MatMul/ReadVariableOp?dense_26/BiasAdd/ReadVariableOp?dense_26/MatMul/ReadVariableOp?
conv2d_70/Conv2D/ReadVariableOpReadVariableOp(conv2d_70_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_70/Conv2D/ReadVariableOp?
conv2d_70/Conv2DConv2Dinputs'conv2d_70/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00 *
paddingSAME*
strides
2
conv2d_70/Conv2D?
 conv2d_70/BiasAdd/ReadVariableOpReadVariableOp)conv2d_70_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_70/BiasAdd/ReadVariableOp?
conv2d_70/BiasAddBiasAddconv2d_70/Conv2D:output:0(conv2d_70/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00 2
conv2d_70/BiasAdd?
activation_93/EluEluconv2d_70/BiasAdd:output:0*
T0*/
_output_shapes
:?????????00 2
activation_93/Elu?
%batch_normalization_84/ReadVariableOpReadVariableOp.batch_normalization_84_readvariableop_resource*
_output_shapes
: *
dtype02'
%batch_normalization_84/ReadVariableOp?
'batch_normalization_84/ReadVariableOp_1ReadVariableOp0batch_normalization_84_readvariableop_1_resource*
_output_shapes
: *
dtype02)
'batch_normalization_84/ReadVariableOp_1?
6batch_normalization_84/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_84_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype028
6batch_normalization_84/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_84/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_84_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02:
8batch_normalization_84/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_84/FusedBatchNormV3FusedBatchNormV3activation_93/Elu:activations:0-batch_normalization_84/ReadVariableOp:value:0/batch_normalization_84/ReadVariableOp_1:value:0>batch_normalization_84/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_84/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????00 : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2)
'batch_normalization_84/FusedBatchNormV3?
%batch_normalization_84/AssignNewValueAssignVariableOp?batch_normalization_84_fusedbatchnormv3_readvariableop_resource4batch_normalization_84/FusedBatchNormV3:batch_mean:07^batch_normalization_84/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*R
_classH
FDloc:@batch_normalization_84/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02'
%batch_normalization_84/AssignNewValue?
'batch_normalization_84/AssignNewValue_1AssignVariableOpAbatch_normalization_84_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_84/FusedBatchNormV3:batch_variance:09^batch_normalization_84/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*T
_classJ
HFloc:@batch_normalization_84/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02)
'batch_normalization_84/AssignNewValue_1?
max_pooling2d_37/MaxPoolMaxPool+batch_normalization_84/FusedBatchNormV3:y:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_37/MaxPooly
dropout_51/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_51/dropout/Const?
dropout_51/dropout/MulMul!max_pooling2d_37/MaxPool:output:0!dropout_51/dropout/Const:output:0*
T0*/
_output_shapes
:????????? 2
dropout_51/dropout/Mul?
dropout_51/dropout/ShapeShape!max_pooling2d_37/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_51/dropout/Shape?
/dropout_51/dropout/random_uniform/RandomUniformRandomUniform!dropout_51/dropout/Shape:output:0*
T0*/
_output_shapes
:????????? *
dtype021
/dropout_51/dropout/random_uniform/RandomUniform?
!dropout_51/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2#
!dropout_51/dropout/GreaterEqual/y?
dropout_51/dropout/GreaterEqualGreaterEqual8dropout_51/dropout/random_uniform/RandomUniform:output:0*dropout_51/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:????????? 2!
dropout_51/dropout/GreaterEqual?
dropout_51/dropout/CastCast#dropout_51/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:????????? 2
dropout_51/dropout/Cast?
dropout_51/dropout/Mul_1Muldropout_51/dropout/Mul:z:0dropout_51/dropout/Cast:y:0*
T0*/
_output_shapes
:????????? 2
dropout_51/dropout/Mul_1?
conv2d_71/Conv2D/ReadVariableOpReadVariableOp(conv2d_71_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02!
conv2d_71/Conv2D/ReadVariableOp?
conv2d_71/Conv2DConv2Ddropout_51/dropout/Mul_1:z:0'conv2d_71/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
conv2d_71/Conv2D?
 conv2d_71/BiasAdd/ReadVariableOpReadVariableOp)conv2d_71_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_71/BiasAdd/ReadVariableOp?
conv2d_71/BiasAddBiasAddconv2d_71/Conv2D:output:0(conv2d_71/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_71/BiasAdd?
activation_94/EluEluconv2d_71/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
activation_94/Elu?
%batch_normalization_85/ReadVariableOpReadVariableOp.batch_normalization_85_readvariableop_resource*
_output_shapes
: *
dtype02'
%batch_normalization_85/ReadVariableOp?
'batch_normalization_85/ReadVariableOp_1ReadVariableOp0batch_normalization_85_readvariableop_1_resource*
_output_shapes
: *
dtype02)
'batch_normalization_85/ReadVariableOp_1?
6batch_normalization_85/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_85_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype028
6batch_normalization_85/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_85/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_85_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02:
8batch_normalization_85/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_85/FusedBatchNormV3FusedBatchNormV3activation_94/Elu:activations:0-batch_normalization_85/ReadVariableOp:value:0/batch_normalization_85/ReadVariableOp_1:value:0>batch_normalization_85/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_85/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2)
'batch_normalization_85/FusedBatchNormV3?
%batch_normalization_85/AssignNewValueAssignVariableOp?batch_normalization_85_fusedbatchnormv3_readvariableop_resource4batch_normalization_85/FusedBatchNormV3:batch_mean:07^batch_normalization_85/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*R
_classH
FDloc:@batch_normalization_85/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02'
%batch_normalization_85/AssignNewValue?
'batch_normalization_85/AssignNewValue_1AssignVariableOpAbatch_normalization_85_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_85/FusedBatchNormV3:batch_variance:09^batch_normalization_85/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*T
_classJ
HFloc:@batch_normalization_85/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02)
'batch_normalization_85/AssignNewValue_1?
max_pooling2d_38/MaxPoolMaxPool+batch_normalization_85/FusedBatchNormV3:y:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_38/MaxPooly
dropout_52/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_52/dropout/Const?
dropout_52/dropout/MulMul!max_pooling2d_38/MaxPool:output:0!dropout_52/dropout/Const:output:0*
T0*/
_output_shapes
:????????? 2
dropout_52/dropout/Mul?
dropout_52/dropout/ShapeShape!max_pooling2d_38/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_52/dropout/Shape?
/dropout_52/dropout/random_uniform/RandomUniformRandomUniform!dropout_52/dropout/Shape:output:0*
T0*/
_output_shapes
:????????? *
dtype021
/dropout_52/dropout/random_uniform/RandomUniform?
!dropout_52/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2#
!dropout_52/dropout/GreaterEqual/y?
dropout_52/dropout/GreaterEqualGreaterEqual8dropout_52/dropout/random_uniform/RandomUniform:output:0*dropout_52/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:????????? 2!
dropout_52/dropout/GreaterEqual?
dropout_52/dropout/CastCast#dropout_52/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:????????? 2
dropout_52/dropout/Cast?
dropout_52/dropout/Mul_1Muldropout_52/dropout/Mul:z:0dropout_52/dropout/Cast:y:0*
T0*/
_output_shapes
:????????? 2
dropout_52/dropout/Mul_1?
conv2d_72/Conv2D/ReadVariableOpReadVariableOp(conv2d_72_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_72/Conv2D/ReadVariableOp?
conv2d_72/Conv2DConv2Ddropout_52/dropout/Mul_1:z:0'conv2d_72/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_72/Conv2D?
 conv2d_72/BiasAdd/ReadVariableOpReadVariableOp)conv2d_72_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_72/BiasAdd/ReadVariableOp?
conv2d_72/BiasAddBiasAddconv2d_72/Conv2D:output:0(conv2d_72/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_72/BiasAdd?
activation_95/EluEluconv2d_72/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
activation_95/Elu?
%batch_normalization_86/ReadVariableOpReadVariableOp.batch_normalization_86_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_86/ReadVariableOp?
'batch_normalization_86/ReadVariableOp_1ReadVariableOp0batch_normalization_86_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_86/ReadVariableOp_1?
6batch_normalization_86/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_86_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_86/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_86/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_86_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_86/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_86/FusedBatchNormV3FusedBatchNormV3activation_95/Elu:activations:0-batch_normalization_86/ReadVariableOp:value:0/batch_normalization_86/ReadVariableOp_1:value:0>batch_normalization_86/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_86/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2)
'batch_normalization_86/FusedBatchNormV3?
%batch_normalization_86/AssignNewValueAssignVariableOp?batch_normalization_86_fusedbatchnormv3_readvariableop_resource4batch_normalization_86/FusedBatchNormV3:batch_mean:07^batch_normalization_86/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*R
_classH
FDloc:@batch_normalization_86/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02'
%batch_normalization_86/AssignNewValue?
'batch_normalization_86/AssignNewValue_1AssignVariableOpAbatch_normalization_86_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_86/FusedBatchNormV3:batch_variance:09^batch_normalization_86/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*T
_classJ
HFloc:@batch_normalization_86/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02)
'batch_normalization_86/AssignNewValue_1?
max_pooling2d_39/MaxPoolMaxPool+batch_normalization_86/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_39/MaxPooly
dropout_53/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_53/dropout/Const?
dropout_53/dropout/MulMul!max_pooling2d_39/MaxPool:output:0!dropout_53/dropout/Const:output:0*
T0*/
_output_shapes
:?????????@2
dropout_53/dropout/Mul?
dropout_53/dropout/ShapeShape!max_pooling2d_39/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_53/dropout/Shape?
/dropout_53/dropout/random_uniform/RandomUniformRandomUniform!dropout_53/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype021
/dropout_53/dropout/random_uniform/RandomUniform?
!dropout_53/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2#
!dropout_53/dropout/GreaterEqual/y?
dropout_53/dropout/GreaterEqualGreaterEqual8dropout_53/dropout/random_uniform/RandomUniform:output:0*dropout_53/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2!
dropout_53/dropout/GreaterEqual?
dropout_53/dropout/CastCast#dropout_53/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2
dropout_53/dropout/Cast?
dropout_53/dropout/Mul_1Muldropout_53/dropout/Mul:z:0dropout_53/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2
dropout_53/dropout/Mul_1?
conv2d_73/Conv2D/ReadVariableOpReadVariableOp(conv2d_73_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_73/Conv2D/ReadVariableOp?
conv2d_73/Conv2DConv2Ddropout_53/dropout/Mul_1:z:0'conv2d_73/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_73/Conv2D?
 conv2d_73/BiasAdd/ReadVariableOpReadVariableOp)conv2d_73_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_73/BiasAdd/ReadVariableOp?
conv2d_73/BiasAddBiasAddconv2d_73/Conv2D:output:0(conv2d_73/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_73/BiasAdd?
activation_96/EluEluconv2d_73/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
activation_96/Elu?
%batch_normalization_87/ReadVariableOpReadVariableOp.batch_normalization_87_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_87/ReadVariableOp?
'batch_normalization_87/ReadVariableOp_1ReadVariableOp0batch_normalization_87_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_87/ReadVariableOp_1?
6batch_normalization_87/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_87_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_87/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_87/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_87_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_87/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_87/FusedBatchNormV3FusedBatchNormV3activation_96/Elu:activations:0-batch_normalization_87/ReadVariableOp:value:0/batch_normalization_87/ReadVariableOp_1:value:0>batch_normalization_87/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_87/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2)
'batch_normalization_87/FusedBatchNormV3?
%batch_normalization_87/AssignNewValueAssignVariableOp?batch_normalization_87_fusedbatchnormv3_readvariableop_resource4batch_normalization_87/FusedBatchNormV3:batch_mean:07^batch_normalization_87/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*R
_classH
FDloc:@batch_normalization_87/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02'
%batch_normalization_87/AssignNewValue?
'batch_normalization_87/AssignNewValue_1AssignVariableOpAbatch_normalization_87_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_87/FusedBatchNormV3:batch_variance:09^batch_normalization_87/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*T
_classJ
HFloc:@batch_normalization_87/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02)
'batch_normalization_87/AssignNewValue_1?
max_pooling2d_40/MaxPoolMaxPool+batch_normalization_87/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_40/MaxPooly
dropout_54/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_54/dropout/Const?
dropout_54/dropout/MulMul!max_pooling2d_40/MaxPool:output:0!dropout_54/dropout/Const:output:0*
T0*/
_output_shapes
:?????????@2
dropout_54/dropout/Mul?
dropout_54/dropout/ShapeShape!max_pooling2d_40/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_54/dropout/Shape?
/dropout_54/dropout/random_uniform/RandomUniformRandomUniform!dropout_54/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype021
/dropout_54/dropout/random_uniform/RandomUniform?
!dropout_54/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2#
!dropout_54/dropout/GreaterEqual/y?
dropout_54/dropout/GreaterEqualGreaterEqual8dropout_54/dropout/random_uniform/RandomUniform:output:0*dropout_54/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2!
dropout_54/dropout/GreaterEqual?
dropout_54/dropout/CastCast#dropout_54/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2
dropout_54/dropout/Cast?
dropout_54/dropout/Mul_1Muldropout_54/dropout/Mul:z:0dropout_54/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2
dropout_54/dropout/Mul_1s
flatten_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  2
flatten_5/Const?
flatten_5/ReshapeReshapedropout_54/dropout/Mul_1:z:0flatten_5/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_5/Reshape?
dense_24/MatMul/ReadVariableOpReadVariableOp'dense_24_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_24/MatMul/ReadVariableOp?
dense_24/MatMulMatMulflatten_5/Reshape:output:0&dense_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_24/MatMul?
dense_24/BiasAdd/ReadVariableOpReadVariableOp(dense_24_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_24/BiasAdd/ReadVariableOp?
dense_24/BiasAddBiasAdddense_24/MatMul:product:0'dense_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_24/BiasAdd{
activation_97/EluEludense_24/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
activation_97/Elu?
5batch_normalization_88/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 27
5batch_normalization_88/moments/mean/reduction_indices?
#batch_normalization_88/moments/meanMeanactivation_97/Elu:activations:0>batch_normalization_88/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2%
#batch_normalization_88/moments/mean?
+batch_normalization_88/moments/StopGradientStopGradient,batch_normalization_88/moments/mean:output:0*
T0*
_output_shapes
:	?2-
+batch_normalization_88/moments/StopGradient?
0batch_normalization_88/moments/SquaredDifferenceSquaredDifferenceactivation_97/Elu:activations:04batch_normalization_88/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????22
0batch_normalization_88/moments/SquaredDifference?
9batch_normalization_88/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2;
9batch_normalization_88/moments/variance/reduction_indices?
'batch_normalization_88/moments/varianceMean4batch_normalization_88/moments/SquaredDifference:z:0Bbatch_normalization_88/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2)
'batch_normalization_88/moments/variance?
&batch_normalization_88/moments/SqueezeSqueeze,batch_normalization_88/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2(
&batch_normalization_88/moments/Squeeze?
(batch_normalization_88/moments/Squeeze_1Squeeze0batch_normalization_88/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2*
(batch_normalization_88/moments/Squeeze_1?
,batch_normalization_88/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_88/AssignMovingAvg/244643*
_output_shapes
: *
dtype0*
valueB
 *
?#<2.
,batch_normalization_88/AssignMovingAvg/decay?
5batch_normalization_88/AssignMovingAvg/ReadVariableOpReadVariableOp-batch_normalization_88_assignmovingavg_244643*
_output_shapes	
:?*
dtype027
5batch_normalization_88/AssignMovingAvg/ReadVariableOp?
*batch_normalization_88/AssignMovingAvg/subSub=batch_normalization_88/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_88/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_88/AssignMovingAvg/244643*
_output_shapes	
:?2,
*batch_normalization_88/AssignMovingAvg/sub?
*batch_normalization_88/AssignMovingAvg/mulMul.batch_normalization_88/AssignMovingAvg/sub:z:05batch_normalization_88/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_88/AssignMovingAvg/244643*
_output_shapes	
:?2,
*batch_normalization_88/AssignMovingAvg/mul?
:batch_normalization_88/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp-batch_normalization_88_assignmovingavg_244643.batch_normalization_88/AssignMovingAvg/mul:z:06^batch_normalization_88/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_88/AssignMovingAvg/244643*
_output_shapes
 *
dtype02<
:batch_normalization_88/AssignMovingAvg/AssignSubVariableOp?
.batch_normalization_88/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*B
_class8
64loc:@batch_normalization_88/AssignMovingAvg_1/244649*
_output_shapes
: *
dtype0*
valueB
 *
?#<20
.batch_normalization_88/AssignMovingAvg_1/decay?
7batch_normalization_88/AssignMovingAvg_1/ReadVariableOpReadVariableOp/batch_normalization_88_assignmovingavg_1_244649*
_output_shapes	
:?*
dtype029
7batch_normalization_88/AssignMovingAvg_1/ReadVariableOp?
,batch_normalization_88/AssignMovingAvg_1/subSub?batch_normalization_88/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_88/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*B
_class8
64loc:@batch_normalization_88/AssignMovingAvg_1/244649*
_output_shapes	
:?2.
,batch_normalization_88/AssignMovingAvg_1/sub?
,batch_normalization_88/AssignMovingAvg_1/mulMul0batch_normalization_88/AssignMovingAvg_1/sub:z:07batch_normalization_88/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*B
_class8
64loc:@batch_normalization_88/AssignMovingAvg_1/244649*
_output_shapes	
:?2.
,batch_normalization_88/AssignMovingAvg_1/mul?
<batch_normalization_88/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp/batch_normalization_88_assignmovingavg_1_2446490batch_normalization_88/AssignMovingAvg_1/mul:z:08^batch_normalization_88/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*B
_class8
64loc:@batch_normalization_88/AssignMovingAvg_1/244649*
_output_shapes
 *
dtype02>
<batch_normalization_88/AssignMovingAvg_1/AssignSubVariableOp?
&batch_normalization_88/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_88/batchnorm/add/y?
$batch_normalization_88/batchnorm/addAddV21batch_normalization_88/moments/Squeeze_1:output:0/batch_normalization_88/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2&
$batch_normalization_88/batchnorm/add?
&batch_normalization_88/batchnorm/RsqrtRsqrt(batch_normalization_88/batchnorm/add:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_88/batchnorm/Rsqrt?
3batch_normalization_88/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_88_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype025
3batch_normalization_88/batchnorm/mul/ReadVariableOp?
$batch_normalization_88/batchnorm/mulMul*batch_normalization_88/batchnorm/Rsqrt:y:0;batch_normalization_88/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2&
$batch_normalization_88/batchnorm/mul?
&batch_normalization_88/batchnorm/mul_1Mulactivation_97/Elu:activations:0(batch_normalization_88/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_88/batchnorm/mul_1?
&batch_normalization_88/batchnorm/mul_2Mul/batch_normalization_88/moments/Squeeze:output:0(batch_normalization_88/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_88/batchnorm/mul_2?
/batch_normalization_88/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_88_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype021
/batch_normalization_88/batchnorm/ReadVariableOp?
$batch_normalization_88/batchnorm/subSub7batch_normalization_88/batchnorm/ReadVariableOp:value:0*batch_normalization_88/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2&
$batch_normalization_88/batchnorm/sub?
&batch_normalization_88/batchnorm/add_1AddV2*batch_normalization_88/batchnorm/mul_1:z:0(batch_normalization_88/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_88/batchnorm/add_1?
dense_25/MatMul/ReadVariableOpReadVariableOp'dense_25_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_25/MatMul/ReadVariableOp?
dense_25/MatMulMatMul*batch_normalization_88/batchnorm/add_1:z:0&dense_25/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_25/MatMul?
dense_25/BiasAdd/ReadVariableOpReadVariableOp(dense_25_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_25/BiasAdd/ReadVariableOp?
dense_25/BiasAddBiasAdddense_25/MatMul:product:0'dense_25/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_25/BiasAdd{
activation_98/EluEludense_25/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
activation_98/Elu?
5batch_normalization_89/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 27
5batch_normalization_89/moments/mean/reduction_indices?
#batch_normalization_89/moments/meanMeanactivation_98/Elu:activations:0>batch_normalization_89/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2%
#batch_normalization_89/moments/mean?
+batch_normalization_89/moments/StopGradientStopGradient,batch_normalization_89/moments/mean:output:0*
T0*
_output_shapes
:	?2-
+batch_normalization_89/moments/StopGradient?
0batch_normalization_89/moments/SquaredDifferenceSquaredDifferenceactivation_98/Elu:activations:04batch_normalization_89/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????22
0batch_normalization_89/moments/SquaredDifference?
9batch_normalization_89/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2;
9batch_normalization_89/moments/variance/reduction_indices?
'batch_normalization_89/moments/varianceMean4batch_normalization_89/moments/SquaredDifference:z:0Bbatch_normalization_89/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2)
'batch_normalization_89/moments/variance?
&batch_normalization_89/moments/SqueezeSqueeze,batch_normalization_89/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2(
&batch_normalization_89/moments/Squeeze?
(batch_normalization_89/moments/Squeeze_1Squeeze0batch_normalization_89/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2*
(batch_normalization_89/moments/Squeeze_1?
,batch_normalization_89/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_89/AssignMovingAvg/244682*
_output_shapes
: *
dtype0*
valueB
 *
?#<2.
,batch_normalization_89/AssignMovingAvg/decay?
5batch_normalization_89/AssignMovingAvg/ReadVariableOpReadVariableOp-batch_normalization_89_assignmovingavg_244682*
_output_shapes	
:?*
dtype027
5batch_normalization_89/AssignMovingAvg/ReadVariableOp?
*batch_normalization_89/AssignMovingAvg/subSub=batch_normalization_89/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_89/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_89/AssignMovingAvg/244682*
_output_shapes	
:?2,
*batch_normalization_89/AssignMovingAvg/sub?
*batch_normalization_89/AssignMovingAvg/mulMul.batch_normalization_89/AssignMovingAvg/sub:z:05batch_normalization_89/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_89/AssignMovingAvg/244682*
_output_shapes	
:?2,
*batch_normalization_89/AssignMovingAvg/mul?
:batch_normalization_89/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp-batch_normalization_89_assignmovingavg_244682.batch_normalization_89/AssignMovingAvg/mul:z:06^batch_normalization_89/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_89/AssignMovingAvg/244682*
_output_shapes
 *
dtype02<
:batch_normalization_89/AssignMovingAvg/AssignSubVariableOp?
.batch_normalization_89/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*B
_class8
64loc:@batch_normalization_89/AssignMovingAvg_1/244688*
_output_shapes
: *
dtype0*
valueB
 *
?#<20
.batch_normalization_89/AssignMovingAvg_1/decay?
7batch_normalization_89/AssignMovingAvg_1/ReadVariableOpReadVariableOp/batch_normalization_89_assignmovingavg_1_244688*
_output_shapes	
:?*
dtype029
7batch_normalization_89/AssignMovingAvg_1/ReadVariableOp?
,batch_normalization_89/AssignMovingAvg_1/subSub?batch_normalization_89/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_89/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*B
_class8
64loc:@batch_normalization_89/AssignMovingAvg_1/244688*
_output_shapes	
:?2.
,batch_normalization_89/AssignMovingAvg_1/sub?
,batch_normalization_89/AssignMovingAvg_1/mulMul0batch_normalization_89/AssignMovingAvg_1/sub:z:07batch_normalization_89/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*B
_class8
64loc:@batch_normalization_89/AssignMovingAvg_1/244688*
_output_shapes	
:?2.
,batch_normalization_89/AssignMovingAvg_1/mul?
<batch_normalization_89/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp/batch_normalization_89_assignmovingavg_1_2446880batch_normalization_89/AssignMovingAvg_1/mul:z:08^batch_normalization_89/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*B
_class8
64loc:@batch_normalization_89/AssignMovingAvg_1/244688*
_output_shapes
 *
dtype02>
<batch_normalization_89/AssignMovingAvg_1/AssignSubVariableOp?
&batch_normalization_89/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_89/batchnorm/add/y?
$batch_normalization_89/batchnorm/addAddV21batch_normalization_89/moments/Squeeze_1:output:0/batch_normalization_89/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2&
$batch_normalization_89/batchnorm/add?
&batch_normalization_89/batchnorm/RsqrtRsqrt(batch_normalization_89/batchnorm/add:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_89/batchnorm/Rsqrt?
3batch_normalization_89/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_89_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype025
3batch_normalization_89/batchnorm/mul/ReadVariableOp?
$batch_normalization_89/batchnorm/mulMul*batch_normalization_89/batchnorm/Rsqrt:y:0;batch_normalization_89/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2&
$batch_normalization_89/batchnorm/mul?
&batch_normalization_89/batchnorm/mul_1Mulactivation_98/Elu:activations:0(batch_normalization_89/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_89/batchnorm/mul_1?
&batch_normalization_89/batchnorm/mul_2Mul/batch_normalization_89/moments/Squeeze:output:0(batch_normalization_89/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_89/batchnorm/mul_2?
/batch_normalization_89/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_89_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype021
/batch_normalization_89/batchnorm/ReadVariableOp?
$batch_normalization_89/batchnorm/subSub7batch_normalization_89/batchnorm/ReadVariableOp:value:0*batch_normalization_89/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2&
$batch_normalization_89/batchnorm/sub?
&batch_normalization_89/batchnorm/add_1AddV2*batch_normalization_89/batchnorm/mul_1:z:0(batch_normalization_89/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_89/batchnorm/add_1?
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02 
dense_26/MatMul/ReadVariableOp?
dense_26/MatMulMatMul*batch_normalization_89/batchnorm/add_1:z:0&dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_26/MatMul?
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_26/BiasAdd/ReadVariableOp?
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_26/BiasAdd?
activation_99/SoftmaxSoftmaxdense_26/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
activation_99/Softmax?
IdentityIdentityactivation_99/Softmax:softmax:0&^batch_normalization_84/AssignNewValue(^batch_normalization_84/AssignNewValue_17^batch_normalization_84/FusedBatchNormV3/ReadVariableOp9^batch_normalization_84/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_84/ReadVariableOp(^batch_normalization_84/ReadVariableOp_1&^batch_normalization_85/AssignNewValue(^batch_normalization_85/AssignNewValue_17^batch_normalization_85/FusedBatchNormV3/ReadVariableOp9^batch_normalization_85/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_85/ReadVariableOp(^batch_normalization_85/ReadVariableOp_1&^batch_normalization_86/AssignNewValue(^batch_normalization_86/AssignNewValue_17^batch_normalization_86/FusedBatchNormV3/ReadVariableOp9^batch_normalization_86/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_86/ReadVariableOp(^batch_normalization_86/ReadVariableOp_1&^batch_normalization_87/AssignNewValue(^batch_normalization_87/AssignNewValue_17^batch_normalization_87/FusedBatchNormV3/ReadVariableOp9^batch_normalization_87/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_87/ReadVariableOp(^batch_normalization_87/ReadVariableOp_1;^batch_normalization_88/AssignMovingAvg/AssignSubVariableOp6^batch_normalization_88/AssignMovingAvg/ReadVariableOp=^batch_normalization_88/AssignMovingAvg_1/AssignSubVariableOp8^batch_normalization_88/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_88/batchnorm/ReadVariableOp4^batch_normalization_88/batchnorm/mul/ReadVariableOp;^batch_normalization_89/AssignMovingAvg/AssignSubVariableOp6^batch_normalization_89/AssignMovingAvg/ReadVariableOp=^batch_normalization_89/AssignMovingAvg_1/AssignSubVariableOp8^batch_normalization_89/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_89/batchnorm/ReadVariableOp4^batch_normalization_89/batchnorm/mul/ReadVariableOp!^conv2d_70/BiasAdd/ReadVariableOp ^conv2d_70/Conv2D/ReadVariableOp!^conv2d_71/BiasAdd/ReadVariableOp ^conv2d_71/Conv2D/ReadVariableOp!^conv2d_72/BiasAdd/ReadVariableOp ^conv2d_72/Conv2D/ReadVariableOp!^conv2d_73/BiasAdd/ReadVariableOp ^conv2d_73/Conv2D/ReadVariableOp ^dense_24/BiasAdd/ReadVariableOp^dense_24/MatMul/ReadVariableOp ^dense_25/BiasAdd/ReadVariableOp^dense_25/MatMul/ReadVariableOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????00::::::::::::::::::::::::::::::::::::::2N
%batch_normalization_84/AssignNewValue%batch_normalization_84/AssignNewValue2R
'batch_normalization_84/AssignNewValue_1'batch_normalization_84/AssignNewValue_12p
6batch_normalization_84/FusedBatchNormV3/ReadVariableOp6batch_normalization_84/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_84/FusedBatchNormV3/ReadVariableOp_18batch_normalization_84/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_84/ReadVariableOp%batch_normalization_84/ReadVariableOp2R
'batch_normalization_84/ReadVariableOp_1'batch_normalization_84/ReadVariableOp_12N
%batch_normalization_85/AssignNewValue%batch_normalization_85/AssignNewValue2R
'batch_normalization_85/AssignNewValue_1'batch_normalization_85/AssignNewValue_12p
6batch_normalization_85/FusedBatchNormV3/ReadVariableOp6batch_normalization_85/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_85/FusedBatchNormV3/ReadVariableOp_18batch_normalization_85/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_85/ReadVariableOp%batch_normalization_85/ReadVariableOp2R
'batch_normalization_85/ReadVariableOp_1'batch_normalization_85/ReadVariableOp_12N
%batch_normalization_86/AssignNewValue%batch_normalization_86/AssignNewValue2R
'batch_normalization_86/AssignNewValue_1'batch_normalization_86/AssignNewValue_12p
6batch_normalization_86/FusedBatchNormV3/ReadVariableOp6batch_normalization_86/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_86/FusedBatchNormV3/ReadVariableOp_18batch_normalization_86/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_86/ReadVariableOp%batch_normalization_86/ReadVariableOp2R
'batch_normalization_86/ReadVariableOp_1'batch_normalization_86/ReadVariableOp_12N
%batch_normalization_87/AssignNewValue%batch_normalization_87/AssignNewValue2R
'batch_normalization_87/AssignNewValue_1'batch_normalization_87/AssignNewValue_12p
6batch_normalization_87/FusedBatchNormV3/ReadVariableOp6batch_normalization_87/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_87/FusedBatchNormV3/ReadVariableOp_18batch_normalization_87/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_87/ReadVariableOp%batch_normalization_87/ReadVariableOp2R
'batch_normalization_87/ReadVariableOp_1'batch_normalization_87/ReadVariableOp_12x
:batch_normalization_88/AssignMovingAvg/AssignSubVariableOp:batch_normalization_88/AssignMovingAvg/AssignSubVariableOp2n
5batch_normalization_88/AssignMovingAvg/ReadVariableOp5batch_normalization_88/AssignMovingAvg/ReadVariableOp2|
<batch_normalization_88/AssignMovingAvg_1/AssignSubVariableOp<batch_normalization_88/AssignMovingAvg_1/AssignSubVariableOp2r
7batch_normalization_88/AssignMovingAvg_1/ReadVariableOp7batch_normalization_88/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_88/batchnorm/ReadVariableOp/batch_normalization_88/batchnorm/ReadVariableOp2j
3batch_normalization_88/batchnorm/mul/ReadVariableOp3batch_normalization_88/batchnorm/mul/ReadVariableOp2x
:batch_normalization_89/AssignMovingAvg/AssignSubVariableOp:batch_normalization_89/AssignMovingAvg/AssignSubVariableOp2n
5batch_normalization_89/AssignMovingAvg/ReadVariableOp5batch_normalization_89/AssignMovingAvg/ReadVariableOp2|
<batch_normalization_89/AssignMovingAvg_1/AssignSubVariableOp<batch_normalization_89/AssignMovingAvg_1/AssignSubVariableOp2r
7batch_normalization_89/AssignMovingAvg_1/ReadVariableOp7batch_normalization_89/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_89/batchnorm/ReadVariableOp/batch_normalization_89/batchnorm/ReadVariableOp2j
3batch_normalization_89/batchnorm/mul/ReadVariableOp3batch_normalization_89/batchnorm/mul/ReadVariableOp2D
 conv2d_70/BiasAdd/ReadVariableOp conv2d_70/BiasAdd/ReadVariableOp2B
conv2d_70/Conv2D/ReadVariableOpconv2d_70/Conv2D/ReadVariableOp2D
 conv2d_71/BiasAdd/ReadVariableOp conv2d_71/BiasAdd/ReadVariableOp2B
conv2d_71/Conv2D/ReadVariableOpconv2d_71/Conv2D/ReadVariableOp2D
 conv2d_72/BiasAdd/ReadVariableOp conv2d_72/BiasAdd/ReadVariableOp2B
conv2d_72/Conv2D/ReadVariableOpconv2d_72/Conv2D/ReadVariableOp2D
 conv2d_73/BiasAdd/ReadVariableOp conv2d_73/BiasAdd/ReadVariableOp2B
conv2d_73/Conv2D/ReadVariableOpconv2d_73/Conv2D/ReadVariableOp2B
dense_24/BiasAdd/ReadVariableOpdense_24/BiasAdd/ReadVariableOp2@
dense_24/MatMul/ReadVariableOpdense_24/MatMul/ReadVariableOp2B
dense_25/BiasAdd/ReadVariableOpdense_25/BiasAdd/ReadVariableOp2@
dense_25/MatMul/ReadVariableOpdense_25/MatMul/ReadVariableOp2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????00
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_89_layer_call_fn_245983

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_89_layer_call_and_return_conditional_losses_2430922
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
S
conv2d_70_input@
!serving_default_conv2d_70_input:0?????????00A
activation_990
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
??
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

layer-9
layer_with_weights-4
layer-10
layer-11
layer_with_weights-5
layer-12
layer-13
layer-14
layer_with_weights-6
layer-15
layer-16
layer_with_weights-7
layer-17
layer-18
layer-19
layer-20
layer_with_weights-8
layer-21
layer-22
layer_with_weights-9
layer-23
layer_with_weights-10
layer-24
layer-25
layer_with_weights-11
layer-26
layer_with_weights-12
layer-27
layer-28
	optimizer
	variables
 regularization_losses
!trainable_variables
"	keras_api
#
signatures
+?&call_and_return_all_conditional_losses
?__call__
?_default_save_signature"??
_tf_keras_sequential??{"class_name": "Sequential", "name": "sequential_10", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_10", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 48, 48, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_70_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_70", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 48, 48, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_93", "trainable": true, "dtype": "float32", "activation": "elu"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_84", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_37", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_51", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_71", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_94", "trainable": true, "dtype": "float32", "activation": "elu"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_85", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_38", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_52", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_72", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_95", "trainable": true, "dtype": "float32", "activation": "elu"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_86", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_39", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_53", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_73", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_96", "trainable": true, "dtype": "float32", "activation": "elu"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_87", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_40", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_54", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Flatten", "config": {"name": "flatten_5", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_24", "trainable": true, "dtype": "float32", "units": 1024, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_97", "trainable": true, "dtype": "float32", "activation": "elu"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_88", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_25", "trainable": true, "dtype": "float32", "units": 128, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_98", "trainable": true, "dtype": "float32", "activation": "elu"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_89", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_26", "trainable": true, "dtype": "float32", "units": 7, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_99", "trainable": true, "dtype": "float32", "activation": "softmax"}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 48, 48, 1]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_10", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 48, 48, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_70_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_70", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 48, 48, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_93", "trainable": true, "dtype": "float32", "activation": "elu"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_84", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_37", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_51", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_71", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_94", "trainable": true, "dtype": "float32", "activation": "elu"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_85", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_38", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_52", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_72", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_95", "trainable": true, "dtype": "float32", "activation": "elu"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_86", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_39", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_53", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_73", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_96", "trainable": true, "dtype": "float32", "activation": "elu"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_87", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_40", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_54", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Flatten", "config": {"name": "flatten_5", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_24", "trainable": true, "dtype": "float32", "units": 1024, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_97", "trainable": true, "dtype": "float32", "activation": "elu"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_88", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_25", "trainable": true, "dtype": "float32", "units": 128, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_98", "trainable": true, "dtype": "float32", "activation": "elu"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_89", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_26", "trainable": true, "dtype": "float32", "units": 7, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_99", "trainable": true, "dtype": "float32", "activation": "softmax"}}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adamax", "config": {"name": "Adamax", "learning_rate": 6.25000029685907e-05, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07}}}}
?


$kernel
%bias
&	variables
'trainable_variables
(regularization_losses
)	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"class_name": "Conv2D", "name": "conv2d_70", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 48, 48, 1]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_70", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 48, 48, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 48, 48, 1]}}
?
*	variables
+trainable_variables
,regularization_losses
-	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_93", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_93", "trainable": true, "dtype": "float32", "activation": "elu"}}
?	
.axis
	/gamma
0beta
1moving_mean
2moving_variance
3	variables
4trainable_variables
5regularization_losses
6	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_84", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_84", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 48, 48, 32]}}
?
7	variables
8trainable_variables
9regularization_losses
:	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_37", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_37", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
;	variables
<trainable_variables
=regularization_losses
>	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_51", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_51", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
?	

?kernel
@bias
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_71", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_71", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 24, 32]}}
?
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_94", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_94", "trainable": true, "dtype": "float32", "activation": "elu"}}
?	
Iaxis
	Jgamma
Kbeta
Lmoving_mean
Mmoving_variance
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_85", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_85", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 24, 32]}}
?
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_38", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_38", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_52", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_52", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
?	

Zkernel
[bias
\	variables
]trainable_variables
^regularization_losses
_	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_72", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_72", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 12, 12, 32]}}
?
`	variables
atrainable_variables
bregularization_losses
c	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_95", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_95", "trainable": true, "dtype": "float32", "activation": "elu"}}
?	
daxis
	egamma
fbeta
gmoving_mean
hmoving_variance
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_86", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_86", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 12, 12, 64]}}
?
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_39", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_39", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_53", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_53", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
?	

ukernel
vbias
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_73", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_73", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 6, 6, 64]}}
?
{	variables
|trainable_variables
}regularization_losses
~	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_96", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_96", "trainable": true, "dtype": "float32", "activation": "elu"}}
?	
axis

?gamma
	?beta
?moving_mean
?moving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_87", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_87", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 6, 6, 64]}}
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_40", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_40", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_54", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_54", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_5", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_24", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_24", "trainable": true, "dtype": "float32", "units": 1024, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 576}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 576]}}
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_97", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_97", "trainable": true, "dtype": "float32", "activation": "elu"}}
?	
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_88", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_88", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 1024}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1024]}}
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_25", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_25", "trainable": true, "dtype": "float32", "units": 128, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1024}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1024]}}
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_98", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_98", "trainable": true, "dtype": "float32", "activation": "elu"}}
?	
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_89", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_89", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_26", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_26", "trainable": true, "dtype": "float32", "units": 7, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_99", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_99", "trainable": true, "dtype": "float32", "activation": "softmax"}}
?
	?iter
?beta_1
?beta_2

?decay
?learning_rate$m?%m?/m?0m??m?@m?Jm?Km?Zm?[m?em?fm?um?vm?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?$v?%v?/v?0v??v?@v?Jv?Kv?Zv?[v?ev?fv?uv?vv?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?"
	optimizer
?
$0
%1
/2
03
14
25
?6
@7
J8
K9
L10
M11
Z12
[13
e14
f15
g16
h17
u18
v19
?20
?21
?22
?23
?24
?25
?26
?27
?28
?29
?30
?31
?32
?33
?34
?35
?36
?37"
trackable_list_wrapper
 "
trackable_list_wrapper
?
$0
%1
/2
03
?4
@5
J6
K7
Z8
[9
e10
f11
u12
v13
?14
?15
?16
?17
?18
?19
?20
?21
?22
?23
?24
?25"
trackable_list_wrapper
?
?layers
	variables
 ?layer_regularization_losses
?layer_metrics
?metrics
?non_trainable_variables
 regularization_losses
!trainable_variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
*:( 2conv2d_70/kernel
: 2conv2d_70/bias
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
&	variables
 ?layer_regularization_losses
?layer_metrics
'trainable_variables
?non_trainable_variables
(regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
*	variables
 ?layer_regularization_losses
?layer_metrics
+trainable_variables
?non_trainable_variables
,regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:( 2batch_normalization_84/gamma
):' 2batch_normalization_84/beta
2:0  (2"batch_normalization_84/moving_mean
6:4  (2&batch_normalization_84/moving_variance
<
/0
01
12
23"
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
3	variables
 ?layer_regularization_losses
?layer_metrics
4trainable_variables
?non_trainable_variables
5regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
7	variables
 ?layer_regularization_losses
?layer_metrics
8trainable_variables
?non_trainable_variables
9regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
;	variables
 ?layer_regularization_losses
?layer_metrics
<trainable_variables
?non_trainable_variables
=regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:(  2conv2d_71/kernel
: 2conv2d_71/bias
.
?0
@1"
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
A	variables
 ?layer_regularization_losses
?layer_metrics
Btrainable_variables
?non_trainable_variables
Cregularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
E	variables
 ?layer_regularization_losses
?layer_metrics
Ftrainable_variables
?non_trainable_variables
Gregularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:( 2batch_normalization_85/gamma
):' 2batch_normalization_85/beta
2:0  (2"batch_normalization_85/moving_mean
6:4  (2&batch_normalization_85/moving_variance
<
J0
K1
L2
M3"
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
N	variables
 ?layer_regularization_losses
?layer_metrics
Otrainable_variables
?non_trainable_variables
Pregularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
R	variables
 ?layer_regularization_losses
?layer_metrics
Strainable_variables
?non_trainable_variables
Tregularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
V	variables
 ?layer_regularization_losses
?layer_metrics
Wtrainable_variables
?non_trainable_variables
Xregularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:( @2conv2d_72/kernel
:@2conv2d_72/bias
.
Z0
[1"
trackable_list_wrapper
.
Z0
[1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
\	variables
 ?layer_regularization_losses
?layer_metrics
]trainable_variables
?non_trainable_variables
^regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
`	variables
 ?layer_regularization_losses
?layer_metrics
atrainable_variables
?non_trainable_variables
bregularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(@2batch_normalization_86/gamma
):'@2batch_normalization_86/beta
2:0@ (2"batch_normalization_86/moving_mean
6:4@ (2&batch_normalization_86/moving_variance
<
e0
f1
g2
h3"
trackable_list_wrapper
.
e0
f1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
i	variables
 ?layer_regularization_losses
?layer_metrics
jtrainable_variables
?non_trainable_variables
kregularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
m	variables
 ?layer_regularization_losses
?layer_metrics
ntrainable_variables
?non_trainable_variables
oregularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
q	variables
 ?layer_regularization_losses
?layer_metrics
rtrainable_variables
?non_trainable_variables
sregularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:(@@2conv2d_73/kernel
:@2conv2d_73/bias
.
u0
v1"
trackable_list_wrapper
.
u0
v1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
w	variables
 ?layer_regularization_losses
?layer_metrics
xtrainable_variables
?non_trainable_variables
yregularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
{	variables
 ?layer_regularization_losses
?layer_metrics
|trainable_variables
?non_trainable_variables
}regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(@2batch_normalization_87/gamma
):'@2batch_normalization_87/beta
2:0@ (2"batch_normalization_87/moving_mean
6:4@ (2&batch_normalization_87/moving_variance
@
?0
?1
?2
?3"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?	variables
 ?layer_regularization_losses
?layer_metrics
?trainable_variables
?non_trainable_variables
?regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?	variables
 ?layer_regularization_losses
?layer_metrics
?trainable_variables
?non_trainable_variables
?regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?	variables
 ?layer_regularization_losses
?layer_metrics
?trainable_variables
?non_trainable_variables
?regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?	variables
 ?layer_regularization_losses
?layer_metrics
?trainable_variables
?non_trainable_variables
?regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!
??2dense_24/kernel
:?2dense_24/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?	variables
 ?layer_regularization_losses
?layer_metrics
?trainable_variables
?non_trainable_variables
?regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?	variables
 ?layer_regularization_losses
?layer_metrics
?trainable_variables
?non_trainable_variables
?regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)?2batch_normalization_88/gamma
*:(?2batch_normalization_88/beta
3:1? (2"batch_normalization_88/moving_mean
7:5? (2&batch_normalization_88/moving_variance
@
?0
?1
?2
?3"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?	variables
 ?layer_regularization_losses
?layer_metrics
?trainable_variables
?non_trainable_variables
?regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!
??2dense_25/kernel
:?2dense_25/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?	variables
 ?layer_regularization_losses
?layer_metrics
?trainable_variables
?non_trainable_variables
?regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?	variables
 ?layer_regularization_losses
?layer_metrics
?trainable_variables
?non_trainable_variables
?regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)?2batch_normalization_89/gamma
*:(?2batch_normalization_89/beta
3:1? (2"batch_normalization_89/moving_mean
7:5? (2&batch_normalization_89/moving_variance
@
?0
?1
?2
?3"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?	variables
 ?layer_regularization_losses
?layer_metrics
?trainable_variables
?non_trainable_variables
?regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 	?2dense_26/kernel
:2dense_26/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?	variables
 ?layer_regularization_losses
?layer_metrics
?trainable_variables
?non_trainable_variables
?regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?	variables
 ?layer_regularization_losses
?layer_metrics
?trainable_variables
?non_trainable_variables
?regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2Adamax/iter
: (2Adamax/beta_1
: (2Adamax/beta_2
: (2Adamax/decay
: (2Adamax/learning_rate
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
|
10
21
L2
M3
g4
h5
?6
?7
?8
?9
?10
?11"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
g0
h1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
1:/ 2Adamax/conv2d_70/kernel/m
#:! 2Adamax/conv2d_70/bias/m
1:/ 2%Adamax/batch_normalization_84/gamma/m
0:. 2$Adamax/batch_normalization_84/beta/m
1:/  2Adamax/conv2d_71/kernel/m
#:! 2Adamax/conv2d_71/bias/m
1:/ 2%Adamax/batch_normalization_85/gamma/m
0:. 2$Adamax/batch_normalization_85/beta/m
1:/ @2Adamax/conv2d_72/kernel/m
#:!@2Adamax/conv2d_72/bias/m
1:/@2%Adamax/batch_normalization_86/gamma/m
0:.@2$Adamax/batch_normalization_86/beta/m
1:/@@2Adamax/conv2d_73/kernel/m
#:!@2Adamax/conv2d_73/bias/m
1:/@2%Adamax/batch_normalization_87/gamma/m
0:.@2$Adamax/batch_normalization_87/beta/m
*:(
??2Adamax/dense_24/kernel/m
#:!?2Adamax/dense_24/bias/m
2:0?2%Adamax/batch_normalization_88/gamma/m
1:/?2$Adamax/batch_normalization_88/beta/m
*:(
??2Adamax/dense_25/kernel/m
#:!?2Adamax/dense_25/bias/m
2:0?2%Adamax/batch_normalization_89/gamma/m
1:/?2$Adamax/batch_normalization_89/beta/m
):'	?2Adamax/dense_26/kernel/m
": 2Adamax/dense_26/bias/m
1:/ 2Adamax/conv2d_70/kernel/v
#:! 2Adamax/conv2d_70/bias/v
1:/ 2%Adamax/batch_normalization_84/gamma/v
0:. 2$Adamax/batch_normalization_84/beta/v
1:/  2Adamax/conv2d_71/kernel/v
#:! 2Adamax/conv2d_71/bias/v
1:/ 2%Adamax/batch_normalization_85/gamma/v
0:. 2$Adamax/batch_normalization_85/beta/v
1:/ @2Adamax/conv2d_72/kernel/v
#:!@2Adamax/conv2d_72/bias/v
1:/@2%Adamax/batch_normalization_86/gamma/v
0:.@2$Adamax/batch_normalization_86/beta/v
1:/@@2Adamax/conv2d_73/kernel/v
#:!@2Adamax/conv2d_73/bias/v
1:/@2%Adamax/batch_normalization_87/gamma/v
0:.@2$Adamax/batch_normalization_87/beta/v
*:(
??2Adamax/dense_24/kernel/v
#:!?2Adamax/dense_24/bias/v
2:0?2%Adamax/batch_normalization_88/gamma/v
1:/?2$Adamax/batch_normalization_88/beta/v
*:(
??2Adamax/dense_25/kernel/v
#:!?2Adamax/dense_25/bias/v
2:0?2%Adamax/batch_normalization_89/gamma/v
1:/?2$Adamax/batch_normalization_89/beta/v
):'	?2Adamax/dense_26/kernel/v
": 2Adamax/dense_26/bias/v
?2?
I__inference_sequential_10_layer_call_and_return_conditional_losses_244714
I__inference_sequential_10_layer_call_and_return_conditional_losses_244865
I__inference_sequential_10_layer_call_and_return_conditional_losses_244023
I__inference_sequential_10_layer_call_and_return_conditional_losses_243914?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
.__inference_sequential_10_layer_call_fn_245027
.__inference_sequential_10_layer_call_fn_244214
.__inference_sequential_10_layer_call_fn_244946
.__inference_sequential_10_layer_call_fn_244404?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
!__inference__wrapped_model_242392?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *6?3
1?.
conv2d_70_input?????????00
?2?
E__inference_conv2d_70_layer_call_and_return_conditional_losses_245037?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_conv2d_70_layer_call_fn_245046?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_activation_93_layer_call_and_return_conditional_losses_245051?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
.__inference_activation_93_layer_call_fn_245056?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
R__inference_batch_normalization_84_layer_call_and_return_conditional_losses_245076
R__inference_batch_normalization_84_layer_call_and_return_conditional_losses_245140
R__inference_batch_normalization_84_layer_call_and_return_conditional_losses_245158
R__inference_batch_normalization_84_layer_call_and_return_conditional_losses_245094?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
7__inference_batch_normalization_84_layer_call_fn_245171
7__inference_batch_normalization_84_layer_call_fn_245184
7__inference_batch_normalization_84_layer_call_fn_245120
7__inference_batch_normalization_84_layer_call_fn_245107?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_242502?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
1__inference_max_pooling2d_37_layer_call_fn_242508?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
F__inference_dropout_51_layer_call_and_return_conditional_losses_245196
F__inference_dropout_51_layer_call_and_return_conditional_losses_245201?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_dropout_51_layer_call_fn_245206
+__inference_dropout_51_layer_call_fn_245211?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_conv2d_71_layer_call_and_return_conditional_losses_245221?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_conv2d_71_layer_call_fn_245230?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_activation_94_layer_call_and_return_conditional_losses_245235?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
.__inference_activation_94_layer_call_fn_245240?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
R__inference_batch_normalization_85_layer_call_and_return_conditional_losses_245260
R__inference_batch_normalization_85_layer_call_and_return_conditional_losses_245278
R__inference_batch_normalization_85_layer_call_and_return_conditional_losses_245324
R__inference_batch_normalization_85_layer_call_and_return_conditional_losses_245342?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
7__inference_batch_normalization_85_layer_call_fn_245291
7__inference_batch_normalization_85_layer_call_fn_245304
7__inference_batch_normalization_85_layer_call_fn_245355
7__inference_batch_normalization_85_layer_call_fn_245368?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_242618?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
1__inference_max_pooling2d_38_layer_call_fn_242624?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
F__inference_dropout_52_layer_call_and_return_conditional_losses_245380
F__inference_dropout_52_layer_call_and_return_conditional_losses_245385?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_dropout_52_layer_call_fn_245395
+__inference_dropout_52_layer_call_fn_245390?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_conv2d_72_layer_call_and_return_conditional_losses_245405?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_conv2d_72_layer_call_fn_245414?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_activation_95_layer_call_and_return_conditional_losses_245419?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
.__inference_activation_95_layer_call_fn_245424?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
R__inference_batch_normalization_86_layer_call_and_return_conditional_losses_245526
R__inference_batch_normalization_86_layer_call_and_return_conditional_losses_245508
R__inference_batch_normalization_86_layer_call_and_return_conditional_losses_245444
R__inference_batch_normalization_86_layer_call_and_return_conditional_losses_245462?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
7__inference_batch_normalization_86_layer_call_fn_245488
7__inference_batch_normalization_86_layer_call_fn_245552
7__inference_batch_normalization_86_layer_call_fn_245539
7__inference_batch_normalization_86_layer_call_fn_245475?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
L__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_242734?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
1__inference_max_pooling2d_39_layer_call_fn_242740?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
F__inference_dropout_53_layer_call_and_return_conditional_losses_245564
F__inference_dropout_53_layer_call_and_return_conditional_losses_245569?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_dropout_53_layer_call_fn_245579
+__inference_dropout_53_layer_call_fn_245574?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_conv2d_73_layer_call_and_return_conditional_losses_245589?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_conv2d_73_layer_call_fn_245598?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_activation_96_layer_call_and_return_conditional_losses_245603?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
.__inference_activation_96_layer_call_fn_245608?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
R__inference_batch_normalization_87_layer_call_and_return_conditional_losses_245628
R__inference_batch_normalization_87_layer_call_and_return_conditional_losses_245710
R__inference_batch_normalization_87_layer_call_and_return_conditional_losses_245692
R__inference_batch_normalization_87_layer_call_and_return_conditional_losses_245646?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
7__inference_batch_normalization_87_layer_call_fn_245672
7__inference_batch_normalization_87_layer_call_fn_245723
7__inference_batch_normalization_87_layer_call_fn_245659
7__inference_batch_normalization_87_layer_call_fn_245736?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
L__inference_max_pooling2d_40_layer_call_and_return_conditional_losses_242850?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
1__inference_max_pooling2d_40_layer_call_fn_242856?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
F__inference_dropout_54_layer_call_and_return_conditional_losses_245748
F__inference_dropout_54_layer_call_and_return_conditional_losses_245753?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_dropout_54_layer_call_fn_245763
+__inference_dropout_54_layer_call_fn_245758?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_flatten_5_layer_call_and_return_conditional_losses_245769?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_flatten_5_layer_call_fn_245774?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_24_layer_call_and_return_conditional_losses_245784?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dense_24_layer_call_fn_245793?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_activation_97_layer_call_and_return_conditional_losses_245798?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
.__inference_activation_97_layer_call_fn_245803?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
R__inference_batch_normalization_88_layer_call_and_return_conditional_losses_245859
R__inference_batch_normalization_88_layer_call_and_return_conditional_losses_245839?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
7__inference_batch_normalization_88_layer_call_fn_245885
7__inference_batch_normalization_88_layer_call_fn_245872?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_dense_25_layer_call_and_return_conditional_losses_245895?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dense_25_layer_call_fn_245904?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_activation_98_layer_call_and_return_conditional_losses_245909?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
.__inference_activation_98_layer_call_fn_245914?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
R__inference_batch_normalization_89_layer_call_and_return_conditional_losses_245950
R__inference_batch_normalization_89_layer_call_and_return_conditional_losses_245970?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
7__inference_batch_normalization_89_layer_call_fn_245983
7__inference_batch_normalization_89_layer_call_fn_245996?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_dense_26_layer_call_and_return_conditional_losses_246006?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dense_26_layer_call_fn_246015?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_activation_99_layer_call_and_return_conditional_losses_246020?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
.__inference_activation_99_layer_call_fn_246025?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
$__inference_signature_wrapper_244495conv2d_70_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
!__inference__wrapped_model_242392?8$%/012?@JKLMZ[efghuv??????????????????@?=
6?3
1?.
conv2d_70_input?????????00
? "=?:
8
activation_99'?$
activation_99??????????
I__inference_activation_93_layer_call_and_return_conditional_losses_245051h7?4
-?*
(?%
inputs?????????00 
? "-?*
#? 
0?????????00 
? ?
.__inference_activation_93_layer_call_fn_245056[7?4
-?*
(?%
inputs?????????00 
? " ??????????00 ?
I__inference_activation_94_layer_call_and_return_conditional_losses_245235h7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0????????? 
? ?
.__inference_activation_94_layer_call_fn_245240[7?4
-?*
(?%
inputs????????? 
? " ?????????? ?
I__inference_activation_95_layer_call_and_return_conditional_losses_245419h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
.__inference_activation_95_layer_call_fn_245424[7?4
-?*
(?%
inputs?????????@
? " ??????????@?
I__inference_activation_96_layer_call_and_return_conditional_losses_245603h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
.__inference_activation_96_layer_call_fn_245608[7?4
-?*
(?%
inputs?????????@
? " ??????????@?
I__inference_activation_97_layer_call_and_return_conditional_losses_245798Z0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? 
.__inference_activation_97_layer_call_fn_245803M0?-
&?#
!?
inputs??????????
? "????????????
I__inference_activation_98_layer_call_and_return_conditional_losses_245909Z0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? 
.__inference_activation_98_layer_call_fn_245914M0?-
&?#
!?
inputs??????????
? "????????????
I__inference_activation_99_layer_call_and_return_conditional_losses_246020X/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? }
.__inference_activation_99_layer_call_fn_246025K/?,
%?"
 ?
inputs?????????
? "???????????
R__inference_batch_normalization_84_layer_call_and_return_conditional_losses_245076?/012M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "??<
5?2
0+??????????????????????????? 
? ?
R__inference_batch_normalization_84_layer_call_and_return_conditional_losses_245094?/012M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "??<
5?2
0+??????????????????????????? 
? ?
R__inference_batch_normalization_84_layer_call_and_return_conditional_losses_245140r/012;?8
1?.
(?%
inputs?????????00 
p
? "-?*
#? 
0?????????00 
? ?
R__inference_batch_normalization_84_layer_call_and_return_conditional_losses_245158r/012;?8
1?.
(?%
inputs?????????00 
p 
? "-?*
#? 
0?????????00 
? ?
7__inference_batch_normalization_84_layer_call_fn_245107?/012M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "2?/+??????????????????????????? ?
7__inference_batch_normalization_84_layer_call_fn_245120?/012M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "2?/+??????????????????????????? ?
7__inference_batch_normalization_84_layer_call_fn_245171e/012;?8
1?.
(?%
inputs?????????00 
p
? " ??????????00 ?
7__inference_batch_normalization_84_layer_call_fn_245184e/012;?8
1?.
(?%
inputs?????????00 
p 
? " ??????????00 ?
R__inference_batch_normalization_85_layer_call_and_return_conditional_losses_245260?JKLMM?J
C?@
:?7
inputs+??????????????????????????? 
p
? "??<
5?2
0+??????????????????????????? 
? ?
R__inference_batch_normalization_85_layer_call_and_return_conditional_losses_245278?JKLMM?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "??<
5?2
0+??????????????????????????? 
? ?
R__inference_batch_normalization_85_layer_call_and_return_conditional_losses_245324rJKLM;?8
1?.
(?%
inputs????????? 
p
? "-?*
#? 
0????????? 
? ?
R__inference_batch_normalization_85_layer_call_and_return_conditional_losses_245342rJKLM;?8
1?.
(?%
inputs????????? 
p 
? "-?*
#? 
0????????? 
? ?
7__inference_batch_normalization_85_layer_call_fn_245291?JKLMM?J
C?@
:?7
inputs+??????????????????????????? 
p
? "2?/+??????????????????????????? ?
7__inference_batch_normalization_85_layer_call_fn_245304?JKLMM?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "2?/+??????????????????????????? ?
7__inference_batch_normalization_85_layer_call_fn_245355eJKLM;?8
1?.
(?%
inputs????????? 
p
? " ?????????? ?
7__inference_batch_normalization_85_layer_call_fn_245368eJKLM;?8
1?.
(?%
inputs????????? 
p 
? " ?????????? ?
R__inference_batch_normalization_86_layer_call_and_return_conditional_losses_245444?efghM?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
R__inference_batch_normalization_86_layer_call_and_return_conditional_losses_245462?efghM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
R__inference_batch_normalization_86_layer_call_and_return_conditional_losses_245508refgh;?8
1?.
(?%
inputs?????????@
p
? "-?*
#? 
0?????????@
? ?
R__inference_batch_normalization_86_layer_call_and_return_conditional_losses_245526refgh;?8
1?.
(?%
inputs?????????@
p 
? "-?*
#? 
0?????????@
? ?
7__inference_batch_normalization_86_layer_call_fn_245475?efghM?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
7__inference_batch_normalization_86_layer_call_fn_245488?efghM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
7__inference_batch_normalization_86_layer_call_fn_245539eefgh;?8
1?.
(?%
inputs?????????@
p
? " ??????????@?
7__inference_batch_normalization_86_layer_call_fn_245552eefgh;?8
1?.
(?%
inputs?????????@
p 
? " ??????????@?
R__inference_batch_normalization_87_layer_call_and_return_conditional_losses_245628v????;?8
1?.
(?%
inputs?????????@
p
? "-?*
#? 
0?????????@
? ?
R__inference_batch_normalization_87_layer_call_and_return_conditional_losses_245646v????;?8
1?.
(?%
inputs?????????@
p 
? "-?*
#? 
0?????????@
? ?
R__inference_batch_normalization_87_layer_call_and_return_conditional_losses_245692?????M?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
R__inference_batch_normalization_87_layer_call_and_return_conditional_losses_245710?????M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
7__inference_batch_normalization_87_layer_call_fn_245659i????;?8
1?.
(?%
inputs?????????@
p
? " ??????????@?
7__inference_batch_normalization_87_layer_call_fn_245672i????;?8
1?.
(?%
inputs?????????@
p 
? " ??????????@?
7__inference_batch_normalization_87_layer_call_fn_245723?????M?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
7__inference_batch_normalization_87_layer_call_fn_245736?????M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
R__inference_batch_normalization_88_layer_call_and_return_conditional_losses_245839h????4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
R__inference_batch_normalization_88_layer_call_and_return_conditional_losses_245859h????4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
7__inference_batch_normalization_88_layer_call_fn_245872[????4?1
*?'
!?
inputs??????????
p
? "????????????
7__inference_batch_normalization_88_layer_call_fn_245885[????4?1
*?'
!?
inputs??????????
p 
? "????????????
R__inference_batch_normalization_89_layer_call_and_return_conditional_losses_245950h????4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
R__inference_batch_normalization_89_layer_call_and_return_conditional_losses_245970h????4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
7__inference_batch_normalization_89_layer_call_fn_245983[????4?1
*?'
!?
inputs??????????
p
? "????????????
7__inference_batch_normalization_89_layer_call_fn_245996[????4?1
*?'
!?
inputs??????????
p 
? "????????????
E__inference_conv2d_70_layer_call_and_return_conditional_losses_245037l$%7?4
-?*
(?%
inputs?????????00
? "-?*
#? 
0?????????00 
? ?
*__inference_conv2d_70_layer_call_fn_245046_$%7?4
-?*
(?%
inputs?????????00
? " ??????????00 ?
E__inference_conv2d_71_layer_call_and_return_conditional_losses_245221l?@7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0????????? 
? ?
*__inference_conv2d_71_layer_call_fn_245230_?@7?4
-?*
(?%
inputs????????? 
? " ?????????? ?
E__inference_conv2d_72_layer_call_and_return_conditional_losses_245405lZ[7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0?????????@
? ?
*__inference_conv2d_72_layer_call_fn_245414_Z[7?4
-?*
(?%
inputs????????? 
? " ??????????@?
E__inference_conv2d_73_layer_call_and_return_conditional_losses_245589luv7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
*__inference_conv2d_73_layer_call_fn_245598_uv7?4
-?*
(?%
inputs?????????@
? " ??????????@?
D__inference_dense_24_layer_call_and_return_conditional_losses_245784`??0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
)__inference_dense_24_layer_call_fn_245793S??0?-
&?#
!?
inputs??????????
? "????????????
D__inference_dense_25_layer_call_and_return_conditional_losses_245895`??0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
)__inference_dense_25_layer_call_fn_245904S??0?-
&?#
!?
inputs??????????
? "????????????
D__inference_dense_26_layer_call_and_return_conditional_losses_246006_??0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? 
)__inference_dense_26_layer_call_fn_246015R??0?-
&?#
!?
inputs??????????
? "???????????
F__inference_dropout_51_layer_call_and_return_conditional_losses_245196l;?8
1?.
(?%
inputs????????? 
p
? "-?*
#? 
0????????? 
? ?
F__inference_dropout_51_layer_call_and_return_conditional_losses_245201l;?8
1?.
(?%
inputs????????? 
p 
? "-?*
#? 
0????????? 
? ?
+__inference_dropout_51_layer_call_fn_245206_;?8
1?.
(?%
inputs????????? 
p
? " ?????????? ?
+__inference_dropout_51_layer_call_fn_245211_;?8
1?.
(?%
inputs????????? 
p 
? " ?????????? ?
F__inference_dropout_52_layer_call_and_return_conditional_losses_245380l;?8
1?.
(?%
inputs????????? 
p
? "-?*
#? 
0????????? 
? ?
F__inference_dropout_52_layer_call_and_return_conditional_losses_245385l;?8
1?.
(?%
inputs????????? 
p 
? "-?*
#? 
0????????? 
? ?
+__inference_dropout_52_layer_call_fn_245390_;?8
1?.
(?%
inputs????????? 
p
? " ?????????? ?
+__inference_dropout_52_layer_call_fn_245395_;?8
1?.
(?%
inputs????????? 
p 
? " ?????????? ?
F__inference_dropout_53_layer_call_and_return_conditional_losses_245564l;?8
1?.
(?%
inputs?????????@
p
? "-?*
#? 
0?????????@
? ?
F__inference_dropout_53_layer_call_and_return_conditional_losses_245569l;?8
1?.
(?%
inputs?????????@
p 
? "-?*
#? 
0?????????@
? ?
+__inference_dropout_53_layer_call_fn_245574_;?8
1?.
(?%
inputs?????????@
p
? " ??????????@?
+__inference_dropout_53_layer_call_fn_245579_;?8
1?.
(?%
inputs?????????@
p 
? " ??????????@?
F__inference_dropout_54_layer_call_and_return_conditional_losses_245748l;?8
1?.
(?%
inputs?????????@
p
? "-?*
#? 
0?????????@
? ?
F__inference_dropout_54_layer_call_and_return_conditional_losses_245753l;?8
1?.
(?%
inputs?????????@
p 
? "-?*
#? 
0?????????@
? ?
+__inference_dropout_54_layer_call_fn_245758_;?8
1?.
(?%
inputs?????????@
p
? " ??????????@?
+__inference_dropout_54_layer_call_fn_245763_;?8
1?.
(?%
inputs?????????@
p 
? " ??????????@?
E__inference_flatten_5_layer_call_and_return_conditional_losses_245769a7?4
-?*
(?%
inputs?????????@
? "&?#
?
0??????????
? ?
*__inference_flatten_5_layer_call_fn_245774T7?4
-?*
(?%
inputs?????????@
? "????????????
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_242502?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_37_layer_call_fn_242508?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_242618?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_38_layer_call_fn_242624?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
L__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_242734?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_39_layer_call_fn_242740?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
L__inference_max_pooling2d_40_layer_call_and_return_conditional_losses_242850?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_40_layer_call_fn_242856?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
I__inference_sequential_10_layer_call_and_return_conditional_losses_243914?8$%/012?@JKLMZ[efghuv??????????????????H?E
>?;
1?.
conv2d_70_input?????????00
p

 
? "%?"
?
0?????????
? ?
I__inference_sequential_10_layer_call_and_return_conditional_losses_244023?8$%/012?@JKLMZ[efghuv??????????????????H?E
>?;
1?.
conv2d_70_input?????????00
p 

 
? "%?"
?
0?????????
? ?
I__inference_sequential_10_layer_call_and_return_conditional_losses_244714?8$%/012?@JKLMZ[efghuv????????????????????<
5?2
(?%
inputs?????????00
p

 
? "%?"
?
0?????????
? ?
I__inference_sequential_10_layer_call_and_return_conditional_losses_244865?8$%/012?@JKLMZ[efghuv????????????????????<
5?2
(?%
inputs?????????00
p 

 
? "%?"
?
0?????????
? ?
.__inference_sequential_10_layer_call_fn_244214?8$%/012?@JKLMZ[efghuv??????????????????H?E
>?;
1?.
conv2d_70_input?????????00
p

 
? "???????????
.__inference_sequential_10_layer_call_fn_244404?8$%/012?@JKLMZ[efghuv??????????????????H?E
>?;
1?.
conv2d_70_input?????????00
p 

 
? "???????????
.__inference_sequential_10_layer_call_fn_244946?8$%/012?@JKLMZ[efghuv????????????????????<
5?2
(?%
inputs?????????00
p

 
? "???????????
.__inference_sequential_10_layer_call_fn_245027?8$%/012?@JKLMZ[efghuv????????????????????<
5?2
(?%
inputs?????????00
p 

 
? "???????????
$__inference_signature_wrapper_244495?8$%/012?@JKLMZ[efghuv??????????????????S?P
? 
I?F
D
conv2d_70_input1?.
conv2d_70_input?????????00"=?:
8
activation_99'?$
activation_99?????????