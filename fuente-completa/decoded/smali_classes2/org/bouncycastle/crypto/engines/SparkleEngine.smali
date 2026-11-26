.class public Lorg/bouncycastle/crypto/engines/SparkleEngine;
.super Lorg/bouncycastle/crypto/engines/AEADBaseEngine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/engines/SparkleEngine$SparkleParameters;
    }
.end annotation


# static fields
.field private static final RCON:[I


# instance fields
.field private final CAP_MASK:I

.field private final KEY_WORDS:I

.field private final RATE_WORDS:I

.field private final SPARKLE_STEPS_BIG:I

.field private final SPARKLE_STEPS_SLIM:I

.field private final STATE_WORDS:I

.field private final TAG_WORDS:I

.field private final _A0:I

.field private final _A1:I

.field private final _M2:I

.field private final _M3:I

.field private encrypted:Z

.field private final k:[I

.field private final npub:[I

.field private final state:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    return-void

    :array_0
    .array-data 4
        -0x481eae9e
        -0x408ea780
        0x38b4da56
        0x324e7738
        -0x44ee7a15
        0x4f7c7b57
        -0x30405e38
        -0x3d4cd6c3
    .end array-data
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/engines/SparkleEngine$SparkleParameters;)V
    .locals 8

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;-><init>()V

    sget-object v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$SparkleParameters:[I

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/engines/SparkleEngine$SparkleParameters;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x7

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/16 v3, 0x100

    const/16 v4, 0x80

    if-eq p1, v1, :cond_3

    const/16 v5, 0xb

    const/16 v6, 0x180

    const/4 v7, 0x2

    if-eq p1, v7, :cond_2

    if-eq p1, v2, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/16 p1, 0x8

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_SLIM:I

    const/16 p1, 0xc

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_BIG:I

    const-string p1, "SCHWAEMM256-256"

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->algorithmName:Ljava/lang/String;

    const/16 p1, 0x200

    move v6, p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid definition of SCHWAEMM instance"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_SLIM:I

    iput v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_BIG:I

    const-string p1, "SCHWAEMM192-192"

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->algorithmName:Ljava/lang/String;

    const/16 v3, 0xc0

    :goto_0
    move p1, v3

    move v0, p1

    move v4, v0

    goto :goto_2

    :cond_2
    iput v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_SLIM:I

    iput v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_BIG:I

    const-string p1, "SCHWAEMM256-128"

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->algorithmName:Ljava/lang/String;

    move p1, v3

    move v0, v4

    goto :goto_1

    :cond_3
    iput v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_SLIM:I

    const/16 p1, 0xa

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_BIG:I

    const-string p1, "SCHWAEMM128-128"

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->algorithmName:Ljava/lang/String;

    move v6, v3

    move p1, v4

    move v0, p1

    :goto_1
    move v3, v0

    :goto_2
    ushr-int/lit8 v5, v3, 0x5

    iput v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->KEY_WORDS:I

    ushr-int/2addr v3, v2

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->KEY_SIZE:I

    ushr-int/lit8 v3, v4, 0x5

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->TAG_WORDS:I

    ushr-int/lit8 v3, v4, 0x3

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->MAC_SIZE:I

    ushr-int/lit8 v3, v6, 0x5

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->STATE_WORDS:I

    ushr-int/lit8 v4, p1, 0x5

    iput v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    ushr-int/2addr p1, v2

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->IV_SIZE:I

    ushr-int/lit8 p1, v0, 0x6

    ushr-int/lit8 v0, v0, 0x5

    if-le v4, v0, :cond_4

    sub-int/2addr v0, v1

    goto :goto_3

    :cond_4
    const/4 v0, -0x1

    :goto_3
    iput v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->CAP_MASK:I

    shl-int p1, v1, p1

    shl-int/lit8 v0, p1, 0x18

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->_A0:I

    xor-int/lit8 v0, p1, 0x1

    shl-int/lit8 v0, v0, 0x18

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->_A1:I

    xor-int/lit8 v0, p1, 0x2

    shl-int/lit8 v0, v0, 0x18

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->_M2:I

    xor-int/2addr p1, v2

    shl-int/lit8 p1, p1, 0x18

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->_M3:I

    new-array p1, v3, [I

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    new-array p1, v5, [I

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->k:[I

    new-array p1, v4, [I

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->npub:[I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->IV_SIZE:I

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->BlockSize:I

    iput p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->AADBufferSize:I

    sget-object p1, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ProcessingBufferType;->Buffered:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ProcessingBufferType;

    sget-object v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADOperatorType;->Default:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADOperatorType;

    sget-object v1, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;->Default:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;

    invoke-virtual {p0, p1, v0, v1}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->setInnerMembers(Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ProcessingBufferType;Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADOperatorType;Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;)V

    return-void
.end method

.method private static ELL(I)I
    .locals 2

    const/16 v0, 0x10

    invoke-static {p0, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v0

    const v1, 0xffff

    and-int/2addr p0, v1

    xor-int/2addr p0, v0

    return p0
.end method

.method private static sparkle_opt([II)V
    .locals 2

    array-length v0, p0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt16([II)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt12([II)V

    return-void

    :cond_2
    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt8([II)V

    return-void
.end method

.method public static sparkle_opt12(Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;[II)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p1, p2}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt12([II)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "This method is only for use by SparkleDigest"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static sparkle_opt12([II)V
    .locals 33

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    const/4 v4, 0x2

    aget v5, p0, v4

    const/4 v6, 0x3

    aget v7, p0, v6

    const/4 v8, 0x4

    aget v9, p0, v8

    const/4 v10, 0x5

    aget v11, p0, v10

    const/4 v12, 0x6

    aget v13, p0, v12

    const/4 v14, 0x7

    aget v15, p0, v14

    const/16 v16, 0x8

    aget v17, p0, v16

    const/16 v18, 0x9

    aget v19, p0, v18

    const/16 v20, 0xa

    aget v21, p0, v20

    const/16 v22, 0xb

    aget v23, p0, v22

    move/from16 v24, v23

    move/from16 v23, v2

    move/from16 v2, v24

    move/from16 v24, v4

    move/from16 v25, v6

    move/from16 v4, p1

    move v6, v0

    move/from16 v0, v19

    move/from16 v19, v6

    :goto_0
    if-ge v6, v4, :cond_0

    sget-object v26, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    and-int/lit8 v27, v6, 0x7

    aget v27, v26, v27

    xor-int v3, v3, v27

    xor-int/2addr v7, v6

    aget v27, v26, v19

    move/from16 v28, v8

    const/16 v8, 0x1f

    invoke-static {v3, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v29

    add-int v1, v1, v29

    move/from16 v29, v10

    const/16 v10, 0x18

    invoke-static {v1, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v30

    xor-int v3, v3, v30

    xor-int v1, v1, v27

    move/from16 v30, v12

    const/16 v12, 0x11

    invoke-static {v3, v12}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v31

    add-int v1, v1, v31

    invoke-static {v1, v12}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v31

    xor-int v3, v3, v31

    xor-int v1, v1, v27

    add-int/2addr v1, v3

    invoke-static {v1, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v31

    xor-int v3, v3, v31

    xor-int v1, v1, v27

    invoke-static {v3, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v31

    add-int v1, v1, v31

    move/from16 v31, v14

    const/16 v14, 0x10

    invoke-static {v1, v14}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v32

    xor-int v3, v3, v32

    xor-int v1, v1, v27

    aget v27, v26, v23

    invoke-static {v7, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v32

    add-int v5, v5, v32

    invoke-static {v5, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v32

    xor-int v7, v7, v32

    xor-int v5, v5, v27

    invoke-static {v7, v12}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v32

    add-int v5, v5, v32

    invoke-static {v5, v12}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v32

    xor-int v7, v7, v32

    xor-int v5, v5, v27

    add-int/2addr v5, v7

    invoke-static {v5, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v32

    xor-int v7, v7, v32

    xor-int v5, v5, v27

    invoke-static {v7, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v32

    add-int v5, v5, v32

    invoke-static {v5, v14}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v32

    xor-int v7, v7, v32

    xor-int v5, v5, v27

    aget v27, v26, v24

    invoke-static {v11, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v32

    add-int v9, v9, v32

    invoke-static {v9, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v32

    xor-int v11, v11, v32

    xor-int v9, v9, v27

    invoke-static {v11, v12}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v32

    add-int v9, v9, v32

    invoke-static {v9, v12}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v32

    xor-int v11, v11, v32

    xor-int v9, v9, v27

    add-int/2addr v9, v11

    invoke-static {v9, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v32

    xor-int v11, v11, v32

    xor-int v9, v9, v27

    invoke-static {v11, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v32

    add-int v9, v9, v32

    invoke-static {v9, v14}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v32

    xor-int v11, v11, v32

    xor-int v9, v9, v27

    aget v27, v26, v25

    invoke-static {v15, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v32

    add-int v13, v13, v32

    invoke-static {v13, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v32

    xor-int v15, v15, v32

    xor-int v13, v13, v27

    invoke-static {v15, v12}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v32

    add-int v13, v13, v32

    invoke-static {v13, v12}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v32

    xor-int v15, v15, v32

    xor-int v13, v13, v27

    add-int/2addr v13, v15

    invoke-static {v13, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v32

    xor-int v15, v15, v32

    xor-int v13, v13, v27

    invoke-static {v15, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v32

    add-int v13, v13, v32

    invoke-static {v13, v14}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v32

    xor-int v15, v15, v32

    xor-int v13, v13, v27

    aget v27, v26, v28

    invoke-static {v0, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v32

    add-int v14, v17, v32

    invoke-static {v14, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v17

    xor-int v0, v0, v17

    xor-int v14, v14, v27

    invoke-static {v0, v12}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v17

    add-int v14, v14, v17

    invoke-static {v14, v12}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v17

    xor-int v0, v0, v17

    xor-int v14, v14, v27

    add-int/2addr v14, v0

    invoke-static {v14, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v17

    xor-int v0, v0, v17

    xor-int v14, v14, v27

    invoke-static {v0, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v17

    add-int v14, v14, v17

    const/16 v12, 0x10

    invoke-static {v14, v12}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v17

    xor-int v0, v0, v17

    xor-int v12, v14, v27

    aget v14, v26, v29

    invoke-static {v2, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v17

    add-int v8, v21, v17

    invoke-static {v8, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v17

    xor-int v2, v2, v17

    xor-int/2addr v8, v14

    const/16 v10, 0x11

    invoke-static {v2, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v17

    add-int v8, v8, v17

    invoke-static {v8, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v10

    xor-int/2addr v2, v10

    xor-int/2addr v8, v14

    add-int/2addr v8, v2

    const/16 v10, 0x1f

    invoke-static {v8, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v10

    xor-int/2addr v2, v10

    xor-int/2addr v8, v14

    const/16 v10, 0x18

    invoke-static {v2, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v10

    add-int/2addr v8, v10

    const/16 v10, 0x10

    invoke-static {v8, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v10

    xor-int/2addr v2, v10

    xor-int/2addr v8, v14

    xor-int v10, v1, v5

    xor-int/2addr v10, v9

    invoke-static {v10}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->ELL(I)I

    move-result v10

    xor-int v14, v3, v7

    xor-int/2addr v14, v11

    invoke-static {v14}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->ELL(I)I

    move-result v14

    xor-int/2addr v13, v1

    xor-int/2addr v15, v3

    xor-int/2addr v12, v5

    xor-int/2addr v0, v7

    xor-int/2addr v8, v9

    xor-int/2addr v2, v11

    xor-int/2addr v12, v14

    xor-int/2addr v0, v10

    xor-int/2addr v8, v14

    xor-int/2addr v2, v10

    xor-int/2addr v13, v14

    xor-int/2addr v10, v15

    add-int/lit8 v6, v6, 0x1

    move v15, v3

    move/from16 v17, v5

    move v5, v8

    move/from16 v21, v9

    move v9, v13

    move/from16 v8, v28

    move/from16 v14, v31

    move v3, v0

    move v13, v1

    move v0, v7

    move v1, v12

    move/from16 v12, v30

    move v7, v2

    move v2, v11

    move v11, v10

    move/from16 v10, v29

    goto/16 :goto_0

    :cond_0
    move/from16 v28, v8

    move/from16 v29, v10

    move/from16 v30, v12

    move/from16 v31, v14

    aput v1, p0, v19

    aput v3, p0, v23

    aput v5, p0, v24

    aput v7, p0, v25

    aput v9, p0, v28

    aput v11, p0, v29

    aput v13, p0, v30

    aput v15, p0, v31

    aput v17, p0, v16

    aput v0, p0, v18

    aput v21, p0, v20

    aput v2, p0, v22

    return-void
.end method

.method public static sparkle_opt16(Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;[II)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p1, p2}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt16([II)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "This method is only for use by SparkleDigest"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static sparkle_opt16([II)V
    .locals 43

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    const/4 v4, 0x2

    aget v5, p0, v4

    const/4 v6, 0x3

    aget v7, p0, v6

    const/4 v8, 0x4

    aget v9, p0, v8

    const/4 v10, 0x5

    aget v11, p0, v10

    const/4 v12, 0x6

    aget v13, p0, v12

    const/4 v14, 0x7

    aget v15, p0, v14

    const/16 v16, 0x8

    aget v17, p0, v16

    const/16 v18, 0x9

    aget v19, p0, v18

    const/16 v20, 0xa

    aget v21, p0, v20

    const/16 v22, 0xb

    aget v23, p0, v22

    const/16 v24, 0xc

    aget v25, p0, v24

    const/16 v26, 0xd

    aget v27, p0, v26

    const/16 v28, 0xe

    aget v29, p0, v28

    const/16 v30, 0xf

    aget v31, p0, v30

    move/from16 v32, v23

    move/from16 v23, v2

    move/from16 v2, v32

    move/from16 v32, v27

    move/from16 v27, v4

    move/from16 v4, v32

    move/from16 v32, v31

    move/from16 v31, v6

    move/from16 v6, v32

    move/from16 v32, v8

    move/from16 v33, v10

    move/from16 v8, p1

    move v10, v0

    move/from16 v0, v19

    move/from16 v19, v10

    :goto_0
    if-ge v10, v8, :cond_0

    sget-object v34, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    and-int/lit8 v35, v10, 0x7

    aget v35, v34, v35

    xor-int v3, v3, v35

    xor-int/2addr v7, v10

    aget v35, v34, v19

    move/from16 v36, v12

    const/16 v12, 0x1f

    invoke-static {v3, v12}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v37

    add-int v1, v1, v37

    move/from16 v37, v14

    const/16 v14, 0x18

    invoke-static {v1, v14}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v38

    xor-int v3, v3, v38

    xor-int v1, v1, v35

    const/16 v14, 0x11

    invoke-static {v3, v14}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v39

    add-int v1, v1, v39

    invoke-static {v1, v14}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v39

    xor-int v3, v3, v39

    xor-int v1, v1, v35

    add-int/2addr v1, v3

    invoke-static {v1, v12}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v39

    xor-int v3, v3, v39

    xor-int v1, v1, v35

    const/16 v14, 0x18

    invoke-static {v3, v14}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v38

    add-int v1, v1, v38

    const/16 v14, 0x10

    invoke-static {v1, v14}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v40

    xor-int v3, v3, v40

    xor-int v1, v1, v35

    aget v35, v34, v23

    invoke-static {v7, v12}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v40

    add-int v5, v5, v40

    const/16 v14, 0x18

    invoke-static {v5, v14}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v41

    xor-int v7, v7, v41

    xor-int v5, v5, v35

    const/16 v14, 0x11

    invoke-static {v7, v14}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v39

    add-int v5, v5, v39

    invoke-static {v5, v14}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v41

    xor-int v7, v7, v41

    xor-int v5, v5, v35

    add-int/2addr v5, v7

    invoke-static {v5, v12}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v14

    xor-int/2addr v7, v14

    xor-int v5, v5, v35

    const/16 v14, 0x18

    invoke-static {v7, v14}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v38

    add-int v5, v5, v38

    const/16 v14, 0x10

    invoke-static {v5, v14}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v41

    xor-int v7, v7, v41

    xor-int v5, v5, v35

    aget v14, v34, v27

    invoke-static {v11, v12}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v35

    add-int v9, v9, v35

    const/16 v12, 0x18

    invoke-static {v9, v12}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v41

    xor-int v11, v11, v41

    xor-int/2addr v9, v14

    const/16 v12, 0x11

    invoke-static {v11, v12}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v39

    add-int v9, v9, v39

    invoke-static {v9, v12}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v41

    xor-int v11, v11, v41

    xor-int/2addr v9, v14

    add-int/2addr v9, v11

    const/16 v12, 0x1f

    invoke-static {v9, v12}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v35

    xor-int v11, v11, v35

    xor-int/2addr v9, v14

    const/16 v12, 0x18

    invoke-static {v11, v12}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v38

    add-int v9, v9, v38

    const/16 v12, 0x10

    invoke-static {v9, v12}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v41

    xor-int v11, v11, v41

    xor-int/2addr v9, v14

    aget v12, v34, v31

    const/16 v14, 0x1f

    invoke-static {v15, v14}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v35

    add-int v13, v13, v35

    const/16 v14, 0x18

    invoke-static {v13, v14}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v41

    xor-int v14, v15, v41

    xor-int/2addr v13, v12

    const/16 v15, 0x11

    invoke-static {v14, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v39

    add-int v13, v13, v39

    invoke-static {v13, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v41

    xor-int v14, v14, v41

    xor-int/2addr v13, v12

    add-int/2addr v13, v14

    const/16 v15, 0x1f

    invoke-static {v13, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v35

    xor-int v14, v14, v35

    xor-int/2addr v13, v12

    const/16 v15, 0x18

    invoke-static {v14, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v38

    add-int v13, v13, v38

    const/16 v15, 0x10

    invoke-static {v13, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v41

    xor-int v14, v14, v41

    xor-int/2addr v12, v13

    aget v13, v34, v32

    const/16 v15, 0x1f

    invoke-static {v0, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v35

    add-int v15, v17, v35

    move/from16 v35, v0

    const/16 v0, 0x18

    invoke-static {v15, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v17

    xor-int v0, v35, v17

    xor-int/2addr v15, v13

    move/from16 v42, v1

    const/16 v1, 0x11

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v17

    add-int v15, v15, v17

    invoke-static {v15, v1}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v17

    xor-int v0, v0, v17

    xor-int v1, v15, v13

    add-int/2addr v1, v0

    const/16 v15, 0x1f

    invoke-static {v1, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v17

    xor-int v0, v0, v17

    xor-int/2addr v1, v13

    const/16 v15, 0x18

    invoke-static {v0, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v17

    add-int v1, v1, v17

    const/16 v15, 0x10

    invoke-static {v1, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v17

    xor-int v0, v0, v17

    xor-int/2addr v1, v13

    aget v13, v34, v33

    const/16 v15, 0x1f

    invoke-static {v2, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v17

    add-int v15, v21, v17

    move/from16 v17, v0

    const/16 v0, 0x18

    invoke-static {v15, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v21

    xor-int v0, v2, v21

    xor-int v2, v15, v13

    const/16 v15, 0x11

    invoke-static {v0, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v21

    add-int v2, v2, v21

    invoke-static {v2, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v21

    xor-int v0, v0, v21

    xor-int/2addr v2, v13

    add-int/2addr v2, v0

    const/16 v15, 0x1f

    invoke-static {v2, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v21

    xor-int v0, v0, v21

    xor-int/2addr v2, v13

    const/16 v15, 0x18

    invoke-static {v0, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v21

    add-int v2, v2, v21

    const/16 v15, 0x10

    invoke-static {v2, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v21

    xor-int v0, v0, v21

    xor-int/2addr v2, v13

    aget v13, v34, v36

    const/16 v15, 0x1f

    invoke-static {v4, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v21

    add-int v15, v25, v21

    move/from16 v21, v0

    const/16 v0, 0x18

    invoke-static {v15, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v25

    xor-int v0, v4, v25

    xor-int v4, v15, v13

    const/16 v15, 0x11

    invoke-static {v0, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v25

    add-int v4, v4, v25

    invoke-static {v4, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v25

    xor-int v0, v0, v25

    xor-int/2addr v4, v13

    add-int/2addr v4, v0

    const/16 v15, 0x1f

    invoke-static {v4, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v25

    xor-int v0, v0, v25

    xor-int/2addr v4, v13

    const/16 v15, 0x18

    invoke-static {v0, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v25

    add-int v4, v4, v25

    const/16 v15, 0x10

    invoke-static {v4, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v25

    xor-int v0, v0, v25

    xor-int/2addr v4, v13

    aget v13, v34, v37

    const/16 v15, 0x1f

    invoke-static {v6, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v25

    add-int v15, v29, v25

    move/from16 v25, v0

    const/16 v0, 0x18

    invoke-static {v15, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v29

    xor-int v0, v6, v29

    xor-int v6, v15, v13

    const/16 v15, 0x11

    invoke-static {v0, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v29

    add-int v6, v6, v29

    invoke-static {v6, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v15

    xor-int/2addr v0, v15

    xor-int/2addr v6, v13

    add-int/2addr v6, v0

    const/16 v15, 0x1f

    invoke-static {v6, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v15

    xor-int/2addr v0, v15

    xor-int/2addr v6, v13

    const/16 v15, 0x18

    invoke-static {v0, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v15

    add-int/2addr v6, v15

    const/16 v15, 0x10

    invoke-static {v6, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v15

    xor-int/2addr v0, v15

    xor-int/2addr v6, v13

    xor-int v13, v42, v5

    xor-int/2addr v13, v9

    xor-int/2addr v13, v12

    invoke-static {v13}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->ELL(I)I

    move-result v13

    xor-int v15, v3, v7

    xor-int/2addr v15, v11

    xor-int/2addr v15, v14

    invoke-static {v15}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->ELL(I)I

    move-result v15

    xor-int v1, v42, v1

    xor-int v17, v3, v17

    xor-int/2addr v2, v5

    xor-int v21, v7, v21

    xor-int/2addr v4, v9

    xor-int v25, v11, v25

    xor-int/2addr v6, v12

    xor-int/2addr v0, v14

    xor-int/2addr v2, v15

    xor-int v21, v21, v13

    xor-int/2addr v4, v15

    xor-int v25, v25, v13

    xor-int/2addr v6, v15

    xor-int/2addr v0, v13

    xor-int/2addr v1, v15

    xor-int v15, v17, v13

    add-int/lit8 v10, v10, 0x1

    move v13, v11

    move v11, v0

    move v0, v3

    move/from16 v3, v21

    move/from16 v21, v5

    move v5, v4

    move v4, v13

    move v13, v1

    move v1, v2

    move v2, v7

    move/from16 v29, v12

    move/from16 v7, v25

    move/from16 v12, v36

    move/from16 v17, v42

    move/from16 v25, v9

    move v9, v6

    move v6, v14

    move/from16 v14, v37

    goto/16 :goto_0

    :cond_0
    move/from16 v35, v0

    move/from16 v36, v12

    move/from16 v37, v14

    aput v1, p0, v19

    aput v3, p0, v23

    aput v5, p0, v27

    aput v7, p0, v31

    aput v9, p0, v32

    aput v11, p0, v33

    aput v13, p0, v36

    aput v15, p0, v37

    aput v17, p0, v16

    aput v35, p0, v18

    aput v21, p0, v20

    aput v2, p0, v22

    aput v25, p0, v24

    aput v4, p0, v26

    aput v29, p0, v28

    aput v6, p0, v30

    return-void
.end method

.method static sparkle_opt8([II)V
    .locals 25

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    const/4 v4, 0x2

    aget v5, p0, v4

    const/4 v6, 0x3

    aget v7, p0, v6

    const/4 v8, 0x4

    aget v9, p0, v8

    const/4 v10, 0x5

    aget v11, p0, v10

    const/4 v12, 0x6

    aget v13, p0, v12

    const/4 v14, 0x7

    aget v15, p0, v14

    move/from16 v16, v0

    move/from16 v17, v2

    move/from16 v0, p1

    move/from16 v2, v16

    :goto_0
    if-ge v2, v0, :cond_0

    sget-object v18, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    and-int/lit8 v19, v2, 0x7

    aget v19, v18, v19

    xor-int v3, v3, v19

    xor-int/2addr v7, v2

    aget v19, v18, v16

    move/from16 v20, v4

    const/16 v4, 0x1f

    invoke-static {v3, v4}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v21

    add-int v1, v1, v21

    move/from16 v21, v6

    const/16 v6, 0x18

    invoke-static {v1, v6}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v22

    xor-int v3, v3, v22

    xor-int v1, v1, v19

    move/from16 v22, v8

    const/16 v8, 0x11

    invoke-static {v3, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v23

    add-int v1, v1, v23

    invoke-static {v1, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v23

    xor-int v3, v3, v23

    xor-int v1, v1, v19

    add-int/2addr v1, v3

    invoke-static {v1, v4}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v23

    xor-int v3, v3, v23

    xor-int v1, v1, v19

    invoke-static {v3, v6}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v23

    add-int v1, v1, v23

    move/from16 v23, v10

    const/16 v10, 0x10

    invoke-static {v1, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v24

    xor-int v3, v3, v24

    xor-int v1, v1, v19

    aget v19, v18, v17

    invoke-static {v7, v4}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v24

    add-int v5, v5, v24

    invoke-static {v5, v6}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v24

    xor-int v7, v7, v24

    xor-int v5, v5, v19

    invoke-static {v7, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v24

    add-int v5, v5, v24

    invoke-static {v5, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v24

    xor-int v7, v7, v24

    xor-int v5, v5, v19

    add-int/2addr v5, v7

    invoke-static {v5, v4}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v24

    xor-int v7, v7, v24

    xor-int v5, v5, v19

    invoke-static {v7, v6}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v24

    add-int v5, v5, v24

    invoke-static {v5, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v24

    xor-int v7, v7, v24

    xor-int v5, v5, v19

    aget v19, v18, v20

    invoke-static {v11, v4}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v24

    add-int v9, v9, v24

    invoke-static {v9, v6}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v24

    xor-int v11, v11, v24

    xor-int v9, v9, v19

    invoke-static {v11, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v24

    add-int v9, v9, v24

    invoke-static {v9, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v24

    xor-int v11, v11, v24

    xor-int v9, v9, v19

    add-int/2addr v9, v11

    invoke-static {v9, v4}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v24

    xor-int v11, v11, v24

    xor-int v9, v9, v19

    invoke-static {v11, v6}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v24

    add-int v9, v9, v24

    invoke-static {v9, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v24

    xor-int v11, v11, v24

    xor-int v9, v9, v19

    aget v18, v18, v21

    invoke-static {v15, v4}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v19

    add-int v13, v13, v19

    invoke-static {v13, v6}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v19

    xor-int v15, v15, v19

    xor-int v13, v13, v18

    invoke-static {v15, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v19

    add-int v13, v13, v19

    invoke-static {v13, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v8

    xor-int/2addr v8, v15

    xor-int v13, v13, v18

    add-int/2addr v13, v8

    invoke-static {v13, v4}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v4

    xor-int/2addr v4, v8

    xor-int v8, v13, v18

    invoke-static {v4, v6}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v6

    add-int/2addr v8, v6

    invoke-static {v8, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v6

    xor-int/2addr v4, v6

    xor-int v6, v8, v18

    xor-int v8, v1, v5

    invoke-static {v8}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->ELL(I)I

    move-result v8

    xor-int v10, v3, v7

    invoke-static {v10}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->ELL(I)I

    move-result v10

    xor-int/2addr v9, v1

    xor-int/2addr v11, v3

    xor-int/2addr v6, v5

    xor-int/2addr v4, v7

    xor-int/2addr v6, v10

    xor-int/2addr v4, v8

    xor-int/2addr v9, v10

    xor-int/2addr v8, v11

    add-int/lit8 v2, v2, 0x1

    move v11, v3

    move v3, v4

    move v13, v5

    move v15, v7

    move v7, v8

    move v5, v9

    move/from16 v4, v20

    move/from16 v8, v22

    move/from16 v10, v23

    move v9, v1

    move v1, v6

    move/from16 v6, v21

    goto/16 :goto_0

    :cond_0
    move/from16 v20, v4

    move/from16 v21, v6

    move/from16 v22, v8

    move/from16 v23, v10

    aput v1, p0, v16

    aput v3, p0, v17

    aput v5, p0, v20

    aput v7, p0, v21

    aput v9, p0, v22

    aput v11, p0, v23

    aput v13, p0, v12

    aput v15, p0, v14

    return-void
.end method


# virtual methods
.method public bridge synthetic doFinal([BI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->doFinal([BI)I

    move-result p1

    return p1
.end method

.method protected finishAAD(Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->finishAAD2(Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;)V

    return-void
.end method

.method public bridge synthetic getAlgorithmName()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIVBytesSize()I
    .locals 1

    invoke-super {p0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->getIVBytesSize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getKeyBytesSize()I
    .locals 1

    invoke-super {p0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->getKeyBytesSize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMac()[B
    .locals 1

    invoke-super {p0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->getMac()[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOutputSize(I)I
    .locals 0

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->getOutputSize(I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getUpdateOutputSize(I)I
    .locals 0

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->getUpdateOutputSize(I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method protected init([B[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->k:[I

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[I)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->npub:[I

    invoke-static {p2, v1, p1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[I)V

    return-void
.end method

.method public bridge synthetic processAADByte(B)V
    .locals 0

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->processAADByte(B)V

    return-void
.end method

.method public bridge synthetic processAADBytes([BII)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->processAADBytes([BII)V

    return-void
.end method

.method protected processBufferAAD([BI)V
    .locals 9

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    div-int/lit8 v2, v1, 0x2

    if-ge v0, v2, :cond_0

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    aget v3, v2, v0

    aget v2, v2, v1

    mul-int/lit8 v4, v0, 0x4

    add-int/2addr v4, p2

    invoke-static {p1, v4}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    mul-int/lit8 v5, v1, 0x4

    add-int/2addr v5, p2

    invoke-static {p1, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    xor-int/2addr v4, v2

    iget v7, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    add-int v8, v7, v0

    aget v8, v6, v8

    xor-int/2addr v4, v8

    aput v4, v6, v0

    xor-int/2addr v2, v3

    xor-int/2addr v2, v5

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->CAP_MASK:I

    and-int/2addr v3, v1

    add-int/2addr v7, v3

    aget v3, v6, v7

    xor-int/2addr v2, v3

    aput v2, v6, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget p2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_SLIM:I

    invoke-static {p1, p2}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt([II)V

    return-void
.end method

.method protected processBufferDecrypt([BI[BI)V
    .locals 13

    move-object/from16 v0, p3

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    div-int/lit8 v3, v2, 0x2

    if-ge v1, v3, :cond_0

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    aget v4, v3, v1

    aget v3, v3, v2

    mul-int/lit8 v5, v1, 0x4

    add-int v6, p2, v5

    invoke-static {p1, v6}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v6

    mul-int/lit8 v7, v2, 0x4

    add-int v8, p2, v7

    invoke-static {p1, v8}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v8

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    xor-int v10, v4, v3

    xor-int/2addr v10, v6

    iget v11, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    add-int v12, v11, v1

    aget v12, v9, v12

    xor-int/2addr v10, v12

    aput v10, v9, v1

    xor-int v10, v4, v8

    iget v12, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->CAP_MASK:I

    and-int/2addr v12, v2

    add-int/2addr v11, v12

    aget v11, v9, v11

    xor-int/2addr v10, v11

    aput v10, v9, v2

    xor-int v2, v6, v4

    add-int v5, p4, v5

    invoke-static {v2, v0, v5}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    xor-int v2, v8, v3

    add-int v7, p4, v7

    invoke-static {v2, v0, v7}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_SLIM:I

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt([II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->encrypted:Z

    return-void
.end method

.method protected processBufferEncrypt([BI[BI)V
    .locals 13

    move-object/from16 v0, p3

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    div-int/lit8 v3, v2, 0x2

    if-ge v1, v3, :cond_0

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    aget v4, v3, v1

    aget v3, v3, v2

    mul-int/lit8 v5, v1, 0x4

    add-int v6, p2, v5

    invoke-static {p1, v6}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v6

    mul-int/lit8 v7, v2, 0x4

    add-int v8, p2, v7

    invoke-static {p1, v8}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v8

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    xor-int v10, v3, v6

    iget v11, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    add-int v12, v11, v1

    aget v12, v9, v12

    xor-int/2addr v10, v12

    aput v10, v9, v1

    xor-int v10, v4, v3

    xor-int/2addr v10, v8

    iget v12, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->CAP_MASK:I

    and-int/2addr v12, v2

    add-int/2addr v11, v12

    aget v11, v9, v11

    xor-int/2addr v10, v11

    aput v10, v9, v2

    xor-int v2, v6, v4

    add-int v5, p4, v5

    invoke-static {v2, v0, v5}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    xor-int v2, v8, v3

    add-int v7, p4, v7

    invoke-static {v2, v0, v7}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_SLIM:I

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt([II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->encrypted:Z

    return-void
.end method

.method public bridge synthetic processByte(B[BI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->processByte(B[BI)I

    move-result p1

    return p1
.end method

.method public bridge synthetic processBytes([BII[BI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    invoke-super/range {p0 .. p5}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->processBytes([BII[BI)I

    move-result p1

    return p1
.end method

.method protected processFinalAAD()V
    .locals 9

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_aadPos:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->BlockSize:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->STATE_WORDS:I

    add-int/lit8 v1, v1, -0x1

    aget v3, v0, v1

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->_A0:I

    xor-int/2addr v3, v4

    aput v3, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_aad:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_aadPos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_aadPos:I

    const/16 v3, -0x80

    aput-byte v3, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_aad:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_aadPos:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->BlockSize:I

    invoke-static {v0, v1, v3, v2}, Lorg/bouncycastle/util/Arrays;->fill([BIIB)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->STATE_WORDS:I

    add-int/lit8 v1, v1, -0x1

    aget v3, v0, v1

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->_A1:I

    xor-int/2addr v3, v4

    aput v3, v0, v1

    :goto_0
    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    div-int/lit8 v1, v0, 0x2

    if-ge v2, v1, :cond_1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    aget v3, v1, v2

    aget v1, v1, v0

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_aad:[B

    mul-int/lit8 v5, v2, 0x4

    invoke-static {v4, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_aad:[B

    mul-int/lit8 v6, v0, 0x4

    invoke-static {v5, v6}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    xor-int/2addr v4, v1

    iget v7, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    add-int v8, v7, v2

    aget v8, v6, v8

    xor-int/2addr v4, v8

    aput v4, v6, v2

    xor-int/2addr v1, v3

    xor-int/2addr v1, v5

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->CAP_MASK:I

    and-int/2addr v3, v0

    add-int/2addr v7, v3

    aget v3, v6, v7

    xor-int/2addr v1, v3

    aput v1, v6, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_BIG:I

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt([II)V

    return-void
.end method

.method protected processFinalBlock([BI)V
    .locals 10

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->encrypted:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    if-lez v0, :cond_8

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->STATE_WORDS:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v0, v2

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    iget v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->IV_SIZE:I

    if-ge v4, v5, :cond_1

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->_M2:I

    goto :goto_0

    :cond_1
    iget v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->_M3:I

    :goto_0
    xor-int/2addr v3, v4

    aput v3, v0, v2

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    new-array v0, v0, [I

    move v2, v1

    :goto_1
    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    if-ge v2, v3, :cond_2

    ushr-int/lit8 v3, v2, 0x2

    aget v4, v0, v3

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    aget-byte v5, v5, v2

    and-int/lit16 v5, v5, 0xff

    and-int/lit8 v6, v2, 0x3

    shl-int/lit8 v6, v6, 0x3

    shl-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->IV_SIZE:I

    if-ge v2, v3, :cond_4

    iget-boolean v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->forEncryption:Z

    if-nez v2, :cond_3

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    and-int/lit8 v2, v2, 0x3

    shl-int/lit8 v2, v2, 0x3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    ushr-int/lit8 v3, v3, 0x2

    aget v4, v0, v3

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v6, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    ushr-int/lit8 v6, v6, 0x2

    aget v5, v5, v6

    ushr-int/2addr v5, v2

    shl-int v2, v5, v2

    or-int/2addr v2, v4

    aput v2, v0, v3

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    ushr-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    sub-int/2addr v4, v2

    invoke-static {v3, v2, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    ushr-int/lit8 v2, v2, 0x2

    aget v3, v0, v2

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    and-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x3

    const/16 v5, 0x80

    shl-int v4, v5, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    :cond_4
    move v2, v1

    :goto_2
    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    div-int/lit8 v4, v3, 0x2

    if-ge v2, v4, :cond_6

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    aget v5, v4, v2

    aget v4, v4, v3

    iget-boolean v6, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->forEncryption:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    aget v7, v0, v2

    xor-int/2addr v7, v4

    iget v8, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    add-int v9, v8, v2

    aget v9, v6, v9

    xor-int/2addr v7, v9

    aput v7, v6, v2

    xor-int v7, v5, v4

    aget v9, v0, v3

    xor-int/2addr v7, v9

    iget v9, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->CAP_MASK:I

    and-int/2addr v9, v3

    add-int/2addr v8, v9

    aget v8, v6, v8

    xor-int/2addr v7, v8

    aput v7, v6, v3

    goto :goto_3

    :cond_5
    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    xor-int v7, v5, v4

    aget v8, v0, v2

    xor-int/2addr v7, v8

    iget v8, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    add-int v9, v8, v2

    aget v9, v6, v9

    xor-int/2addr v7, v9

    aput v7, v6, v2

    aget v7, v0, v3

    xor-int/2addr v7, v5

    iget v9, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->CAP_MASK:I

    and-int/2addr v9, v3

    add-int/2addr v8, v9

    aget v8, v6, v8

    xor-int/2addr v7, v8

    aput v7, v6, v3

    :goto_3
    aget v6, v0, v2

    xor-int/2addr v5, v6

    aput v5, v0, v2

    aget v5, v0, v3

    xor-int/2addr v4, v5

    aput v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    move v2, v1

    :goto_4
    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    if-ge v2, v3, :cond_7

    add-int/lit8 v3, p2, 0x1

    ushr-int/lit8 v4, v2, 0x2

    aget v4, v0, v4

    and-int/lit8 v5, v2, 0x3

    shl-int/lit8 v5, v5, 0x3

    ushr-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, p2

    add-int/lit8 v2, v2, 0x1

    move p2, v3

    goto :goto_4

    :cond_7
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget p2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_BIG:I

    invoke-static {p1, p2}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt([II)V

    :cond_8
    move p1, v1

    :goto_5
    iget p2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->KEY_WORDS:I

    if-ge p1, p2, :cond_9

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    add-int/2addr v0, p1

    aget v2, p2, v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->k:[I

    aget v3, v3, p1

    xor-int/2addr v2, v3

    aput v2, p2, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_9
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget p2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->TAG_WORDS:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->mac:[B

    invoke-static {p1, p2, v0, v2, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([III[BI)V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    invoke-super {p0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->reset()V

    return-void
.end method

.method protected reset(Z)V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->encrypted:Z

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->npub:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->k:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->KEY_WORDS:I

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_BIG:I

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt([II)V

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->reset(Z)V

    return-void
.end method
