.class public Lorg/bouncycastle/crypto/engines/RomulusEngine;
.super Lorg/bouncycastle/crypto/engines/AEADBaseEngine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/engines/RomulusEngine$Instance;,
        Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;,
        Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;,
        Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusParameters;,
        Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;
    }
.end annotation


# static fields
.field private static final AD_BLK_LEN_HALF:I = 0x10

.field private static final RC:[B

.field private static final TWEAKEY_P:[B

.field private static final sbox_8:[B


# instance fields
.field private final CNT:[B

.field private instance:Lorg/bouncycastle/crypto/engines/RomulusEngine$Instance;

.field private k:[B

.field private npub:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->sbox_8:[B

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->TWEAKEY_P:[B

    const/16 v0, 0x28

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->RC:[B

    return-void

    :array_0
    .array-data 1
        0x65t
        0x4ct
        0x6at
        0x42t
        0x4bt
        0x63t
        0x43t
        0x6bt
        0x55t
        0x75t
        0x5at
        0x7at
        0x53t
        0x73t
        0x5bt
        0x7bt
        0x35t
        -0x74t
        0x3at
        -0x7ft
        -0x77t
        0x33t
        -0x80t
        0x3bt
        -0x6bt
        0x25t
        -0x68t
        0x2at
        -0x70t
        0x23t
        -0x67t
        0x2bt
        -0x1bt
        -0x34t
        -0x18t
        -0x3ft
        -0x37t
        -0x20t
        -0x40t
        -0x17t
        -0x2bt
        -0xbt
        -0x28t
        -0x8t
        -0x30t
        -0x10t
        -0x27t
        -0x7t
        -0x5bt
        0x1ct
        -0x58t
        0x12t
        0x1bt
        -0x60t
        0x13t
        -0x57t
        0x5t
        -0x4bt
        0xat
        -0x48t
        0x3t
        -0x50t
        0xbt
        -0x47t
        0x32t
        -0x78t
        0x3ct
        -0x7bt
        -0x73t
        0x34t
        -0x7ct
        0x3dt
        -0x6ft
        0x22t
        -0x64t
        0x2ct
        -0x6ct
        0x24t
        -0x63t
        0x2dt
        0x62t
        0x4at
        0x6ct
        0x45t
        0x4dt
        0x64t
        0x44t
        0x6dt
        0x52t
        0x72t
        0x5ct
        0x7ct
        0x54t
        0x74t
        0x5dt
        0x7dt
        -0x5ft
        0x1at
        -0x54t
        0x15t
        0x1dt
        -0x5ct
        0x14t
        -0x53t
        0x2t
        -0x4ft
        0xct
        -0x44t
        0x4t
        -0x4ct
        0xdt
        -0x43t
        -0x1ft
        -0x38t
        -0x14t
        -0x3bt
        -0x33t
        -0x1ct
        -0x3ct
        -0x13t
        -0x2ft
        -0xft
        -0x24t
        -0x4t
        -0x2ct
        -0xct
        -0x23t
        -0x3t
        0x36t
        -0x72t
        0x38t
        -0x7et
        -0x75t
        0x30t
        -0x7dt
        0x39t
        -0x6at
        0x26t
        -0x66t
        0x28t
        -0x6dt
        0x20t
        -0x65t
        0x29t
        0x66t
        0x4et
        0x68t
        0x41t
        0x49t
        0x60t
        0x40t
        0x69t
        0x56t
        0x76t
        0x58t
        0x78t
        0x50t
        0x70t
        0x59t
        0x79t
        -0x5at
        0x1et
        -0x56t
        0x11t
        0x19t
        -0x5dt
        0x10t
        -0x55t
        0x6t
        -0x4at
        0x8t
        -0x46t
        0x0t
        -0x4dt
        0x9t
        -0x45t
        -0x1at
        -0x32t
        -0x16t
        -0x3et
        -0x35t
        -0x1dt
        -0x3dt
        -0x15t
        -0x2at
        -0xat
        -0x26t
        -0x6t
        -0x2dt
        -0xdt
        -0x25t
        -0x5t
        0x31t
        -0x76t
        0x3et
        -0x7at
        -0x71t
        0x37t
        -0x79t
        0x3ft
        -0x6et
        0x21t
        -0x62t
        0x2et
        -0x69t
        0x27t
        -0x61t
        0x2ft
        0x61t
        0x48t
        0x6et
        0x46t
        0x4ft
        0x67t
        0x47t
        0x6ft
        0x51t
        0x71t
        0x5et
        0x7et
        0x57t
        0x77t
        0x5ft
        0x7ft
        -0x5et
        0x18t
        -0x52t
        0x16t
        0x1ft
        -0x59t
        0x17t
        -0x51t
        0x1t
        -0x4et
        0xet
        -0x42t
        0x7t
        -0x49t
        0xft
        -0x41t
        -0x1et
        -0x36t
        -0x12t
        -0x3at
        -0x31t
        -0x19t
        -0x39t
        -0x11t
        -0x2et
        -0xet
        -0x22t
        -0x2t
        -0x29t
        -0x9t
        -0x21t
        -0x1t
    .end array-data

    :array_1
    .array-data 1
        0x9t
        0xft
        0x8t
        0xdt
        0xat
        0xet
        0xct
        0xbt
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
    .end array-data

    :array_2
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

.method public constructor <init>(Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusParameters;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->AADBufferSize:I

    iput v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->BlockSize:I

    iput v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->MAC_SIZE:I

    iput v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->IV_SIZE:I

    iput v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->KEY_SIZE:I

    const/4 v0, 0x7

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->CNT:[B

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusParameters;->access$000(Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusParameters;)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "Romulus-T"

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->algorithmName:Ljava/lang/String;

    const/16 v0, 0x20

    iput v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->AADBufferSize:I

    new-instance v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;-><init>(Lorg/bouncycastle/crypto/engines/RomulusEngine;Lorg/bouncycastle/crypto/engines/RomulusEngine$1;)V

    goto :goto_0

    :cond_1
    const-string v0, "Romulus-N"

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->algorithmName:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;-><init>(Lorg/bouncycastle/crypto/engines/RomulusEngine;)V

    goto :goto_0

    :cond_2
    const-string v0, "Romulus-M"

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->algorithmName:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;-><init>(Lorg/bouncycastle/crypto/engines/RomulusEngine;)V

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->instance:Lorg/bouncycastle/crypto/engines/RomulusEngine$Instance;

    :goto_1
    sget-object v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusParameters;->RomulusN:Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusParameters;

    if-ne p1, v0, :cond_3

    sget-object v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ProcessingBufferType;->Buffered:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ProcessingBufferType;

    goto :goto_2

    :cond_3
    sget-object v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ProcessingBufferType;->Immediate:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ProcessingBufferType;

    :goto_2
    sget-object v1, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADOperatorType;->Counter:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADOperatorType;

    sget-object v2, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusParameters;->RomulusM:Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusParameters;

    if-ne p1, v2, :cond_4

    sget-object p1, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;->Stream:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;

    goto :goto_3

    :cond_4
    sget-object p1, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;->Counter:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;

    :goto_3
    invoke-virtual {p0, v0, v1, p1}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->setInnerMembers(Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ProcessingBufferType;Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADOperatorType;Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;)V

    return-void
.end method

.method static synthetic access$200(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->k:[B

    return-object p0
.end method

.method static synthetic access$300(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->npub:[B

    return-object p0
.end method

.method static synthetic access$400(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->CNT:[B

    return-object p0
.end method

.method static synthetic access$500(Lorg/bouncycastle/crypto/engines/RomulusEngine;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->reset_lfsr_gf56([B)V

    return-void
.end method

.method public static hirose_128_128_256(Lorg/bouncycastle/crypto/digests/RomulusDigest$Friend;[B[B[BI)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->hirose_128_128_256([B[B[BI)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "This method is only for use by RomulusDigest"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static hirose_128_128_256([B[B[BI)V
    .locals 5

    const/16 v0, 0x30

    new-array v0, v0, [B

    const/16 v1, 0x10

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p0, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v4, p1, v3

    xor-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    const/16 v4, 0x20

    invoke-static {p2, p3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->skinny_128_384_plus_enc([B[B)V

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->skinny_128_384_plus_enc([B[B)V

    move p2, v3

    :goto_0
    if-ge p2, v1, :cond_0

    aget-byte p3, p0, p2

    aget-byte v0, v2, p2

    xor-int/2addr p3, v0

    int-to-byte p3, p3

    aput-byte p3, p0, p2

    aget-byte p3, p1, p2

    aget-byte v0, v2, p2

    xor-int/2addr p3, v0

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    aget-byte p0, p1, v3

    xor-int/lit8 p0, p0, 0x1

    int-to-byte p0, p0

    aput-byte p0, p1, v3

    return-void
.end method

.method private reset_lfsr_gf56([B)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-byte v1, p1, v0

    const/4 v2, 0x7

    invoke-static {p1, v1, v2, v0}, Lorg/bouncycastle/util/Arrays;->fill([BIIB)V

    return-void
.end method

.method private static skinny_128_384_plus_enc([B[B)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x1

    const/4 v5, 0x4

    aput v5, v3, v4

    const/4 v6, 0x0

    aput v5, v3, v6

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[B

    const/4 v7, 0x3

    new-array v8, v7, [I

    aput v5, v8, v2

    aput v5, v8, v4

    aput v7, v8, v6

    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[[B

    new-array v9, v7, [I

    aput v5, v9, v2

    aput v5, v9, v4

    aput v7, v9, v6

    sget-object v10, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[[B

    move v10, v6

    :goto_0
    if-ge v10, v5, :cond_0

    shl-int/lit8 v11, v10, 0x2

    aget-object v12, v3, v10

    invoke-static {v0, v11, v12, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v12, v8, v6

    aget-object v12, v12, v10

    invoke-static {v1, v11, v12, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v12, v11, 0x10

    aget-object v13, v8, v4

    aget-object v13, v13, v10

    invoke-static {v1, v12, v13, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v11, v11, 0x20

    aget-object v12, v8, v2

    aget-object v12, v12, v10

    invoke-static {v1, v11, v12, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    move v1, v6

    :goto_1
    const/16 v10, 0x28

    if-ge v1, v10, :cond_c

    move v10, v6

    :goto_2
    if-ge v10, v5, :cond_2

    move v11, v6

    :goto_3
    if-ge v11, v5, :cond_1

    aget-object v12, v3, v10

    sget-object v13, Lorg/bouncycastle/crypto/engines/RomulusEngine;->sbox_8:[B

    aget-byte v14, v12, v11

    and-int/lit16 v14, v14, 0xff

    aget-byte v13, v13, v14

    aput-byte v13, v12, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_2
    aget-object v10, v3, v6

    aget-byte v11, v10, v6

    sget-object v12, Lorg/bouncycastle/crypto/engines/RomulusEngine;->RC:[B

    aget-byte v13, v12, v1

    and-int/lit8 v13, v13, 0xf

    xor-int/2addr v11, v13

    int-to-byte v11, v11

    aput-byte v11, v10, v6

    aget-object v10, v3, v4

    aget-byte v11, v10, v6

    aget-byte v12, v12, v1

    ushr-int/2addr v12, v5

    and-int/2addr v12, v7

    xor-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v10, v6

    aget-object v10, v3, v2

    aget-byte v11, v10, v6

    xor-int/2addr v11, v2

    int-to-byte v11, v11

    aput-byte v11, v10, v6

    move v10, v6

    :goto_4
    if-gt v10, v4, :cond_4

    move v11, v6

    :goto_5
    if-ge v11, v5, :cond_3

    aget-object v12, v3, v10

    aget-byte v13, v12, v11

    aget-object v14, v8, v6

    aget-object v14, v14, v10

    aget-byte v14, v14, v11

    aget-object v15, v8, v4

    aget-object v15, v15, v10

    aget-byte v15, v15, v11

    xor-int/2addr v14, v15

    aget-object v15, v8, v2

    aget-object v15, v15, v10

    aget-byte v15, v15, v11

    xor-int/2addr v14, v15

    xor-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v12, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_4
    move v10, v6

    :goto_6
    if-ge v10, v5, :cond_6

    move v11, v6

    :goto_7
    if-ge v11, v5, :cond_5

    sget-object v12, Lorg/bouncycastle/crypto/engines/RomulusEngine;->TWEAKEY_P:[B

    shl-int/lit8 v13, v10, 0x2

    add-int/2addr v13, v11

    aget-byte v12, v12, v13

    ushr-int/lit8 v13, v12, 0x2

    and-int/2addr v12, v7

    aget-object v14, v9, v6

    aget-object v14, v14, v10

    aget-object v15, v8, v6

    aget-object v15, v15, v13

    aget-byte v15, v15, v12

    aput-byte v15, v14, v11

    aget-object v14, v9, v4

    aget-object v14, v14, v10

    aget-object v15, v8, v4

    aget-object v15, v15, v13

    aget-byte v15, v15, v12

    aput-byte v15, v14, v11

    aget-object v14, v9, v2

    aget-object v14, v14, v10

    aget-object v15, v8, v2

    aget-object v13, v15, v13

    aget-byte v12, v13, v12

    aput-byte v12, v14, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_6
    move v10, v6

    :goto_8
    if-gt v10, v4, :cond_8

    move v11, v6

    :goto_9
    if-ge v11, v5, :cond_7

    aget-object v12, v8, v6

    aget-object v12, v12, v10

    aget-object v13, v9, v6

    aget-object v13, v13, v10

    aget-byte v13, v13, v11

    aput-byte v13, v12, v11

    aget-object v12, v9, v4

    aget-object v12, v12, v10

    aget-byte v12, v12, v11

    aget-object v13, v8, v4

    aget-object v13, v13, v10

    shl-int/lit8 v14, v12, 0x1

    and-int/lit16 v14, v14, 0xfe

    ushr-int/lit8 v15, v12, 0x7

    and-int/2addr v15, v4

    xor-int/2addr v14, v15

    ushr-int/lit8 v12, v12, 0x5

    and-int/2addr v12, v4

    xor-int/2addr v12, v14

    int-to-byte v12, v12

    aput-byte v12, v13, v11

    aget-object v12, v9, v2

    aget-object v12, v12, v10

    aget-byte v12, v12, v11

    aget-object v13, v8, v2

    aget-object v13, v13, v10

    ushr-int/lit8 v14, v12, 0x1

    and-int/lit8 v14, v14, 0x7f

    shl-int/lit8 v15, v12, 0x7

    and-int/lit16 v15, v15, 0x80

    xor-int/2addr v14, v15

    shl-int/2addr v12, v4

    and-int/lit16 v12, v12, 0x80

    xor-int/2addr v12, v14

    int-to-byte v12, v12

    aput-byte v12, v13, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_8
    :goto_a
    if-ge v10, v5, :cond_a

    move v11, v6

    :goto_b
    if-ge v11, v5, :cond_9

    aget-object v12, v8, v6

    aget-object v12, v12, v10

    aget-object v13, v9, v6

    aget-object v13, v13, v10

    aget-byte v13, v13, v11

    aput-byte v13, v12, v11

    aget-object v12, v8, v4

    aget-object v12, v12, v10

    aget-object v13, v9, v4

    aget-object v13, v13, v10

    aget-byte v13, v13, v11

    aput-byte v13, v12, v11

    aget-object v12, v8, v2

    aget-object v12, v12, v10

    aget-object v13, v9, v2

    aget-object v13, v13, v10

    aget-byte v13, v13, v11

    aput-byte v13, v12, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    :cond_a
    aget-object v10, v3, v4

    aget-byte v11, v10, v7

    aget-byte v12, v10, v2

    aput-byte v12, v10, v7

    aget-byte v12, v10, v4

    aput-byte v12, v10, v2

    aget-byte v12, v10, v6

    aput-byte v12, v10, v4

    aput-byte v11, v10, v6

    aget-object v10, v3, v2

    aget-byte v11, v10, v6

    aget-byte v12, v10, v2

    aput-byte v12, v10, v6

    aput-byte v11, v10, v2

    aget-byte v11, v10, v4

    aget-byte v12, v10, v7

    aput-byte v12, v10, v4

    aput-byte v11, v10, v7

    aget-object v10, v3, v7

    aget-byte v11, v10, v6

    aget-byte v12, v10, v4

    aput-byte v12, v10, v6

    aget-byte v12, v10, v2

    aput-byte v12, v10, v4

    aget-byte v12, v10, v7

    aput-byte v12, v10, v2

    aput-byte v11, v10, v7

    move v10, v6

    :goto_c
    if-ge v10, v5, :cond_b

    aget-object v11, v3, v4

    aget-byte v12, v11, v10

    aget-object v13, v3, v2

    aget-byte v14, v13, v10

    xor-int/2addr v12, v14

    int-to-byte v12, v12

    aput-byte v12, v11, v10

    aget-byte v12, v13, v10

    aget-object v14, v3, v6

    aget-byte v15, v14, v10

    xor-int/2addr v12, v15

    int-to-byte v12, v12

    aput-byte v12, v13, v10

    aget-object v15, v3, v7

    aget-byte v16, v15, v10

    xor-int v12, v16, v12

    int-to-byte v12, v12

    aput-byte v12, v15, v10

    aget-byte v16, v13, v10

    aput-byte v16, v15, v10

    aget-byte v15, v11, v10

    aput-byte v15, v13, v10

    aget-byte v13, v14, v10

    aput-byte v13, v11, v10

    aput-byte v12, v14, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_c
    :goto_d
    const/16 v1, 0x10

    if-ge v6, v1, :cond_d

    ushr-int/lit8 v1, v6, 0x2

    aget-object v1, v3, v1

    and-int/lit8 v2, v6, 0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_d
    return-void
.end method


# virtual methods
.method block_cipher([B[B[BI[BB)V
    .locals 3

    const/16 v0, 0x30

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-static {p5, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte p6, v0, v2

    const/16 p5, 0x10

    invoke-static {p3, p4, v0, p5, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p3, 0x20

    invoke-static {p2, v1, v0, p3, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->skinny_128_384_plus_enc([B[B)V

    return-void
.end method

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

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->finishAAD1(Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;)V

    return-void
.end method

.method g8A([B[BI)V
    .locals 6

    array-length v0, p2

    sub-int/2addr v0, p3

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    add-int v2, v1, p3

    aget-byte v3, p1, v1

    and-int/lit16 v4, v3, 0xff

    ushr-int/lit8 v4, v4, 0x1

    and-int/lit16 v5, v3, 0x80

    xor-int/2addr v4, v5

    and-int/lit8 v3, v3, 0x1

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
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

    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->npub:[B

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->k:[B

    return-void
.end method

.method lfsr_gf56([B)V
    .locals 7

    const/4 v0, 0x6

    aget-byte v1, p1, v0

    and-int/lit16 v2, v1, 0xff

    ushr-int/lit8 v2, v2, 0x7

    int-to-byte v2, v2

    and-int/lit16 v1, v1, 0xff

    const/4 v3, 0x1

    shl-int/2addr v1, v3

    const/4 v4, 0x5

    aget-byte v5, p1, v4

    and-int/lit16 v6, v5, 0xff

    ushr-int/lit8 v6, v6, 0x7

    or-int/2addr v1, v6

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    and-int/lit16 v0, v5, 0xff

    shl-int/2addr v0, v3

    const/4 v1, 0x4

    aget-byte v5, p1, v1

    and-int/lit16 v6, v5, 0xff

    ushr-int/lit8 v6, v6, 0x7

    or-int/2addr v0, v6

    int-to-byte v0, v0

    aput-byte v0, p1, v4

    and-int/lit16 v0, v5, 0xff

    shl-int/2addr v0, v3

    const/4 v4, 0x3

    aget-byte v5, p1, v4

    and-int/lit16 v6, v5, 0xff

    ushr-int/lit8 v6, v6, 0x7

    or-int/2addr v0, v6

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    and-int/lit16 v0, v5, 0xff

    shl-int/2addr v0, v3

    const/4 v1, 0x2

    aget-byte v5, p1, v1

    and-int/lit16 v6, v5, 0xff

    ushr-int/lit8 v6, v6, 0x7

    or-int/2addr v0, v6

    int-to-byte v0, v0

    aput-byte v0, p1, v4

    and-int/lit16 v0, v5, 0xff

    shl-int/2addr v0, v3

    aget-byte v4, p1, v3

    and-int/lit16 v5, v4, 0xff

    ushr-int/lit8 v5, v5, 0x7

    or-int/2addr v0, v5

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    and-int/lit16 v0, v4, 0xff

    shl-int/2addr v0, v3

    const/4 v1, 0x0

    aget-byte v4, p1, v1

    and-int/lit16 v5, v4, 0xff

    ushr-int/lit8 v5, v5, 0x7

    or-int/2addr v0, v5

    int-to-byte v0, v0

    aput-byte v0, p1, v3

    and-int/lit16 v0, v4, 0xff

    shl-int/2addr v0, v3

    if-ne v2, v3, :cond_0

    xor-int/lit16 v0, v0, 0x95

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    return-void

    :cond_0
    int-to-byte v0, v0

    aput-byte v0, p1, v1

    return-void
.end method

.method pad([BI[BII)V
    .locals 1

    add-int/lit8 p4, p4, -0x1

    and-int/lit8 v0, p5, 0xf

    int-to-byte v0, v0

    aput-byte v0, p3, p4

    const/4 p4, 0x0

    invoke-static {p1, p2, p3, p4, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

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
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->instance:Lorg/bouncycastle/crypto/engines/RomulusEngine$Instance;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/crypto/engines/RomulusEngine$Instance;->processBufferAAD([BI)V

    return-void
.end method

.method protected processBufferDecrypt([BI[BI)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->instance:Lorg/bouncycastle/crypto/engines/RomulusEngine$Instance;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/RomulusEngine$Instance;->processBufferDecrypt([BI[BI)V

    return-void
.end method

.method protected processBufferEncrypt([BI[BI)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->instance:Lorg/bouncycastle/crypto/engines/RomulusEngine$Instance;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/RomulusEngine$Instance;->processBufferEncrypt([BI[BI)V

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
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->instance:Lorg/bouncycastle/crypto/engines/RomulusEngine$Instance;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/engines/RomulusEngine$Instance;->processFinalAAD()V

    return-void
.end method

.method protected processFinalBlock([BI)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->instance:Lorg/bouncycastle/crypto/engines/RomulusEngine$Instance;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/crypto/engines/RomulusEngine$Instance;->processFinalBlock([BI)V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    invoke-super {p0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->reset()V

    return-void
.end method

.method protected reset(Z)V
    .locals 0

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->reset(Z)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->instance:Lorg/bouncycastle/crypto/engines/RomulusEngine$Instance;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/engines/RomulusEngine$Instance;->reset()V

    return-void
.end method

.method rho([BI[BI[BI)V
    .locals 7

    const/16 v0, 0x10

    new-array v4, v0, [B

    const/16 v5, 0x10

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v6, p6

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->pad([BI[BII)V

    invoke-virtual {p0, p5, p3, p4}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->g8A([B[BI)V

    iget-boolean p1, v1, Lorg/bouncycastle/crypto/engines/RomulusEngine;->forEncryption:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    move p1, p2

    :goto_0
    if-ge p1, v0, :cond_3

    aget-byte p6, p5, p1

    aget-byte v2, v4, p1

    xor-int/2addr p6, v2

    int-to-byte p6, p6

    aput-byte p6, p5, p1

    add-int p6, p1, p4

    if-ge p1, v6, :cond_0

    aget-byte v2, p3, p6

    aget-byte v3, v4, p1

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p3, p6

    goto :goto_1

    :cond_0
    aput-byte p2, p3, p6

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    if-ge p2, v0, :cond_3

    aget-byte p1, p5, p2

    aget-byte p6, v4, p2

    xor-int/2addr p1, p6

    int-to-byte p1, p1

    aput-byte p1, p5, p2

    if-ge p2, v6, :cond_2

    add-int p6, p2, p4

    array-length v2, p3

    if-ge p6, v2, :cond_2

    aget-byte v2, p3, p6

    xor-int/2addr p1, v2

    int-to-byte p1, p1

    aput-byte p1, p5, p2

    aget-byte p1, p3, p6

    aget-byte v2, v4, p2

    xor-int/2addr p1, v2

    int-to-byte p1, p1

    aput-byte p1, p3, p6

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method
