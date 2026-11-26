.class abstract Lorg/bouncycastle/crypto/engines/ElephantEngine$Spongent;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/engines/ElephantEngine$Permutation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/ElephantEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Spongent"
.end annotation


# instance fields
.field private final lfsrIV:B

.field private final nBits:I

.field private final nRounds:I

.field private final nSBox:I

.field private final sBoxLayer:[B


# direct methods
.method public constructor <init>(IIIB)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine$Spongent;->sBoxLayer:[B

    iput p3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine$Spongent;->nRounds:I

    iput p2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine$Spongent;->nSBox:I

    iput-byte p4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine$Spongent;->lfsrIV:B

    iput p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine$Spongent;->nBits:I

    return-void

    nop

    :array_0
    .array-data 1
        -0x12t
        -0x13t
        -0x15t
        -0x20t
        -0x1et
        -0x1ft
        -0x1ct
        -0x11t
        -0x19t
        -0x16t
        -0x18t
        -0x1bt
        -0x17t
        -0x14t
        -0x1dt
        -0x1at
        -0x22t
        -0x23t
        -0x25t
        -0x30t
        -0x2et
        -0x2ft
        -0x2ct
        -0x21t
        -0x29t
        -0x26t
        -0x28t
        -0x2bt
        -0x27t
        -0x24t
        -0x2dt
        -0x2at
        -0x42t
        -0x43t
        -0x45t
        -0x50t
        -0x4et
        -0x4ft
        -0x4ct
        -0x41t
        -0x49t
        -0x46t
        -0x48t
        -0x4bt
        -0x47t
        -0x44t
        -0x4dt
        -0x4at
        0xet
        0xdt
        0xbt
        0x0t
        0x2t
        0x1t
        0x4t
        0xft
        0x7t
        0xat
        0x8t
        0x5t
        0x9t
        0xct
        0x3t
        0x6t
        0x2et
        0x2dt
        0x2bt
        0x20t
        0x22t
        0x21t
        0x24t
        0x2ft
        0x27t
        0x2at
        0x28t
        0x25t
        0x29t
        0x2ct
        0x23t
        0x26t
        0x1et
        0x1dt
        0x1bt
        0x10t
        0x12t
        0x11t
        0x14t
        0x1ft
        0x17t
        0x1at
        0x18t
        0x15t
        0x19t
        0x1ct
        0x13t
        0x16t
        0x4et
        0x4dt
        0x4bt
        0x40t
        0x42t
        0x41t
        0x44t
        0x4ft
        0x47t
        0x4at
        0x48t
        0x45t
        0x49t
        0x4ct
        0x43t
        0x46t
        -0x2t
        -0x3t
        -0x5t
        -0x10t
        -0xet
        -0xft
        -0xct
        -0x1t
        -0x9t
        -0x6t
        -0x8t
        -0xbt
        -0x7t
        -0x4t
        -0xdt
        -0xat
        0x7et
        0x7dt
        0x7bt
        0x70t
        0x72t
        0x71t
        0x74t
        0x7ft
        0x77t
        0x7at
        0x78t
        0x75t
        0x79t
        0x7ct
        0x73t
        0x76t
        -0x52t
        -0x53t
        -0x55t
        -0x60t
        -0x5et
        -0x5ft
        -0x5ct
        -0x51t
        -0x59t
        -0x56t
        -0x58t
        -0x5bt
        -0x57t
        -0x54t
        -0x5dt
        -0x5at
        -0x72t
        -0x73t
        -0x75t
        -0x80t
        -0x7et
        -0x7ft
        -0x7ct
        -0x71t
        -0x79t
        -0x76t
        -0x78t
        -0x7bt
        -0x77t
        -0x74t
        -0x7dt
        -0x7at
        0x5et
        0x5dt
        0x5bt
        0x50t
        0x52t
        0x51t
        0x54t
        0x5ft
        0x57t
        0x5at
        0x58t
        0x55t
        0x59t
        0x5ct
        0x53t
        0x56t
        -0x62t
        -0x63t
        -0x65t
        -0x70t
        -0x6et
        -0x6ft
        -0x6ct
        -0x61t
        -0x69t
        -0x66t
        -0x68t
        -0x6bt
        -0x67t
        -0x64t
        -0x6dt
        -0x6at
        -0x32t
        -0x33t
        -0x35t
        -0x40t
        -0x3et
        -0x3ft
        -0x3ct
        -0x31t
        -0x39t
        -0x36t
        -0x38t
        -0x3bt
        -0x37t
        -0x34t
        -0x3dt
        -0x3at
        0x3et
        0x3dt
        0x3bt
        0x30t
        0x32t
        0x31t
        0x34t
        0x3ft
        0x37t
        0x3at
        0x38t
        0x35t
        0x39t
        0x3ct
        0x33t
        0x36t
        0x6et
        0x6dt
        0x6bt
        0x60t
        0x62t
        0x61t
        0x64t
        0x6ft
        0x67t
        0x6at
        0x68t
        0x65t
        0x69t
        0x6ct
        0x63t
        0x66t
    .end array-data
.end method


# virtual methods
.method public permutation([B)V
    .locals 10

    iget-byte v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine$Spongent;->lfsrIV:B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine$Spongent;->nSBox:I

    new-array v1, v1, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine$Spongent;->nRounds:I

    if-ge v3, v4, :cond_4

    aget-byte v4, p1, v2

    xor-int/2addr v4, v0

    int-to-byte v4, v4

    aput-byte v4, p1, v2

    iget v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine$Spongent;->nSBox:I

    add-int/lit8 v4, v4, -0x1

    aget-byte v5, p1, v4

    and-int/lit8 v6, v0, 0x1

    shl-int/lit8 v6, v6, 0x7

    and-int/lit8 v7, v0, 0x2

    shl-int/lit8 v7, v7, 0x5

    or-int/2addr v6, v7

    and-int/lit8 v7, v0, 0x4

    shl-int/lit8 v7, v7, 0x3

    or-int/2addr v6, v7

    and-int/lit8 v7, v0, 0x8

    shl-int/lit8 v7, v7, 0x1

    or-int/2addr v6, v7

    and-int/lit8 v7, v0, 0x10

    ushr-int/lit8 v7, v7, 0x1

    or-int/2addr v6, v7

    and-int/lit8 v7, v0, 0x20

    ushr-int/lit8 v8, v7, 0x3

    or-int/2addr v6, v8

    and-int/lit8 v8, v0, 0x40

    ushr-int/lit8 v9, v8, 0x5

    or-int/2addr v6, v9

    and-int/lit16 v9, v0, 0x80

    ushr-int/lit8 v9, v9, 0x7

    or-int/2addr v6, v9

    int-to-byte v6, v6

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    shl-int/lit8 v0, v0, 0x1

    ushr-int/lit8 v4, v8, 0x6

    ushr-int/lit8 v5, v7, 0x5

    xor-int/2addr v4, v5

    or-int/2addr v0, v4

    and-int/lit8 v0, v0, 0x7f

    int-to-byte v0, v0

    move v4, v2

    :goto_1
    iget v5, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine$Spongent;->nSBox:I

    if-ge v4, v5, :cond_0

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine$Spongent;->sBoxLayer:[B

    aget-byte v6, p1, v4

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    aput-byte v5, p1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    move v4, v2

    :goto_2
    iget v5, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine$Spongent;->nSBox:I

    if-ge v4, v5, :cond_3

    move v5, v2

    :goto_3
    const/16 v6, 0x8

    if-ge v5, v6, :cond_2

    shl-int/lit8 v6, v4, 0x3

    add-int/2addr v6, v5

    iget v7, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine$Spongent;->nBits:I

    add-int/lit8 v8, v7, -0x1

    if-eq v6, v8, :cond_1

    mul-int/2addr v6, v7

    shr-int/lit8 v6, v6, 0x2

    add-int/lit8 v7, v7, -0x1

    rem-int/2addr v6, v7

    :cond_1
    ushr-int/lit8 v7, v6, 0x3

    aget-byte v8, v1, v7

    aget-byte v9, p1, v4

    and-int/lit16 v9, v9, 0xff

    ushr-int/2addr v9, v5

    and-int/lit8 v9, v9, 0x1

    and-int/lit8 v6, v6, 0x7

    shl-int v6, v9, v6

    xor-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, v1, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    invoke-static {v1, v2, p1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method
