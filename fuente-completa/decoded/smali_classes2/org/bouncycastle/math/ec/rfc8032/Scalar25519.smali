.class abstract Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;
.super Ljava/lang/Object;


# static fields
.field private static final L:[I

.field private static final L0:I = -0x30a2c13

.field private static final L1:I = 0x12631a6

.field private static final L2:I = 0x79cd658

.field private static final L3:I = -0x6215d1

.field private static final L4:I = 0x14df

.field private static final LSq:[I

.field private static final M08L:J = 0xffL

.field private static final M28L:J = 0xfffffffL

.field private static final M32L:J = 0xffffffffL

.field private static final SCALAR_BYTES:I = 0x20

.field static final SIZE:I = 0x8

.field private static final TARGET_LENGTH:I = 0xfe


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->L:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->LSq:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x5cf5d3ed
        0x5812631a
        -0x5d08632a
        0x14def9de
        0x0
        0x0
        0x0
        0x10000000
    .end array-data

    :array_1
    .array-data 4
        -0x54ed7697
        -0x1d12097b
        0x2298a31d
        0x68039276
        -0x2de80a42
        0x3dceec73
        0x1b7c309a
        -0x5e4c66bf
        0x4b9eba7d    # 2.0804858E7f
        -0x34fdb39d    # -8539235.0f
        -0x2ba10c66
        0x29bdf3b
        0x0
        0x0
        0x0
        0x1000000
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkVar([B[I)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->decode([B[I)V

    sget-object p0, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->L:[I

    invoke-static {p1, p0}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static decode([B[I)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-static {p0, v0, p1, v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI[III)V

    return-void
.end method

.method static getOrderWnafVar(I[B)V
    .locals 1

    sget-object v0, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->L:[I

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Wnaf;->getSignedVar([II[B)V

    return-void
.end method

.method static multiply128Var([I[I[I)V
    .locals 4

    const/16 v0, 0xc

    new-array v1, v0, [I

    invoke-static {p0, p1, v1}, Lorg/bouncycastle/math/raw/Nat256;->mul128([I[I[I)V

    const/4 v2, 0x3

    aget p1, p1, v2

    const/4 v2, 0x0

    if-gez p1, :cond_0

    sget-object p1, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->L:[I

    const/4 v3, 0x4

    invoke-static {p1, v2, v1, v3, v2}, Lorg/bouncycastle/math/raw/Nat256;->addTo([II[III)I

    invoke-static {p0, v2, v1, v3, v2}, Lorg/bouncycastle/math/raw/Nat256;->subFrom([II[III)I

    :cond_0
    const/16 p0, 0x30

    new-array p0, p0, [B

    invoke-static {v1, v2, v0, p0, v2}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode32([III[BI)V

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->reduce384([B)[B

    move-result-object p0

    invoke-static {p0, p2}, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->decode([B[I)V

    return-void
.end method

.method static reduce384([B)[B
    .locals 48

    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/4 v6, 0x4

    invoke-static {v0, v6}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v7

    shl-int/2addr v7, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    const/4 v9, 0x7

    invoke-static {v0, v9}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v10

    int-to-long v10, v10

    and-long/2addr v10, v4

    const/16 v12, 0xb

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v12

    shl-int/2addr v12, v6

    int-to-long v12, v12

    and-long/2addr v12, v4

    const/16 v14, 0xe

    invoke-static {v0, v14}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v15

    move-wide/from16 v16, v4

    int-to-long v4, v15

    and-long v4, v4, v16

    const/16 v15, 0x12

    invoke-static {v0, v15}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v15

    shl-int/2addr v15, v6

    move/from16 v18, v6

    move-wide/from16 v19, v7

    int-to-long v6, v15

    and-long v6, v6, v16

    const/16 v8, 0x15

    invoke-static {v0, v8}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v15

    int-to-long v14, v15

    and-long v14, v14, v16

    const/16 v8, 0x19

    invoke-static {v0, v8}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v8

    shl-int/lit8 v8, v8, 0x4

    move-wide/from16 v21, v10

    int-to-long v9, v8

    and-long v8, v9, v16

    const/16 v10, 0x1c

    invoke-static {v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v11

    move/from16 v23, v10

    int-to-long v10, v11

    and-long v10, v10, v16

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    move-wide/from16 v24, v2

    int-to-long v1, v1

    and-long v26, v1, v16

    const/16 v3, 0x23

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v3

    move-wide/from16 v28, v1

    int-to-long v1, v3

    and-long v30, v1, v16

    const/16 v3, 0x27

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v32, v1

    int-to-long v1, v3

    and-long v34, v1, v16

    const/16 v3, 0x2a

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v3

    move-wide/from16 v36, v1

    int-to-long v1, v3

    and-long v38, v1, v16

    const/16 v3, 0x2e

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode16([BI)I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    move-wide/from16 v40, v1

    int-to-long v0, v0

    and-long v0, v0, v16

    shr-long v2, v38, v23

    add-long/2addr v0, v2

    const-wide/32 v2, 0xfffffff

    and-long v16, v40, v2

    const-wide/32 v38, -0x30a2c13

    mul-long v40, v0, v38

    sub-long v4, v4, v40

    const-wide/32 v40, 0x12631a6

    mul-long v42, v0, v40

    sub-long v6, v6, v42

    const-wide/32 v42, 0x79cd658

    mul-long v44, v0, v42

    sub-long v14, v14, v44

    const-wide/32 v44, -0x6215d1

    mul-long v46, v0, v44

    sub-long v8, v8, v46

    const-wide/16 v46, 0x14df

    mul-long v0, v0, v46

    sub-long/2addr v10, v0

    shr-long v0, v34, v23

    add-long v16, v16, v0

    and-long v0, v36, v2

    mul-long v34, v16, v38

    sub-long v12, v12, v34

    mul-long v34, v16, v40

    sub-long v4, v4, v34

    mul-long v34, v16, v42

    sub-long v6, v6, v34

    mul-long v34, v16, v44

    sub-long v14, v14, v34

    mul-long v16, v16, v46

    sub-long v8, v8, v16

    shr-long v16, v30, v23

    add-long v0, v0, v16

    and-long v16, v32, v2

    mul-long v30, v0, v38

    sub-long v21, v21, v30

    mul-long v30, v0, v40

    sub-long v12, v12, v30

    mul-long v30, v0, v42

    sub-long v4, v4, v30

    mul-long v30, v0, v44

    sub-long v6, v6, v30

    mul-long v0, v0, v46

    sub-long/2addr v14, v0

    shr-long v0, v26, v23

    add-long v16, v16, v0

    and-long v0, v28, v2

    mul-long v26, v16, v38

    sub-long v18, v19, v26

    mul-long v26, v16, v40

    sub-long v21, v21, v26

    mul-long v26, v16, v42

    sub-long v12, v12, v26

    mul-long v26, v16, v44

    sub-long v4, v4, v26

    mul-long v16, v16, v46

    sub-long v6, v6, v16

    shr-long v16, v8, v23

    add-long v10, v10, v16

    and-long/2addr v8, v2

    shr-long v16, v10, v23

    add-long v0, v0, v16

    and-long/2addr v10, v2

    const/16 v16, 0x1b

    ushr-long v16, v10, v16

    add-long v0, v0, v16

    mul-long v26, v0, v38

    sub-long v24, v24, v26

    mul-long v26, v0, v40

    sub-long v18, v18, v26

    mul-long v26, v0, v42

    sub-long v21, v21, v26

    mul-long v26, v0, v44

    sub-long v12, v12, v26

    mul-long v0, v0, v46

    sub-long/2addr v4, v0

    shr-long v0, v24, v23

    add-long v18, v18, v0

    and-long v0, v24, v2

    shr-long v24, v18, v23

    add-long v21, v21, v24

    and-long v18, v18, v2

    shr-long v24, v21, v23

    add-long v12, v12, v24

    and-long v21, v21, v2

    shr-long v24, v12, v23

    add-long v4, v4, v24

    and-long/2addr v12, v2

    shr-long v24, v4, v23

    add-long v6, v6, v24

    and-long/2addr v4, v2

    shr-long v24, v6, v23

    add-long v14, v14, v24

    and-long/2addr v6, v2

    shr-long v24, v14, v23

    add-long v8, v8, v24

    and-long/2addr v14, v2

    shr-long v24, v8, v23

    add-long v10, v10, v24

    and-long/2addr v8, v2

    shr-long v24, v10, v23

    and-long/2addr v10, v2

    sub-long v24, v24, v16

    and-long v16, v24, v38

    add-long v0, v0, v16

    and-long v16, v24, v40

    add-long v18, v18, v16

    and-long v16, v24, v42

    add-long v21, v21, v16

    and-long v16, v24, v44

    add-long v12, v12, v16

    and-long v16, v24, v46

    add-long v4, v4, v16

    shr-long v16, v0, v23

    add-long v18, v18, v16

    and-long/2addr v0, v2

    shr-long v16, v18, v23

    add-long v21, v21, v16

    and-long v16, v18, v2

    shr-long v18, v21, v23

    add-long v12, v12, v18

    and-long v18, v21, v2

    shr-long v21, v12, v23

    add-long v4, v4, v21

    and-long/2addr v12, v2

    shr-long v21, v4, v23

    add-long v6, v6, v21

    and-long/2addr v4, v2

    shr-long v21, v6, v23

    add-long v14, v14, v21

    and-long/2addr v6, v2

    shr-long v21, v14, v23

    add-long v8, v8, v21

    and-long/2addr v14, v2

    shr-long v21, v8, v23

    add-long v10, v10, v21

    and-long/2addr v2, v8

    const/16 v8, 0x40

    new-array v8, v8, [B

    shl-long v16, v16, v23

    or-long v0, v0, v16

    const/4 v9, 0x0

    invoke-static {v0, v1, v8, v9}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    shl-long v0, v12, v23

    or-long v0, v18, v0

    const/4 v9, 0x7

    invoke-static {v0, v1, v8, v9}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    shl-long v0, v6, v23

    or-long/2addr v0, v4

    const/16 v4, 0xe

    invoke-static {v0, v1, v8, v4}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    shl-long v0, v2, v23

    or-long/2addr v0, v14

    const/16 v2, 0x15

    invoke-static {v0, v1, v8, v2}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    long-to-int v0, v10

    move/from16 v1, v23

    invoke-static {v0, v8, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode32(I[BI)V

    return-object v8
.end method

.method static reduce512([B)[B
    .locals 55

    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/4 v6, 0x4

    invoke-static {v0, v6}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v7

    shl-int/2addr v7, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    const/4 v9, 0x7

    invoke-static {v0, v9}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v10

    int-to-long v10, v10

    and-long/2addr v10, v4

    const/16 v12, 0xb

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v12

    shl-int/2addr v12, v6

    int-to-long v12, v12

    and-long/2addr v12, v4

    const/16 v14, 0xe

    invoke-static {v0, v14}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v15

    move-wide/from16 v16, v4

    int-to-long v4, v15

    and-long v4, v4, v16

    const/16 v15, 0x12

    invoke-static {v0, v15}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v15

    shl-int/2addr v15, v6

    move/from16 v18, v6

    move-wide/from16 v19, v7

    int-to-long v6, v15

    and-long v6, v6, v16

    const/16 v8, 0x15

    invoke-static {v0, v8}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v15

    int-to-long v14, v15

    and-long v14, v14, v16

    const/16 v8, 0x19

    invoke-static {v0, v8}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v8

    shl-int/lit8 v8, v8, 0x4

    move-wide/from16 v21, v10

    int-to-long v9, v8

    and-long v8, v9, v16

    const/16 v10, 0x1c

    invoke-static {v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v11

    move/from16 v23, v10

    int-to-long v10, v11

    and-long v10, v10, v16

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v24

    shl-int/lit8 v1, v24, 0x4

    move-wide/from16 v25, v2

    int-to-long v1, v1

    and-long v1, v1, v16

    const/16 v3, 0x23

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v3

    move-wide/from16 v27, v1

    int-to-long v1, v3

    and-long v1, v1, v16

    const/16 v3, 0x27

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v29, v1

    int-to-long v1, v3

    and-long v1, v1, v16

    const/16 v3, 0x2a

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v3

    move-wide/from16 v31, v1

    int-to-long v1, v3

    and-long v1, v1, v16

    const/16 v3, 0x2e

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v33, v1

    int-to-long v1, v3

    and-long v1, v1, v16

    const/16 v3, 0x31

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v3

    move-wide/from16 v35, v1

    int-to-long v1, v3

    and-long v37, v1, v16

    const/16 v3, 0x35

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v39, v1

    int-to-long v1, v3

    and-long v1, v1, v16

    const/16 v3, 0x38

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v3

    move-wide/from16 v41, v1

    int-to-long v1, v3

    and-long v43, v1, v16

    const/16 v3, 0x3c

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v45, v1

    int-to-long v0, v3

    and-long v0, v0, v16

    const/16 v2, 0x3f

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const-wide/16 v16, 0xff

    and-long v2, v2, v16

    const-wide/32 v16, -0x30a2c13

    mul-long v47, v2, v16

    sub-long v27, v27, v47

    const-wide/32 v47, 0x12631a6

    mul-long v49, v2, v47

    sub-long v29, v29, v49

    const-wide/32 v49, 0x79cd658

    mul-long v51, v2, v49

    sub-long v31, v31, v51

    const-wide/32 v51, -0x6215d1

    mul-long v53, v2, v51

    sub-long v33, v33, v53

    const-wide/16 v53, 0x14df

    mul-long v2, v2, v53

    sub-long v2, v35, v2

    shr-long v35, v43, v23

    add-long v0, v0, v35

    const-wide/32 v35, 0xfffffff

    and-long v43, v45, v35

    mul-long v45, v0, v16

    sub-long v10, v10, v45

    mul-long v45, v0, v47

    sub-long v27, v27, v45

    mul-long v45, v0, v49

    sub-long v29, v29, v45

    mul-long v45, v0, v51

    sub-long v31, v31, v45

    mul-long v0, v0, v53

    sub-long v33, v33, v0

    mul-long v0, v43, v16

    sub-long/2addr v8, v0

    mul-long v0, v43, v47

    sub-long/2addr v10, v0

    mul-long v0, v43, v49

    sub-long v27, v27, v0

    mul-long v0, v43, v51

    sub-long v29, v29, v0

    mul-long v43, v43, v53

    sub-long v31, v31, v43

    shr-long v0, v37, v23

    add-long v0, v41, v0

    and-long v37, v39, v35

    mul-long v39, v0, v16

    sub-long v14, v14, v39

    mul-long v39, v0, v47

    sub-long v8, v8, v39

    mul-long v39, v0, v49

    sub-long v10, v10, v39

    mul-long v39, v0, v51

    sub-long v27, v27, v39

    mul-long v0, v0, v53

    sub-long v29, v29, v0

    mul-long v0, v37, v16

    sub-long/2addr v6, v0

    mul-long v0, v37, v47

    sub-long/2addr v14, v0

    mul-long v0, v37, v49

    sub-long/2addr v8, v0

    mul-long v0, v37, v51

    sub-long/2addr v10, v0

    mul-long v37, v37, v53

    sub-long v27, v27, v37

    shr-long v0, v33, v23

    add-long/2addr v2, v0

    and-long v0, v33, v35

    mul-long v33, v2, v16

    sub-long v4, v4, v33

    mul-long v33, v2, v47

    sub-long v6, v6, v33

    mul-long v33, v2, v49

    sub-long v14, v14, v33

    mul-long v33, v2, v51

    sub-long v8, v8, v33

    mul-long v2, v2, v53

    sub-long/2addr v10, v2

    shr-long v2, v31, v23

    add-long/2addr v0, v2

    and-long v2, v31, v35

    mul-long v31, v0, v16

    sub-long v12, v12, v31

    mul-long v31, v0, v47

    sub-long v4, v4, v31

    mul-long v31, v0, v49

    sub-long v6, v6, v31

    mul-long v31, v0, v51

    sub-long v14, v14, v31

    mul-long v0, v0, v53

    sub-long/2addr v8, v0

    shr-long v0, v29, v23

    add-long/2addr v2, v0

    and-long v0, v29, v35

    mul-long v29, v2, v16

    sub-long v21, v21, v29

    mul-long v29, v2, v47

    sub-long v12, v12, v29

    mul-long v29, v2, v49

    sub-long v4, v4, v29

    mul-long v29, v2, v51

    sub-long v6, v6, v29

    mul-long v2, v2, v53

    sub-long/2addr v14, v2

    shr-long v2, v27, v23

    add-long/2addr v0, v2

    and-long v2, v27, v35

    mul-long v27, v0, v16

    sub-long v18, v19, v27

    mul-long v27, v0, v47

    sub-long v21, v21, v27

    mul-long v27, v0, v49

    sub-long v12, v12, v27

    mul-long v27, v0, v51

    sub-long v4, v4, v27

    mul-long v0, v0, v53

    sub-long/2addr v6, v0

    shr-long v0, v8, v23

    add-long/2addr v10, v0

    and-long v0, v8, v35

    shr-long v8, v10, v23

    add-long/2addr v2, v8

    and-long v8, v10, v35

    const/16 v10, 0x1b

    ushr-long v10, v8, v10

    add-long/2addr v2, v10

    mul-long v27, v2, v16

    sub-long v25, v25, v27

    mul-long v27, v2, v47

    sub-long v18, v18, v27

    mul-long v27, v2, v49

    sub-long v21, v21, v27

    mul-long v27, v2, v51

    sub-long v12, v12, v27

    mul-long v2, v2, v53

    sub-long/2addr v4, v2

    shr-long v2, v25, v23

    add-long v18, v18, v2

    and-long v2, v25, v35

    shr-long v25, v18, v23

    add-long v21, v21, v25

    and-long v18, v18, v35

    shr-long v25, v21, v23

    add-long v12, v12, v25

    and-long v21, v21, v35

    shr-long v25, v12, v23

    add-long v4, v4, v25

    and-long v12, v12, v35

    shr-long v25, v4, v23

    add-long v6, v6, v25

    and-long v4, v4, v35

    shr-long v25, v6, v23

    add-long v14, v14, v25

    and-long v6, v6, v35

    shr-long v25, v14, v23

    add-long v0, v0, v25

    and-long v14, v14, v35

    shr-long v25, v0, v23

    add-long v8, v8, v25

    and-long v0, v0, v35

    shr-long v25, v8, v23

    and-long v8, v8, v35

    sub-long v25, v25, v10

    and-long v10, v25, v16

    add-long/2addr v2, v10

    and-long v10, v25, v47

    add-long v18, v18, v10

    and-long v10, v25, v49

    add-long v21, v21, v10

    and-long v10, v25, v51

    add-long/2addr v12, v10

    and-long v10, v25, v53

    add-long/2addr v4, v10

    shr-long v10, v2, v23

    add-long v18, v18, v10

    and-long v2, v2, v35

    shr-long v10, v18, v23

    add-long v21, v21, v10

    and-long v10, v18, v35

    shr-long v16, v21, v23

    add-long v12, v12, v16

    and-long v16, v21, v35

    shr-long v18, v12, v23

    add-long v4, v4, v18

    and-long v12, v12, v35

    shr-long v18, v4, v23

    add-long v6, v6, v18

    and-long v4, v4, v35

    shr-long v18, v6, v23

    add-long v14, v14, v18

    and-long v6, v6, v35

    shr-long v18, v14, v23

    add-long v0, v0, v18

    and-long v14, v14, v35

    shr-long v18, v0, v23

    add-long v8, v8, v18

    and-long v0, v0, v35

    move-wide/from16 v18, v0

    const/16 v0, 0x20

    new-array v0, v0, [B

    shl-long v10, v10, v23

    or-long v1, v2, v10

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    shl-long v1, v12, v23

    or-long v1, v16, v1

    const/4 v3, 0x7

    invoke-static {v1, v2, v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    shl-long v1, v6, v23

    or-long/2addr v1, v4

    const/16 v3, 0xe

    invoke-static {v1, v2, v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    shl-long v1, v18, v23

    or-long/2addr v1, v14

    const/16 v3, 0x15

    invoke-static {v1, v2, v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    long-to-int v1, v8

    move/from16 v2, v23

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode32(I[BI)V

    return-object v0
.end method

.method static reduceBasisVar([I[I[I)Z
    .locals 20

    move-object/from16 v0, p0

    const/16 v1, 0x10

    new-array v2, v1, [I

    sget-object v3, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->LSq:[I

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v3, v1, [I

    invoke-static {v0, v3}, Lorg/bouncycastle/math/raw/Nat256;->square([I[I)V

    aget v5, v3, v4

    const/4 v6, 0x1

    add-int/2addr v5, v6

    aput v5, v3, v4

    new-array v11, v1, [I

    sget-object v5, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->L:[I

    invoke-static {v5, v0, v11}, Lorg/bouncycastle/math/raw/Nat256;->mul([I[I[I)V

    new-array v12, v1, [I

    const/4 v1, 0x4

    new-array v7, v1, [I

    invoke-static {v5, v4, v7, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v5, v1, [I

    new-array v8, v1, [I

    invoke-static {v0, v4, v8, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v0, v1, [I

    aput v6, v0, v4

    const/16 v9, 0xf

    invoke-static {v9, v3}, Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;->getBitLengthPositive(I[I)I

    move-result v10

    const/16 v13, 0x3f8

    move-object/from16 v19, v0

    move-object/from16 v17, v5

    move-object/from16 v16, v7

    move-object/from16 v18, v8

    move v7, v9

    move v0, v10

    move-object v9, v2

    move-object v10, v3

    :goto_0
    const/16 v2, 0xfe

    if-le v0, v2, :cond_3

    add-int/lit8 v13, v13, -0x1

    if-gez v13, :cond_0

    return v4

    :cond_0
    invoke-static {v7, v11}, Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;->getBitLength(I[I)I

    move-result v2

    sub-int/2addr v2, v0

    shr-int/lit8 v3, v2, 0x1f

    not-int v3, v3

    and-int v15, v2, v3

    aget v2, v11, v7

    move v8, v15

    if-gez v2, :cond_1

    invoke-static/range {v7 .. v12}, Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;->addShifted_NP(II[I[I[I[I)V

    const/4 v14, 0x3

    invoke-static/range {v14 .. v19}, Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;->addShifted_UV(II[I[I[I[I)V

    goto :goto_1

    :cond_1
    invoke-static/range {v7 .. v12}, Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;->subShifted_NP(II[I[I[I[I)V

    const/4 v14, 0x3

    invoke-static/range {v14 .. v19}, Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;->subShifted_UV(II[I[I[I[I)V

    :goto_1
    move-object/from16 v8, v18

    move-object/from16 v2, v19

    invoke-static {v7, v9, v10}, Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;->lessThan(I[I[I)Z

    move-result v3

    if-eqz v3, :cond_2

    ushr-int/lit8 v0, v0, 0x5

    invoke-static {v0, v9}, Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;->getBitLengthPositive(I[I)I

    move-result v3

    move-object v7, v10

    move-object v10, v9

    move-object v9, v7

    move v7, v0

    move v0, v3

    move-object/from16 v18, v16

    move-object/from16 v19, v17

    move-object/from16 v17, v2

    move-object/from16 v16, v8

    goto :goto_0

    :cond_2
    move-object/from16 v19, v2

    move-object/from16 v18, v8

    goto :goto_0

    :cond_3
    move-object/from16 v0, p1

    move-object/from16 v8, v18

    move-object/from16 v2, v19

    invoke-static {v8, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p2

    invoke-static {v2, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v6
.end method

.method static toSignedDigits(I[I)V
    .locals 3

    const/4 p0, 0x0

    aget p0, p1, p0

    not-int p0, p0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    sget-object v1, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->L:[I

    const/16 v2, 0x8

    invoke-static {v2, p0, v1, p1}, Lorg/bouncycastle/math/raw/Nat;->caddTo(II[I[I)I

    invoke-static {v2, p1, v0}, Lorg/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    return-void
.end method
