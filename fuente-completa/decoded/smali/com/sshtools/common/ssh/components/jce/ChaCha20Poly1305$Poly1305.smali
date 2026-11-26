.class public Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;
.super Ljava/lang/Object;
.source "ChaCha20Poly1305.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Poly1305"
.end annotation


# static fields
.field private static final BLOCK_SIZE:I = 0x10


# instance fields
.field private final currentBlock:[B

.field private currentBlockOffset:I

.field private h0:I

.field private h1:I

.field private h2:I

.field private h3:I

.field private h4:I

.field private k0:I

.field private k1:I

.field private k2:I

.field private k3:I

.field private r0:I

.field private r1:I

.field private r2:I

.field private r3:I

.field private r4:I

.field private s1:I

.field private s2:I

.field private s3:I

.field private s4:I

.field private final singleByte:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 381
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->singleByte:[B

    const/16 v0, 0x10

    .line 397
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->currentBlock:[B

    const/4 v0, 0x0

    .line 400
    iput v0, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->currentBlockOffset:I

    return-void
.end method

.method private static final mul32x32_64(II)J
    .locals 4

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long p0, p1

    mul-long/2addr v0, p0

    return-wide v0
.end method

.method private processBlock()V
    .locals 20

    move-object/from16 v0, p0

    .line 506
    iget v1, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->currentBlockOffset:I

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-ge v1, v3, :cond_0

    .line 508
    iget-object v4, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->currentBlock:[B

    const/4 v5, 0x1

    aput-byte v5, v4, v1

    add-int/2addr v1, v5

    :goto_0
    if-ge v1, v3, :cond_0

    .line 511
    iget-object v4, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->currentBlock:[B

    aput-byte v2, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 515
    :cond_0
    iget-object v1, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->currentBlock:[B

    invoke-static {v1, v2}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->littleEndianToInt([BI)I

    move-result v1

    int-to-long v1, v1

    const-wide v4, 0xffffffffL

    and-long v6, v1, v4

    .line 516
    iget-object v8, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->currentBlock:[B

    const/4 v9, 0x4

    invoke-static {v8, v9}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->littleEndianToInt([BI)I

    move-result v8

    int-to-long v8, v8

    and-long/2addr v8, v4

    .line 517
    iget-object v10, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->currentBlock:[B

    const/16 v11, 0x8

    invoke-static {v10, v11}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->littleEndianToInt([BI)I

    move-result v10

    int-to-long v12, v10

    and-long/2addr v12, v4

    .line 518
    iget-object v10, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->currentBlock:[B

    const/16 v14, 0xc

    invoke-static {v10, v14}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->littleEndianToInt([BI)I

    move-result v10

    int-to-long v14, v10

    and-long/2addr v4, v14

    .line 520
    iget v10, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h0:I

    int-to-long v14, v10

    const-wide/32 v16, 0x3ffffff

    and-long v1, v1, v16

    add-long/2addr v14, v1

    long-to-int v1, v14

    iput v1, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h0:I

    .line 521
    iget v2, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h1:I

    int-to-long v14, v2

    const/16 v2, 0x20

    shl-long v18, v8, v2

    or-long v6, v18, v6

    const/16 v10, 0x1a

    ushr-long/2addr v6, v10

    and-long v6, v6, v16

    add-long/2addr v14, v6

    long-to-int v6, v14

    iput v6, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h1:I

    .line 522
    iget v6, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h2:I

    int-to-long v6, v6

    shl-long v14, v12, v2

    or-long/2addr v8, v14

    const/16 v14, 0x14

    ushr-long/2addr v8, v14

    and-long v8, v8, v16

    add-long/2addr v6, v8

    long-to-int v6, v6

    iput v6, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h2:I

    .line 523
    iget v6, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h3:I

    int-to-long v6, v6

    shl-long v8, v4, v2

    or-long/2addr v8, v12

    const/16 v2, 0xe

    ushr-long/2addr v8, v2

    and-long v8, v8, v16

    add-long/2addr v6, v8

    long-to-int v2, v6

    iput v2, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h3:I

    .line 524
    iget v2, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h4:I

    int-to-long v6, v2

    ushr-long/2addr v4, v11

    add-long/2addr v6, v4

    long-to-int v2, v6

    iput v2, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h4:I

    .line 526
    iget v4, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->currentBlockOffset:I

    if-ne v4, v3, :cond_1

    const/high16 v3, 0x1000000

    add-int/2addr v2, v3

    .line 528
    iput v2, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h4:I

    .line 531
    :cond_1
    iget v2, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->r0:I

    invoke-static {v1, v2}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->mul32x32_64(II)J

    move-result-wide v1

    iget v3, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h1:I

    iget v4, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->s4:I

    invoke-static {v3, v4}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->mul32x32_64(II)J

    move-result-wide v3

    add-long/2addr v1, v3

    iget v3, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h2:I

    iget v4, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->s3:I

    invoke-static {v3, v4}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->mul32x32_64(II)J

    move-result-wide v3

    add-long/2addr v1, v3

    iget v3, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h3:I

    iget v4, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->s2:I

    invoke-static {v3, v4}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->mul32x32_64(II)J

    move-result-wide v3

    add-long/2addr v1, v3

    iget v3, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h4:I

    iget v4, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->s1:I

    invoke-static {v3, v4}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->mul32x32_64(II)J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 532
    iget v3, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h0:I

    iget v4, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->r1:I

    invoke-static {v3, v4}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->mul32x32_64(II)J

    move-result-wide v3

    iget v5, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h1:I

    iget v6, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->r0:I

    invoke-static {v5, v6}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->mul32x32_64(II)J

    move-result-wide v5

    add-long/2addr v3, v5

    iget v5, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h2:I

    iget v6, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->s4:I

    invoke-static {v5, v6}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->mul32x32_64(II)J

    move-result-wide v5

    add-long/2addr v3, v5

    iget v5, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h3:I

    iget v6, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->s3:I

    invoke-static {v5, v6}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->mul32x32_64(II)J

    move-result-wide v5

    add-long/2addr v3, v5

    iget v5, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h4:I

    iget v6, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->s2:I

    invoke-static {v5, v6}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->mul32x32_64(II)J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 533
    iget v5, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h0:I

    iget v6, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->r2:I

    invoke-static {v5, v6}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->mul32x32_64(II)J

    move-result-wide v5

    iget v7, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h1:I

    iget v8, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->r1:I

    invoke-static {v7, v8}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->mul32x32_64(II)J

    move-result-wide v7

    add-long/2addr v5, v7

    iget v7, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h2:I

    iget v8, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->r0:I

    invoke-static {v7, v8}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->mul32x32_64(II)J

    move-result-wide v7

    add-long/2addr v5, v7

    iget v7, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h3:I

    iget v8, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->s4:I

    invoke-static {v7, v8}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->mul32x32_64(II)J

    move-result-wide v7

    add-long/2addr v5, v7

    iget v7, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h4:I

    iget v8, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->s3:I

    invoke-static {v7, v8}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->mul32x32_64(II)J

    move-result-wide v7

    add-long/2addr v5, v7

    .line 534
    iget v7, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h0:I

    iget v8, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->r3:I

    invoke-static {v7, v8}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->mul32x32_64(II)J

    move-result-wide v7

    iget v9, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h1:I

    iget v11, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->r2:I

    invoke-static {v9, v11}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->mul32x32_64(II)J

    move-result-wide v11

    add-long/2addr v7, v11

    iget v9, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h2:I

    iget v11, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->r1:I

    invoke-static {v9, v11}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->mul32x32_64(II)J

    move-result-wide v11

    add-long/2addr v7, v11

    iget v9, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h3:I

    iget v11, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->r0:I

    invoke-static {v9, v11}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->mul32x32_64(II)J

    move-result-wide v11

    add-long/2addr v7, v11

    iget v9, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h4:I

    iget v11, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->s4:I

    invoke-static {v9, v11}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->mul32x32_64(II)J

    move-result-wide v11

    add-long/2addr v7, v11

    .line 535
    iget v9, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h0:I

    iget v11, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->r4:I

    invoke-static {v9, v11}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->mul32x32_64(II)J

    move-result-wide v11

    iget v9, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h1:I

    iget v13, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->r3:I

    invoke-static {v9, v13}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->mul32x32_64(II)J

    move-result-wide v13

    add-long/2addr v11, v13

    iget v9, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h2:I

    iget v13, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->r2:I

    invoke-static {v9, v13}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->mul32x32_64(II)J

    move-result-wide v13

    add-long/2addr v11, v13

    iget v9, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h3:I

    iget v13, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->r1:I

    invoke-static {v9, v13}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->mul32x32_64(II)J

    move-result-wide v13

    add-long/2addr v11, v13

    iget v9, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h4:I

    iget v13, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->r0:I

    invoke-static {v9, v13}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->mul32x32_64(II)J

    move-result-wide v13

    add-long/2addr v11, v13

    long-to-int v9, v1

    const v13, 0x3ffffff

    and-int/2addr v9, v13

    ushr-long/2addr v1, v10

    add-long/2addr v3, v1

    long-to-int v1, v3

    and-int/2addr v1, v13

    ushr-long v2, v3, v10

    add-long/2addr v5, v2

    long-to-int v2, v5

    and-int/2addr v2, v13

    .line 539
    iput v2, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h2:I

    ushr-long v2, v5, v10

    add-long/2addr v7, v2

    long-to-int v2, v7

    and-int/2addr v2, v13

    .line 540
    iput v2, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h3:I

    ushr-long v2, v7, v10

    add-long/2addr v11, v2

    long-to-int v2, v11

    and-int/2addr v2, v13

    .line 541
    iput v2, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h4:I

    ushr-long v2, v11, v10

    long-to-int v2, v2

    mul-int/lit8 v2, v2, 0x5

    add-int/2addr v9, v2

    ushr-int/lit8 v2, v9, 0x1a

    add-int/2addr v1, v2

    .line 543
    iput v1, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h1:I

    and-int v1, v9, v13

    iput v1, v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h0:I

    return-void
.end method

.method private setKey([B)V
    .locals 7

    .line 430
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 436
    invoke-static {p1, v0}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->littleEndianToInt([BI)I

    move-result v0

    const/4 v1, 0x4

    .line 437
    invoke-static {p1, v1}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->littleEndianToInt([BI)I

    move-result v1

    const/16 v2, 0x8

    .line 438
    invoke-static {p1, v2}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->littleEndianToInt([BI)I

    move-result v3

    const/16 v4, 0xc

    .line 439
    invoke-static {p1, v4}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->littleEndianToInt([BI)I

    move-result v4

    const v5, 0x3ffffff

    and-int/2addr v5, v0

    .line 442
    iput v5, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->r0:I

    ushr-int/lit8 v0, v0, 0x1a

    shl-int/lit8 v5, v1, 0x6

    or-int/2addr v0, v5

    const v5, 0x3ffff03

    and-int/2addr v0, v5

    .line 443
    iput v0, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->r1:I

    const/16 v5, 0x14

    ushr-int/2addr v1, v5

    shl-int/lit8 v6, v3, 0xc

    or-int/2addr v1, v6

    const v6, 0x3ffc0ff

    and-int/2addr v1, v6

    .line 444
    iput v1, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->r2:I

    ushr-int/lit8 v3, v3, 0xe

    shl-int/lit8 v6, v4, 0x12

    or-int/2addr v3, v6

    const v6, 0x3f03fff

    and-int/2addr v3, v6

    .line 445
    iput v3, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->r3:I

    ushr-int/lit8 v2, v4, 0x8

    const v4, 0xfffff

    and-int/2addr v2, v4

    .line 446
    iput v2, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->r4:I

    mul-int/lit8 v0, v0, 0x5

    .line 449
    iput v0, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->s1:I

    mul-int/lit8 v1, v1, 0x5

    .line 450
    iput v1, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->s2:I

    mul-int/lit8 v3, v3, 0x5

    .line 451
    iput v3, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->s3:I

    mul-int/lit8 v2, v2, 0x5

    .line 452
    iput v2, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->s4:I

    const/16 v0, 0x10

    .line 460
    invoke-static {p1, v0}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->littleEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->k0:I

    .line 461
    invoke-static {p1, v5}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->littleEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->k1:I

    const/16 v0, 0x18

    .line 462
    invoke-static {p1, v0}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->littleEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->k2:I

    const/16 v0, 0x1c

    .line 463
    invoke-static {p1, v0}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->littleEndianToInt([BI)I

    move-result p1

    iput p1, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->k3:I

    return-void

    .line 432
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Poly1305 key must be 256 bits."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    add-int/lit8 v0, p2, 0x10

    .line 550
    array-length v1, p1

    if-gt v0, v1, :cond_1

    .line 555
    iget v0, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->currentBlockOffset:I

    if-lez v0, :cond_0

    .line 558
    invoke-direct {p0}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->processBlock()V

    .line 561
    :cond_0
    iget v0, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h1:I

    iget v1, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h0:I

    ushr-int/lit8 v2, v1, 0x1a

    add-int/2addr v0, v2

    const v2, 0x3ffffff

    and-int/2addr v1, v2

    .line 562
    iget v3, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h2:I

    ushr-int/lit8 v4, v0, 0x1a

    add-int/2addr v3, v4

    and-int/2addr v0, v2

    .line 563
    iget v4, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h3:I

    ushr-int/lit8 v5, v3, 0x1a

    add-int/2addr v4, v5

    and-int/2addr v3, v2

    .line 564
    iget v5, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h4:I

    ushr-int/lit8 v6, v4, 0x1a

    add-int/2addr v5, v6

    and-int/2addr v4, v2

    ushr-int/lit8 v6, v5, 0x1a

    mul-int/lit8 v6, v6, 0x5

    add-int/2addr v1, v6

    and-int/2addr v5, v2

    ushr-int/lit8 v6, v1, 0x1a

    add-int/2addr v0, v6

    and-int/2addr v1, v2

    add-int/lit8 v6, v1, 0x5

    ushr-int/lit8 v7, v6, 0x1a

    and-int/2addr v6, v2

    add-int/2addr v7, v0

    ushr-int/lit8 v8, v7, 0x1a

    and-int/2addr v7, v2

    add-int/2addr v8, v3

    ushr-int/lit8 v9, v8, 0x1a

    and-int/2addr v8, v2

    add-int/2addr v9, v4

    ushr-int/lit8 v10, v9, 0x1a

    and-int/2addr v2, v9

    add-int/2addr v10, v5

    const/high16 v9, 0x4000000

    sub-int/2addr v10, v9

    ushr-int/lit8 v9, v10, 0x1f

    add-int/lit8 v9, v9, -0x1

    not-int v11, v9

    and-int/2addr v1, v11

    and-int/2addr v6, v9

    or-int/2addr v1, v6

    .line 577
    iput v1, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h0:I

    and-int/2addr v0, v11

    and-int v6, v7, v9

    or-int/2addr v0, v6

    .line 578
    iput v0, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h1:I

    and-int/2addr v3, v11

    and-int v6, v8, v9

    or-int/2addr v3, v6

    .line 579
    iput v3, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h2:I

    and-int/2addr v4, v11

    and-int/2addr v2, v9

    or-int/2addr v2, v4

    .line 580
    iput v2, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h3:I

    and-int v4, v5, v11

    and-int v5, v10, v9

    or-int/2addr v4, v5

    .line 581
    iput v4, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h4:I

    shl-int/lit8 v5, v0, 0x1a

    or-int/2addr v1, v5

    int-to-long v5, v1

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    .line 584
    iget v1, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->k0:I

    int-to-long v9, v1

    and-long/2addr v9, v7

    add-long/2addr v5, v9

    ushr-int/lit8 v0, v0, 0x6

    shl-int/lit8 v1, v3, 0x14

    or-int/2addr v0, v1

    int-to-long v0, v0

    and-long/2addr v0, v7

    .line 585
    iget v9, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->k1:I

    int-to-long v9, v9

    and-long/2addr v9, v7

    add-long/2addr v0, v9

    ushr-int/lit8 v3, v3, 0xc

    shl-int/lit8 v9, v2, 0xe

    or-int/2addr v3, v9

    int-to-long v9, v3

    and-long/2addr v9, v7

    .line 586
    iget v3, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->k2:I

    int-to-long v11, v3

    and-long/2addr v11, v7

    add-long/2addr v9, v11

    ushr-int/lit8 v2, v2, 0x12

    shl-int/lit8 v3, v4, 0x8

    or-int/2addr v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v7

    .line 587
    iget v4, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->k3:I

    int-to-long v11, v4

    and-long/2addr v7, v11

    add-long/2addr v2, v7

    long-to-int v4, v5

    .line 589
    invoke-static {v4, p1, p2}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->intToLittleEndian(I[BI)V

    const/16 v4, 0x20

    ushr-long/2addr v5, v4

    add-long/2addr v0, v5

    long-to-int v5, v0

    add-int/lit8 v6, p2, 0x4

    .line 591
    invoke-static {v5, p1, v6}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->intToLittleEndian(I[BI)V

    ushr-long/2addr v0, v4

    add-long/2addr v9, v0

    long-to-int v0, v9

    add-int/lit8 v1, p2, 0x8

    .line 593
    invoke-static {v0, p1, v1}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->intToLittleEndian(I[BI)V

    ushr-long v0, v9, v4

    add-long/2addr v2, v0

    long-to-int v0, v2

    add-int/lit8 p2, p2, 0xc

    .line 595
    invoke-static {v0, p1, p2}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->intToLittleEndian(I[BI)V

    .line 597
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->reset()V

    const/16 p1, 0x10

    return p1

    .line 552
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Output buffer is too short."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 468
    const-string v0, "Poly1305"

    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public init([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 424
    invoke-direct {p0, p1}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->setKey([B)V

    .line 425
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->reset()V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 603
    iput v0, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->currentBlockOffset:I

    .line 605
    iput v0, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h4:I

    iput v0, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h3:I

    iput v0, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h2:I

    iput v0, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h1:I

    iput v0, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->h0:I

    return-void
.end method

.method public update(B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 479
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->singleByte:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    .line 480
    invoke-virtual {p0, v0, v1, p1}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->update([BII)V

    return-void
.end method

.method public update([BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-le p3, v1, :cond_1

    .line 490
    iget v2, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->currentBlockOffset:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    .line 492
    invoke-direct {p0}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->processBlock()V

    .line 493
    iput v0, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->currentBlockOffset:I

    :cond_0
    sub-int v2, p3, v1

    .line 496
    iget v4, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->currentBlockOffset:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int v3, v1, p2

    .line 497
    iget-object v4, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->currentBlock:[B

    iget v5, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->currentBlockOffset:I

    invoke-static {p1, v3, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v2

    .line 499
    iget v3, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->currentBlockOffset:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->currentBlockOffset:I

    goto :goto_0

    :cond_1
    return-void
.end method
