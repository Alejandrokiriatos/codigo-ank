.class public Lorg/bouncycastle/crypto/engines/GiftCofbEngine;
.super Lorg/bouncycastle/crypto/engines/AEADBaseEngine;


# static fields
.field private static final GIFT_RC:[B


# instance fields
.field private Y:[B

.field private input:[B

.field private k:[B

.field private npub:[B

.field private offset:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x28

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->GIFT_RC:[B

    return-void

    :array_0
    .array-data 1
        0x1t
        0x3t
        0x7t
        0xft
        0x1ft
        0x3et
        0x3dt
        0x3bt
        0x37t
        0x2ft
        0x1et
        0x3ct
        0x39t
        0x33t
        0x27t
        0xet
        0x1dt
        0x3at
        0x35t
        0x2bt
        0x16t
        0x2ct
        0x18t
        0x30t
        0x21t
        0x2t
        0x5t
        0xbt
        0x17t
        0x2et
        0x1ct
        0x38t
        0x31t
        0x23t
        0x6t
        0xdt
        0x1bt
        0x36t
        0x2dt
        0x1at
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->KEY_SIZE:I

    iput v0, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->IV_SIZE:I

    iput v0, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->MAC_SIZE:I

    iput v0, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->BlockSize:I

    iput v0, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->AADBufferSize:I

    const-string v0, "GIFT-COFB AEAD"

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->algorithmName:Ljava/lang/String;

    sget-object v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ProcessingBufferType;->Buffered:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ProcessingBufferType;

    sget-object v1, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADOperatorType;->Default:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADOperatorType;

    sget-object v2, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;->Counter:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;

    invoke-virtual {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->setInnerMembers(Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ProcessingBufferType;Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADOperatorType;Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;)V

    return-void
.end method

.method private double_half_block([B)V
    .locals 6

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x7

    ushr-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1b

    :goto_0
    if-ge v0, v2, :cond_0

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v0, 0x1

    aget-byte v5, p1, v4

    and-int/lit16 v5, v5, 0xff

    ushr-int/2addr v5, v2

    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    move v0, v4

    goto :goto_0

    :cond_0
    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x1

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    return-void
.end method

.method private giftb128([B[B[B)V
    .locals 30

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/16 v2, 0x8

    new-array v3, v2, [S

    const/4 v4, 0x0

    aget-byte v5, p1, v4

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    const/4 v6, 0x1

    aget-byte v7, p1, v6

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v5, v7

    const/4 v7, 0x2

    aget-byte v8, p1, v7

    and-int/lit16 v8, v8, 0xff

    shl-int/2addr v8, v2

    or-int/2addr v5, v8

    const/4 v8, 0x3

    aget-byte v9, p1, v8

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v5, v9

    aput v5, v1, v4

    aget-byte v5, p1, v0

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    const/4 v9, 0x5

    aget-byte v10, p1, v9

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v5, v10

    const/4 v10, 0x6

    aget-byte v11, p1, v10

    and-int/lit16 v11, v11, 0xff

    shl-int/2addr v11, v2

    or-int/2addr v5, v11

    const/4 v11, 0x7

    aget-byte v12, p1, v11

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v5, v12

    aput v5, v1, v6

    aget-byte v5, p1, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    const/16 v12, 0x9

    aget-byte v13, p1, v12

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    or-int/2addr v5, v13

    const/16 v13, 0xa

    aget-byte v14, p1, v13

    and-int/lit16 v14, v14, 0xff

    shl-int/2addr v14, v2

    or-int/2addr v5, v14

    const/16 v14, 0xb

    aget-byte v15, p1, v14

    and-int/lit16 v15, v15, 0xff

    or-int/2addr v5, v15

    aput v5, v1, v7

    const/16 v5, 0xc

    aget-byte v15, p1, v5

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x18

    const/16 v16, 0xd

    move/from16 v17, v0

    aget-byte v0, p1, v16

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v15

    const/16 v15, 0xe

    move/from16 v18, v2

    aget-byte v2, p1, v15

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    const/16 v19, 0xf

    aget-byte v2, p1, v19

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    aput v0, v1, v8

    aget-byte v0, p2, v4

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte v2, p2, v6

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    int-to-short v0, v0

    aput-short v0, v3, v4

    aget-byte v0, p2, v7

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte v2, p2, v8

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    int-to-short v0, v0

    aput-short v0, v3, v6

    aget-byte v0, p2, v17

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte v2, p2, v9

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    int-to-short v0, v0

    aput-short v0, v3, v7

    aget-byte v0, p2, v10

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte v2, p2, v11

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    int-to-short v0, v0

    aput-short v0, v3, v8

    aget-byte v0, p2, v18

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte v2, p2, v12

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    int-to-short v0, v0

    aput-short v0, v3, v17

    aget-byte v0, p2, v13

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte v2, p2, v14

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    int-to-short v0, v0

    aput-short v0, v3, v9

    aget-byte v0, p2, v5

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte v2, p2, v16

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    int-to-short v0, v0

    aput-short v0, v3, v10

    aget-byte v0, p2, v15

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte v2, p2, v19

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    int-to-short v0, v0

    aput-short v0, v3, v11

    move v0, v4

    :goto_0
    const/16 v2, 0x28

    if-ge v0, v2, :cond_0

    aget v2, v1, v6

    aget v20, v1, v4

    aget v21, v1, v7

    and-int v22, v20, v21

    xor-int v2, v2, v22

    aput v2, v1, v6

    aget v22, v1, v8

    and-int v23, v2, v22

    xor-int v20, v20, v23

    aput v20, v1, v4

    or-int v23, v20, v2

    xor-int v21, v21, v23

    aput v21, v1, v7

    move/from16 v23, v4

    xor-int v4, v22, v21

    aput v4, v1, v8

    xor-int/2addr v2, v4

    aput v2, v1, v6

    not-int v4, v4

    aput v4, v1, v8

    and-int v2, v20, v2

    xor-int v2, v21, v2

    aput v2, v1, v7

    aput v4, v1, v23

    aput v20, v1, v8

    const/16 v28, 0x2

    const/16 v29, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x3

    move-object/from16 v24, p0

    move/from16 v25, v4

    invoke-direct/range {v24 .. v29}, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->rowperm(IIIII)I

    move-result v2

    aput v2, v1, v23

    aget v25, v1, v6

    const/16 v28, 0x3

    const/16 v29, 0x2

    const/16 v26, 0x1

    const/16 v27, 0x0

    invoke-direct/range {v24 .. v29}, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->rowperm(IIIII)I

    move-result v2

    aput v2, v1, v6

    aget v25, v1, v7

    const/16 v28, 0x0

    const/16 v29, 0x3

    const/16 v26, 0x2

    const/16 v27, 0x1

    invoke-direct/range {v24 .. v29}, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->rowperm(IIIII)I

    move-result v2

    aput v2, v1, v7

    aget v25, v1, v8

    const/16 v28, 0x1

    const/16 v29, 0x0

    const/16 v26, 0x3

    const/16 v27, 0x2

    invoke-direct/range {v24 .. v29}, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->rowperm(IIIII)I

    move-result v2

    aput v2, v1, v8

    aget v4, v1, v7

    aget-short v20, v3, v7

    const v21, 0xffff

    and-int v22, v20, v21

    shl-int/lit8 v22, v22, 0x10

    aget-short v24, v3, v8

    and-int v25, v24, v21

    or-int v22, v22, v25

    xor-int v4, v4, v22

    aput v4, v1, v7

    aget v4, v1, v6

    aget-short v22, v3, v10

    and-int v25, v22, v21

    shl-int/lit8 v25, v25, 0x10

    aget-short v26, v3, v11

    and-int v27, v26, v21

    or-int v25, v25, v27

    xor-int v4, v4, v25

    aput v4, v1, v6

    sget-object v4, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->GIFT_RC:[B

    aget-byte v4, v4, v0

    and-int/lit16 v4, v4, 0xff

    const/high16 v25, -0x80000000

    xor-int v4, v4, v25

    xor-int/2addr v2, v4

    aput v2, v1, v8

    and-int v2, v22, v21

    ushr-int/2addr v2, v7

    and-int v4, v22, v21

    shl-int/2addr v4, v15

    or-int/2addr v2, v4

    int-to-short v2, v2

    and-int v4, v26, v21

    ushr-int/2addr v4, v5

    and-int v21, v26, v21

    shl-int/lit8 v21, v21, 0x4

    or-int v4, v4, v21

    int-to-short v4, v4

    aget-short v21, v3, v9

    aput-short v21, v3, v11

    aget-short v21, v3, v17

    aput-short v21, v3, v10

    aput-short v24, v3, v9

    aput-short v20, v3, v17

    aget-short v20, v3, v6

    aput-short v20, v3, v8

    aget-short v20, v3, v23

    aput-short v20, v3, v7

    aput-short v4, v3, v6

    aput-short v2, v3, v23

    add-int/lit8 v0, v0, 0x1

    move/from16 v4, v23

    goto/16 :goto_0

    :cond_0
    move/from16 v23, v4

    aget v0, v1, v23

    ushr-int/lit8 v2, v0, 0x18

    int-to-byte v2, v2

    aput-byte v2, p3, v23

    ushr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    aput-byte v2, p3, v6

    ushr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p3, v7

    int-to-byte v0, v0

    aput-byte v0, p3, v8

    aget v0, v1, v6

    ushr-int/lit8 v2, v0, 0x18

    int-to-byte v2, v2

    aput-byte v2, p3, v17

    ushr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    aput-byte v2, p3, v9

    ushr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p3, v10

    int-to-byte v0, v0

    aput-byte v0, p3, v11

    aget v0, v1, v7

    ushr-int/lit8 v2, v0, 0x18

    int-to-byte v2, v2

    aput-byte v2, p3, v18

    ushr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    aput-byte v2, p3, v12

    ushr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p3, v13

    int-to-byte v0, v0

    aput-byte v0, p3, v14

    aget v0, v1, v8

    ushr-int/lit8 v1, v0, 0x18

    int-to-byte v1, v1

    aput-byte v1, p3, v5

    ushr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p3, v16

    ushr-int/lit8 v1, v0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p3, v15

    int-to-byte v0, v0

    aput-byte v0, p3, v19

    return-void
.end method

.method private pho1([B[B[BII)V
    .locals 6

    const/16 v0, 0x10

    new-array v1, v0, [B

    new-array v2, v0, [B

    const/16 v3, -0x80

    const/4 v4, 0x0

    if-nez p5, :cond_0

    aput-byte v3, v1, v4

    goto :goto_0

    :cond_0
    invoke-static {p3, p4, v1, v4, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-ge p5, v0, :cond_1

    aput-byte v3, v1, p5

    :cond_1
    :goto_0
    const/16 p3, 0x8

    invoke-static {p2, p3, v2, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p3, v4

    :goto_1
    const/4 p4, 0x7

    if-ge p3, p4, :cond_2

    add-int/lit8 p5, p3, 0x8

    aget-byte v3, p2, p3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x1

    add-int/lit8 p3, p3, 0x1

    aget-byte v5, p2, p3

    and-int/lit16 v5, v5, 0xff

    ushr-int/lit8 p4, v5, 0x7

    or-int/2addr p4, v3

    int-to-byte p4, p4

    aput-byte p4, v2, p5

    goto :goto_1

    :cond_2
    aget-byte p3, p2, p4

    and-int/lit16 p3, p3, 0xff

    shl-int/lit8 p3, p3, 0x1

    aget-byte p5, p2, v4

    and-int/lit16 p5, p5, 0xff

    ushr-int/lit8 p4, p5, 0x7

    or-int/2addr p3, p4

    int-to-byte p3, p3

    const/16 p4, 0xf

    aput-byte p3, v2, p4

    invoke-static {v2, v4, p2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0, p2, v1, p1}, Lorg/bouncycastle/util/Bytes;->xor(I[B[B[B)V

    return-void
.end method

.method private rowperm(IIIII)I
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x8

    if-ge v0, v2, :cond_0

    mul-int/lit8 v3, v0, 0x4

    ushr-int v4, p1, v3

    and-int/lit8 v4, v4, 0x1

    mul-int/lit8 v5, p2, 0x8

    add-int/2addr v5, v0

    shl-int/2addr v4, v5

    or-int/2addr v1, v4

    add-int/lit8 v4, v3, 0x1

    ushr-int v4, p1, v4

    and-int/lit8 v4, v4, 0x1

    mul-int/lit8 v5, p3, 0x8

    add-int/2addr v5, v0

    shl-int/2addr v4, v5

    or-int/2addr v1, v4

    add-int/lit8 v4, v3, 0x2

    ushr-int v4, p1, v4

    and-int/lit8 v4, v4, 0x1

    mul-int/lit8 v5, p4, 0x8

    add-int/2addr v5, v0

    shl-int/2addr v4, v5

    or-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x3

    ushr-int v3, p1, v3

    and-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, p5

    add-int/2addr v2, v0

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private triple_half_block([B)V
    .locals 8

    const/16 v0, 0x8

    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x7

    if-ge v3, v4, :cond_0

    aget-byte v5, p1, v3

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v3, 0x1

    aget-byte v7, p1, v6

    and-int/lit16 v7, v7, 0xff

    ushr-int/lit8 v4, v7, 0x7

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    move v3, v6

    goto :goto_0

    :cond_0
    aget-byte v3, p1, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    ushr-int/2addr v2, v4

    mul-int/lit8 v2, v2, 0x1b

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/util/Bytes;->xorTo(I[B[B)V

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

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->finishAAD3(Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;Z)V

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
    .locals 0

    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->npub:[B

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->k:[B

    iget p1, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->BlockSize:I

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->Y:[B

    const/16 p1, 0x10

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->input:[B

    const/16 p1, 0x8

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->offset:[B

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
    .locals 6

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->input:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->Y:[B

    const/16 v5, 0x10

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->pho1([B[B[BII)V

    iget-object p1, v0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->offset:[B

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->double_half_block([B)V

    iget-object p1, v0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->offset:[B

    iget-object p2, v0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->input:[B

    const/16 v1, 0x8

    invoke-static {v1, p1, p2}, Lorg/bouncycastle/util/Bytes;->xorTo(I[B[B)V

    iget-object p1, v0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->input:[B

    iget-object p2, v0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->k:[B

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->Y:[B

    invoke-direct {p0, p1, p2, v1}, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->giftb128([B[B[B)V

    return-void
.end method

.method protected processBufferDecrypt([BI[BI)V
    .locals 9

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->offset:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->double_half_block([B)V

    iget v1, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->BlockSize:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->Y:[B

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/util/Bytes;->xor(I[B[BI[BI)V

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->input:[B

    move v7, v6

    move-object v6, v5

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->Y:[B

    iget v8, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->BlockSize:I

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->pho1([B[B[BII)V

    iget-object p1, v3, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->offset:[B

    iget-object p2, v3, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->input:[B

    const/16 p3, 0x8

    invoke-static {p3, p1, p2}, Lorg/bouncycastle/util/Bytes;->xorTo(I[B[B)V

    iget-object p1, v3, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->input:[B

    iget-object p2, v3, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->k:[B

    iget-object p3, v3, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->Y:[B

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->giftb128([B[B[B)V

    return-void
.end method

.method protected processBufferEncrypt([BI[BI)V
    .locals 9

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->offset:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->double_half_block([B)V

    iget v1, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->BlockSize:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->Y:[B

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/util/Bytes;->xor(I[B[BI[BI)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->input:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->Y:[B

    iget v8, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->BlockSize:I

    move-object v6, v3

    move v7, v4

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->pho1([B[B[BII)V

    iget-object p1, v3, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->offset:[B

    iget-object p2, v3, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->input:[B

    const/16 p3, 0x8

    invoke-static {p3, p1, p2}, Lorg/bouncycastle/util/Bytes;->xorTo(I[B[B)V

    iget-object p1, v3, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->input:[B

    iget-object p2, v3, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->k:[B

    iget-object p3, v3, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->Y:[B

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->giftb128([B[B[B)V

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
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->dataOperator:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperator;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperator;->getLen()I

    move-result v0

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->forEncryption:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->MAC_SIZE:I

    :goto_0
    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->offset:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->triple_half_block([B)V

    iget v1, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->m_aadPos:I

    and-int/lit8 v1, v1, 0xf

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->m_state:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

    sget-object v2, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;->DecInit:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->m_state:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

    sget-object v2, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;->EncInit:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

    if-ne v1, v2, :cond_2

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->offset:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->triple_half_block([B)V

    :cond_2
    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->offset:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->triple_half_block([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->offset:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->triple_half_block([B)V

    :cond_3
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->input:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->Y:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->m_aad:[B

    const/4 v5, 0x0

    iget v6, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->m_aadPos:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->pho1([B[B[BII)V

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->offset:[B

    iget-object v2, v1, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->input:[B

    const/16 v3, 0x8

    invoke-static {v3, v0, v2}, Lorg/bouncycastle/util/Bytes;->xorTo(I[B[B)V

    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->input:[B

    iget-object v2, v1, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->k:[B

    iget-object v3, v1, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->Y:[B

    invoke-direct {p0, v0, v2, v3}, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->giftb128([B[B[B)V

    return-void
.end method

.method protected processFinalBlock([BI)V
    .locals 13

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->dataOperator:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperator;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperator;->getLen()I

    move-result v0

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->forEncryption:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->MAC_SIZE:I

    :goto_0
    sub-int/2addr v0, v1

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->offset:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->triple_half_block([B)V

    and-int/lit8 v0, v0, 0xf

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->offset:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->triple_half_block([B)V

    :cond_1
    iget v3, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->m_bufPos:I

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->Y:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->m_buf:[B

    const/4 v6, 0x0

    move-object v7, p1

    move v8, p2

    invoke-static/range {v3 .. v8}, Lorg/bouncycastle/util/Bytes;->xor(I[B[BI[BI)V

    iget-boolean p1, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->forEncryption:Z

    if-eqz p1, :cond_2

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->input:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->Y:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->m_buf:[B

    const/4 v7, 0x0

    iget v8, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->m_bufPos:I

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->pho1([B[B[BII)V

    goto :goto_1

    :cond_2
    move-object v3, p0

    move v11, v8

    iget-object v8, v3, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->input:[B

    iget-object v9, v3, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->Y:[B

    iget v12, v3, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->m_bufPos:I

    move-object v10, v7

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->pho1([B[B[BII)V

    :goto_1
    iget-object p1, v3, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->offset:[B

    iget-object p2, v3, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->input:[B

    const/16 v0, 0x8

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/util/Bytes;->xorTo(I[B[B)V

    iget-object p1, v3, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->input:[B

    iget-object p2, v3, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->k:[B

    iget-object v0, v3, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->Y:[B

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->giftb128([B[B[B)V

    goto :goto_2

    :cond_3
    move-object v3, p0

    :goto_2
    iget-object p1, v3, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->Y:[B

    iget-object p2, v3, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->mac:[B

    iget v0, v3, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->BlockSize:I

    invoke-static {p1, v2, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    invoke-super {p0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->reset()V

    return-void
.end method

.method protected reset(Z)V
    .locals 3

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->reset(Z)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->npub:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->input:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->IV_SIZE:I

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->input:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->k:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->Y:[B

    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->giftb128([B[B[B)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->Y:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/GiftCofbEngine;->offset:[B

    const/16 v1, 0x8

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
