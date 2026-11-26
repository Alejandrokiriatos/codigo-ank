.class public Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;
.super Lorg/bouncycastle/crypto/engines/AEADBaseEngine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine$PhotonBeetleParameters;
    }
.end annotation


# static fields
.field private static final D:I = 0x8

.field private static final MixColMatrix:[[B

.field private static final RC:[[B

.field private static final sbox:[B


# instance fields
.field private K:[B

.field private final LAST_THREE_BITS_OFFSET:I

.field private N:[B

.field private final RATE_INBYTES_HALF:I

.field private final STATE_INBYTES:I

.field private input_empty:Z

.field private state:[B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v0, 0xc

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    new-array v2, v0, [B

    fill-array-data v2, :array_1

    new-array v3, v0, [B

    fill-array-data v3, :array_2

    new-array v4, v0, [B

    fill-array-data v4, :array_3

    new-array v5, v0, [B

    fill-array-data v5, :array_4

    new-array v6, v0, [B

    fill-array-data v6, :array_5

    new-array v7, v0, [B

    fill-array-data v7, :array_6

    new-array v8, v0, [B

    fill-array-data v8, :array_7

    filled-new-array/range {v1 .. v8}, [[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RC:[[B

    const/16 v0, 0x8

    new-array v1, v0, [B

    fill-array-data v1, :array_8

    new-array v2, v0, [B

    fill-array-data v2, :array_9

    new-array v3, v0, [B

    fill-array-data v3, :array_a

    new-array v4, v0, [B

    fill-array-data v4, :array_b

    new-array v5, v0, [B

    fill-array-data v5, :array_c

    new-array v6, v0, [B

    fill-array-data v6, :array_d

    new-array v7, v0, [B

    fill-array-data v7, :array_e

    new-array v8, v0, [B

    fill-array-data v8, :array_f

    filled-new-array/range {v1 .. v8}, [[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->MixColMatrix:[[B

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_10

    sput-object v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->sbox:[B

    return-void

    :array_0
    .array-data 1
        0x1t
        0x3t
        0x7t
        0xet
        0xdt
        0xbt
        0x6t
        0xct
        0x9t
        0x2t
        0x5t
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x2t
        0x6t
        0xft
        0xct
        0xat
        0x7t
        0xdt
        0x8t
        0x3t
        0x4t
        0xbt
    .end array-data

    :array_2
    .array-data 1
        0x2t
        0x0t
        0x4t
        0xdt
        0xet
        0x8t
        0x5t
        0xft
        0xat
        0x1t
        0x6t
        0x9t
    .end array-data

    :array_3
    .array-data 1
        0x6t
        0x4t
        0x0t
        0x9t
        0xat
        0xct
        0x1t
        0xbt
        0xet
        0x5t
        0x2t
        0xdt
    .end array-data

    :array_4
    .array-data 1
        0xet
        0xct
        0x8t
        0x1t
        0x2t
        0x4t
        0x9t
        0x3t
        0x6t
        0xdt
        0xat
        0x5t
    .end array-data

    :array_5
    .array-data 1
        0xft
        0xdt
        0x9t
        0x0t
        0x3t
        0x5t
        0x8t
        0x2t
        0x7t
        0xct
        0xbt
        0x4t
    .end array-data

    :array_6
    .array-data 1
        0xdt
        0xft
        0xbt
        0x2t
        0x1t
        0x7t
        0xat
        0x0t
        0x5t
        0xet
        0x9t
        0x6t
    .end array-data

    :array_7
    .array-data 1
        0x9t
        0xbt
        0xft
        0x6t
        0x5t
        0x3t
        0xet
        0x4t
        0x1t
        0xat
        0xdt
        0x2t
    .end array-data

    :array_8
    .array-data 1
        0x2t
        0x4t
        0x2t
        0xbt
        0x2t
        0x8t
        0x5t
        0x6t
    .end array-data

    :array_9
    .array-data 1
        0xct
        0x9t
        0x8t
        0xdt
        0x7t
        0x7t
        0x5t
        0x2t
    .end array-data

    :array_a
    .array-data 1
        0x4t
        0x4t
        0xdt
        0xdt
        0x9t
        0x4t
        0xdt
        0x9t
    .end array-data

    :array_b
    .array-data 1
        0x1t
        0x6t
        0x5t
        0x1t
        0xct
        0xdt
        0xft
        0xet
    .end array-data

    :array_c
    .array-data 1
        0xft
        0xct
        0x9t
        0xdt
        0xet
        0x5t
        0xet
        0xdt
    .end array-data

    :array_d
    .array-data 1
        0x9t
        0xet
        0x5t
        0xft
        0x4t
        0xct
        0x9t
        0x6t
    .end array-data

    :array_e
    .array-data 1
        0xct
        0x2t
        0x2t
        0xat
        0x3t
        0x1t
        0x1t
        0xet
    .end array-data

    :array_f
    .array-data 1
        0xft
        0x1t
        0xdt
        0xat
        0x5t
        0xat
        0x2t
        0x3t
    .end array-data

    :array_10
    .array-data 1
        0xct
        0x5t
        0x6t
        0xbt
        0x9t
        0x0t
        0xat
        0xdt
        0x3t
        0xet
        0xft
        0x8t
        0x4t
        0x7t
        0x1t
        0x2t
    .end array-data
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine$PhotonBeetleParameters;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->MAC_SIZE:I

    iput v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->IV_SIZE:I

    iput v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->KEY_SIZE:I

    sget-object v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$PhotonBeetleEngine$PhotonBeetleParameters:[I

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine$PhotonBeetleParameters;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    :goto_0
    move v1, p1

    goto :goto_1

    :cond_0
    const/16 p1, 0x80

    goto :goto_0

    :cond_1
    const/16 p1, 0x20

    const/16 v1, 0xe0

    :goto_1
    add-int/lit8 v2, p1, 0x7

    ushr-int/lit8 v2, v2, 0x3

    iput v2, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->BlockSize:I

    iput v2, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->AADBufferSize:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->BlockSize:I

    ushr-int/lit8 v0, v2, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES_HALF:I

    add-int/2addr p1, v1

    add-int/lit8 v0, p1, 0x7

    ushr-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->STATE_INBYTES:I

    add-int/lit8 v1, v0, -0x1

    shl-int/lit8 v1, v1, 0x3

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, -0x3

    iput p1, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->LAST_THREE_BITS_OFFSET:I

    const-string p1, "Photon-Beetle AEAD"

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->algorithmName:Ljava/lang/String;

    new-array p1, v0, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    sget-object p1, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ProcessingBufferType;->Buffered:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ProcessingBufferType;

    sget-object v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADOperatorType;->Counter:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADOperatorType;

    sget-object v1, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;->Counter:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;

    invoke-virtual {p0, p1, v0, v1}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->setInnerMembers(Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ProcessingBufferType;Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADOperatorType;Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;)V

    return-void
.end method

.method public static photonPermutation(Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest$Friend;[B)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->photonPermutation([B)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "This method is only for use by PhotonBeetleDigest"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static photonPermutation([B)V
    .locals 13

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/16 v2, 0x8

    aput v2, v0, v1

    const/4 v3, 0x0

    aput v2, v0, v3

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    move v4, v3

    :goto_0
    const/16 v5, 0x40

    if-ge v4, v5, :cond_0

    ushr-int/lit8 v5, v4, 0x3

    aget-object v5, v0, v5

    and-int/lit8 v6, v4, 0x7

    shr-int/lit8 v7, v4, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    and-int/lit8 v8, v4, 0x1

    mul-int/lit8 v8, v8, 0x4

    ushr-int/2addr v7, v8

    and-int/lit8 v7, v7, 0xf

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_1
    const/16 v6, 0xc

    if-ge v4, v6, :cond_9

    move v6, v3

    :goto_2
    if-ge v6, v2, :cond_1

    aget-object v7, v0, v6

    aget-byte v8, v7, v3

    sget-object v9, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RC:[[B

    aget-object v9, v9, v6

    aget-byte v9, v9, v4

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v7, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    move v6, v3

    :goto_3
    if-ge v6, v2, :cond_3

    move v7, v3

    :goto_4
    if-ge v7, v2, :cond_2

    aget-object v8, v0, v6

    sget-object v9, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->sbox:[B

    aget-byte v10, v8, v7

    aget-byte v9, v9, v10

    aput-byte v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    move v6, v1

    :goto_5
    if-ge v6, v2, :cond_4

    aget-object v7, v0, v6

    invoke-static {v7, v3, p0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v7, v0, v6

    rsub-int/lit8 v8, v6, 0x8

    invoke-static {p0, v6, v7, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v7, v0, v6

    invoke-static {p0, v3, v7, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_4
    move v6, v3

    :goto_6
    if-ge v6, v2, :cond_8

    move v7, v3

    :goto_7
    if-ge v7, v2, :cond_6

    move v8, v3

    move v9, v8

    :goto_8
    if-ge v8, v2, :cond_5

    sget-object v10, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->MixColMatrix:[[B

    aget-object v10, v10, v7

    aget-byte v10, v10, v8

    aget-object v11, v0, v8

    aget-byte v11, v11, v6

    and-int/lit8 v12, v11, 0x1

    mul-int/2addr v12, v10

    xor-int/2addr v9, v12

    and-int/lit8 v12, v11, 0x2

    mul-int/2addr v12, v10

    xor-int/2addr v9, v12

    and-int/lit8 v12, v11, 0x4

    mul-int/2addr v12, v10

    xor-int/2addr v9, v12

    and-int/2addr v11, v2

    mul-int/2addr v10, v11

    xor-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_5
    ushr-int/lit8 v8, v9, 0x4

    and-int/lit8 v9, v9, 0xf

    xor-int/2addr v9, v8

    shl-int/2addr v8, v1

    xor-int/2addr v8, v9

    ushr-int/lit8 v9, v8, 0x4

    and-int/lit8 v8, v8, 0xf

    xor-int/2addr v8, v9

    shl-int/2addr v9, v1

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, p0, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_6
    move v7, v3

    :goto_9
    if-ge v7, v2, :cond_7

    aget-object v8, v0, v7

    aget-byte v9, p0, v7

    aput-byte v9, v8, v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_9
    :goto_a
    if-ge v3, v5, :cond_a

    ushr-int/lit8 v1, v3, 0x1

    ushr-int/lit8 v2, v3, 0x3

    aget-object v2, v0, v2

    and-int/lit8 v4, v3, 0x7

    aget-byte v4, v2, v4

    and-int/lit8 v4, v4, 0xf

    add-int/lit8 v6, v3, 0x1

    and-int/lit8 v6, v6, 0x7

    aget-byte v2, v2, v6

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0x4

    or-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v3, v3, 0x2

    goto :goto_a

    :cond_a
    return-void
.end method

.method private rhoohr([BI[BII)V
    .locals 10

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->photonPermutation([B)V

    const/16 v0, 0x8

    new-array v2, v0, [B

    iget v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES_HALF:I

    invoke-static {p5, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v5, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES_HALF:I

    add-int/lit8 v4, v5, -0x1

    if-ge v1, v4, :cond_0

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    aget-byte v5, v4, v1

    and-int/lit16 v5, v5, 0xff

    ushr-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v1, 0x1

    aget-byte v4, v4, v6

    and-int/lit8 v4, v4, 0x1

    shl-int/lit8 v4, v4, 0x7

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    move v1, v6

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v5, -0x1

    move v6, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    ushr-int/lit8 v1, v1, 0x1

    aget-byte v0, v4, v0

    and-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x7

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v2, v6

    move-object v8, p1

    move v9, p2

    move-object v6, p3

    move v7, p4

    invoke-static/range {v3 .. v9}, Lorg/bouncycastle/util/Bytes;->xor(I[BI[BI[BI)V

    move-object v4, v6

    move-object v6, v8

    sub-int v1, p5, v3

    iget p1, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES_HALF:I

    sub-int p1, v3, p1

    add-int v5, v7, v3

    add-int v7, v9, v3

    move v3, p1

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/util/Bytes;->xor(I[BI[BI[BI)V

    return-void
.end method

.method private select(ZZBB)B
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    if-eqz p2, :cond_2

    return p3

    :cond_2
    return p4
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

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->finishAAD3(Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;Z)V

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->K:[B

    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->N:[B

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
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->photonPermutation([B)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->BlockSize:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    invoke-static {v0, p1, p2, v1}, Lorg/bouncycastle/util/Bytes;->xorTo(I[BI[B)V

    return-void
.end method

.method protected processBufferDecrypt([BI[BI)V
    .locals 6

    iget v5, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->BlockSize:I

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v1, p3

    move v2, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->rhoohr([BI[BII)V

    iget p1, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->BlockSize:I

    iget-object p2, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    invoke-static {p1, v1, v2, p2}, Lorg/bouncycastle/util/Bytes;->xorTo(I[BI[B)V

    return-void
.end method

.method protected processBufferEncrypt([BI[BI)V
    .locals 6

    iget v5, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->BlockSize:I

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v1, p3

    move v2, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->rhoohr([BI[BII)V

    iget p1, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->BlockSize:I

    iget-object p2, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    invoke-static {p1, v3, v4, p2}, Lorg/bouncycastle/util/Bytes;->xorTo(I[BI[B)V

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
    .locals 8

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->aadOperator:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADOperator;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADOperator;->getLen()I

    move-result v0

    if-eqz v0, :cond_4

    iget v1, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->m_aadPos:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->photonPermutation([B)V

    iget v1, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->m_aadPos:I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->m_aad:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    invoke-static {v1, v3, v4}, Lorg/bouncycastle/util/Bytes;->xorTo(I[B[B)V

    iget v1, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->m_aadPos:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->BlockSize:I

    if-ge v1, v3, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->m_aadPos:I

    aget-byte v4, v1, v3

    xor-int/2addr v4, v2

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->STATE_INBYTES:I

    sub-int/2addr v3, v2

    aget-byte v4, v1, v3

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->dataOperator:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperator;

    invoke-interface {v5}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperator;->getLen()I

    move-result v5

    iget-boolean v6, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->forEncryption:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    move v6, v7

    goto :goto_0

    :cond_1
    iget v6, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->MAC_SIZE:I

    :goto_0
    sub-int/2addr v5, v6

    if-lez v5, :cond_2

    move v5, v2

    goto :goto_1

    :cond_2
    move v5, v7

    :goto_1
    iget v6, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->BlockSize:I

    rem-int/2addr v0, v6

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v7

    :goto_2
    const/4 v0, 0x3

    const/4 v6, 0x4

    invoke-direct {p0, v5, v2, v0, v6}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->select(ZZBB)B

    move-result v0

    iget v2, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->LAST_THREE_BITS_OFFSET:I

    shl-int/2addr v0, v2

    xor-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    :cond_4
    return-void
.end method

.method protected processFinalBlock([BI)V
    .locals 10

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->dataOperator:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperator;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperator;->getLen()I

    move-result v0

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->forEncryption:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->MAC_SIZE:I

    :goto_0
    sub-int/2addr v0, v1

    iget v8, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->m_bufPos:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->aadOperator:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADOperator;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADOperator;->getLen()I

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    iput-boolean v2, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->input_empty:Z

    :cond_2
    const/4 v9, 0x1

    if-eqz v1, :cond_3

    move v1, v9

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    iget v3, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->BlockSize:I

    rem-int v3, v0, v3

    if-nez v3, :cond_4

    move v3, v9

    goto :goto_2

    :cond_4
    move v3, v2

    :goto_2
    const/4 v4, 0x5

    const/4 v5, 0x6

    invoke-direct {p0, v1, v3, v4, v5}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->select(ZZBB)B

    move-result v1

    if-eqz v0, :cond_8

    if-eqz v8, :cond_6

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->m_buf:[B

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v3 .. v8}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->rhoohr([BI[BII)V

    iget-boolean p1, v3, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->forEncryption:Z

    if-eqz p1, :cond_5

    iget-object p1, v3, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->m_buf:[B

    iget-object p2, v3, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    invoke-static {v8, p1, p2}, Lorg/bouncycastle/util/Bytes;->xorTo(I[B[B)V

    goto :goto_3

    :cond_5
    iget-object p1, v3, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    invoke-static {v8, v4, v5, p1}, Lorg/bouncycastle/util/Bytes;->xorTo(I[BI[B)V

    :goto_3
    iget p1, v3, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->BlockSize:I

    if-ge v8, p1, :cond_7

    iget-object p1, v3, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    aget-byte p2, p1, v8

    xor-int/2addr p2, v9

    int-to-byte p2, p2

    aput-byte p2, p1, v8

    goto :goto_4

    :cond_6
    move-object v3, p0

    :cond_7
    :goto_4
    iget-object p1, v3, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    iget p2, v3, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->STATE_INBYTES:I

    sub-int/2addr p2, v9

    aget-byte v0, p1, p2

    iget v4, v3, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->LAST_THREE_BITS_OFFSET:I

    shl-int/2addr v1, v4

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    goto :goto_5

    :cond_8
    move-object v3, p0

    iget-boolean p1, v3, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->input_empty:Z

    if-eqz p1, :cond_9

    iget-object p1, v3, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    iget p2, v3, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->STATE_INBYTES:I

    sub-int/2addr p2, v9

    aget-byte v0, p1, p2

    iget v1, v3, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->LAST_THREE_BITS_OFFSET:I

    shl-int v1, v9, v1

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    :cond_9
    :goto_5
    iget-object p1, v3, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->photonPermutation([B)V

    iget-object p1, v3, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    iget-object p2, v3, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->mac:[B

    iget v0, v3, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->MAC_SIZE:I

    invoke-static {p1, v2, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    invoke-super {p0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->reset()V

    return-void
.end method

.method protected reset(Z)V
    .locals 4

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->reset(Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->input_empty:Z

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->K:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->N:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->K:[B

    array-length v1, v1

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
