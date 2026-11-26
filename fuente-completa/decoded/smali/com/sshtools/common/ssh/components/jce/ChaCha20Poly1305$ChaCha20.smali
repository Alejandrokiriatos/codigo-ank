.class public Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20;
.super Ljava/lang/Object;
.source "ChaCha20Poly1305.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChaCha20"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20$WrongKeySizeException;,
        Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20$WrongNonceSizeException;
    }
.end annotation


# static fields
.field public static final KEY_SIZE:I = 0x20

.field public static final NONCE_SIZE_IETF:I = 0xc

.field public static final NONCE_SIZE_REF:I = 0x8


# instance fields
.field private matrix:[I


# direct methods
.method public constructor <init>([B[BI)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20$WrongKeySizeException;,
            Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20$WrongNonceSizeException;
        }
    .end annotation

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 258
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20;->matrix:[I

    .line 288
    array-length v2, p1

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2

    const v2, 0x61707865

    const/4 v3, 0x0

    .line 292
    aput v2, v1, v3

    const/4 v2, 0x1

    const v4, 0x3320646e

    .line 293
    aput v4, v1, v2

    const/4 v2, 0x2

    const v4, 0x79622d32

    .line 294
    aput v4, v1, v2

    const/4 v2, 0x3

    const v4, 0x6b206574

    .line 295
    aput v4, v1, v2

    .line 296
    invoke-static {p1, v3}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->littleEndianToInt([BI)I

    move-result v2

    const/4 v4, 0x4

    aput v2, v1, v4

    .line 297
    iget-object v1, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20;->matrix:[I

    const/4 v2, 0x5

    invoke-static {p1, v4}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->littleEndianToInt([BI)I

    move-result v5

    aput v5, v1, v2

    .line 298
    iget-object v1, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20;->matrix:[I

    const/4 v2, 0x6

    const/16 v5, 0x8

    invoke-static {p1, v5}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->littleEndianToInt([BI)I

    move-result v6

    aput v6, v1, v2

    .line 299
    iget-object v1, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20;->matrix:[I

    const/4 v2, 0x7

    const/16 v6, 0xc

    invoke-static {p1, v6}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->littleEndianToInt([BI)I

    move-result v7

    aput v7, v1, v2

    .line 300
    iget-object v1, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20;->matrix:[I

    invoke-static {p1, v0}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->littleEndianToInt([BI)I

    move-result v0

    aput v0, v1, v5

    .line 301
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20;->matrix:[I

    const/16 v1, 0x14

    invoke-static {p1, v1}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->littleEndianToInt([BI)I

    move-result v1

    const/16 v2, 0x9

    aput v1, v0, v2

    .line 302
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20;->matrix:[I

    const/16 v1, 0x18

    invoke-static {p1, v1}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->littleEndianToInt([BI)I

    move-result v1

    const/16 v2, 0xa

    aput v1, v0, v2

    .line 303
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20;->matrix:[I

    const/16 v1, 0x1c

    invoke-static {p1, v1}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->littleEndianToInt([BI)I

    move-result p1

    const/16 v1, 0xb

    aput p1, v0, v1

    .line 305
    array-length p1, p2

    const/16 v0, 0xf

    const/16 v1, 0xe

    const/16 v2, 0xd

    if-ne p1, v5, :cond_0

    .line 306
    iget-object p1, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20;->matrix:[I

    aput p3, p1, v6

    .line 307
    aput v3, p1, v2

    .line 308
    invoke-static {p2, v3}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->littleEndianToInt([BI)I

    move-result p3

    aput p3, p1, v1

    .line 309
    iget-object p1, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20;->matrix:[I

    invoke-static {p2, v4}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->littleEndianToInt([BI)I

    move-result p2

    aput p2, p1, v0

    return-void

    .line 311
    :cond_0
    array-length p1, p2

    if-ne p1, v6, :cond_1

    .line 312
    iget-object p1, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20;->matrix:[I

    aput p3, p1, v6

    .line 313
    invoke-static {p2, v3}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->littleEndianToInt([BI)I

    move-result p3

    aput p3, p1, v2

    .line 314
    iget-object p1, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20;->matrix:[I

    invoke-static {p2, v4}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->littleEndianToInt([BI)I

    move-result p3

    aput p3, p1, v1

    .line 315
    iget-object p1, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20;->matrix:[I

    invoke-static {p2, v5}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->littleEndianToInt([BI)I

    move-result p2

    aput p2, p1, v0

    return-void

    .line 317
    :cond_1
    new-instance p1, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20$WrongNonceSizeException;

    invoke-direct {p1, p0}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20$WrongNonceSizeException;-><init>(Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20;)V

    throw p1

    .line 289
    :cond_2
    new-instance p1, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20$WrongKeySizeException;

    invoke-direct {p1, p0}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20$WrongKeySizeException;-><init>(Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20;)V

    throw p1
.end method


# virtual methods
.method protected ROTATE(II)I
    .locals 1

    shl-int v0, p1, p2

    rsub-int/lit8 p2, p2, 0x20

    ushr-int/2addr p1, p2

    or-int/2addr p1, v0

    return p1
.end method

.method public encrypt([BI[BII)V
    .locals 13

    const/16 v0, 0x10

    .line 322
    new-array v2, v0, [I

    const/16 v7, 0x40

    .line 323
    new-array v8, v7, [B

    const/4 v1, 0x0

    move/from16 v9, p5

    move v10, v1

    move v11, v10

    :goto_0
    if-lez v9, :cond_7

    move v1, v0

    :goto_1
    add-int/lit8 v3, v1, -0x1

    if-lez v1, :cond_0

    .line 327
    iget-object v1, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20;->matrix:[I

    aget v1, v1, v3

    aput v1, v2, v3

    move v1, v3

    goto :goto_1

    :cond_0
    const/16 v1, 0x14

    move v12, v1

    :goto_2
    if-lez v12, :cond_1

    const/16 v5, 0x8

    const/16 v6, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x4

    move-object v1, p0

    .line 329
    invoke-virtual/range {v1 .. v6}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20;->quarterRound([IIIII)V

    const/16 v5, 0x9

    const/16 v6, 0xd

    const/4 v3, 0x1

    const/4 v4, 0x5

    .line 330
    invoke-virtual/range {v1 .. v6}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20;->quarterRound([IIIII)V

    const/16 v5, 0xa

    const/16 v6, 0xe

    const/4 v3, 0x2

    const/4 v4, 0x6

    .line 331
    invoke-virtual/range {v1 .. v6}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20;->quarterRound([IIIII)V

    const/16 v5, 0xb

    const/16 v6, 0xf

    const/4 v3, 0x3

    const/4 v4, 0x7

    .line 332
    invoke-virtual/range {v1 .. v6}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20;->quarterRound([IIIII)V

    const/16 v5, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x5

    .line 333
    invoke-virtual/range {v1 .. v6}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20;->quarterRound([IIIII)V

    const/16 v5, 0xb

    const/16 v6, 0xc

    const/4 v3, 0x1

    const/4 v4, 0x6

    .line 334
    invoke-virtual/range {v1 .. v6}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20;->quarterRound([IIIII)V

    const/16 v5, 0x8

    const/16 v6, 0xd

    const/4 v3, 0x2

    const/4 v4, 0x7

    .line 335
    invoke-virtual/range {v1 .. v6}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20;->quarterRound([IIIII)V

    const/16 v5, 0x9

    const/16 v6, 0xe

    const/4 v3, 0x3

    const/4 v4, 0x4

    .line 336
    invoke-virtual/range {v1 .. v6}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20;->quarterRound([IIIII)V

    add-int/lit8 v12, v12, -0x2

    goto :goto_2

    :cond_1
    move v3, v0

    :goto_3
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_2

    .line 338
    aget v3, v2, v4

    iget-object v5, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20;->matrix:[I

    aget v5, v5, v4

    add-int/2addr v3, v5

    aput v3, v2, v4

    move v3, v4

    goto :goto_3

    :cond_2
    move v3, v0

    :goto_4
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_3

    .line 339
    aget v3, v2, v4

    mul-int/lit8 v5, v4, 0x4

    invoke-static {v3, v8, v5}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->intToLittleEndian(I[BI)V

    move v3, v4

    goto :goto_4

    .line 342
    :cond_3
    iget-object v3, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20;->matrix:[I

    const/16 v4, 0xc

    aget v5, v3, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    if-gtz v5, :cond_4

    const/16 v4, 0xd

    .line 344
    aget v5, v3, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    :cond_4
    if-gt v9, v7, :cond_5

    :goto_5
    add-int/lit8 v0, v9, -0x1

    if-lez v9, :cond_7

    add-int v2, p2, v0

    add-int/2addr v2, v10

    add-int v3, p4, v0

    add-int/2addr v3, v11

    .line 348
    aget-byte v3, p3, v3

    aget-byte v4, v8, v0

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    move v9, v0

    goto :goto_5

    :cond_5
    move v3, v7

    :goto_6
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_6

    add-int v3, p2, v4

    add-int/2addr v3, v10

    add-int v5, p4, v4

    add-int/2addr v5, v11

    .line 353
    aget-byte v5, p3, v5

    aget-byte v6, v8, v4

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v3

    move v3, v4

    goto :goto_6

    :cond_6
    add-int/lit8 v9, v9, -0x40

    add-int/lit8 v11, v11, 0x40

    add-int/lit8 v10, v10, 0x40

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method protected quarterRound([IIIII)V
    .locals 2

    .line 266
    aget v0, p1, p2

    aget v1, p1, p3

    add-int/2addr v0, v1

    aput v0, p1, p2

    .line 267
    aget v1, p1, p5

    xor-int/2addr v0, v1

    const/16 v1, 0x10

    invoke-virtual {p0, v0, v1}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20;->ROTATE(II)I

    move-result v0

    aput v0, p1, p5

    .line 268
    aget v1, p1, p4

    add-int/2addr v1, v0

    aput v1, p1, p4

    .line 269
    aget v0, p1, p3

    xor-int/2addr v0, v1

    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20;->ROTATE(II)I

    move-result v0

    aput v0, p1, p3

    .line 270
    aget v1, p1, p2

    add-int/2addr v1, v0

    aput v1, p1, p2

    .line 271
    aget p2, p1, p5

    xor-int/2addr p2, v1

    const/16 v0, 0x8

    invoke-virtual {p0, p2, v0}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20;->ROTATE(II)I

    move-result p2

    aput p2, p1, p5

    .line 272
    aget p5, p1, p4

    add-int/2addr p5, p2

    aput p5, p1, p4

    .line 273
    aget p2, p1, p3

    xor-int/2addr p2, p5

    const/4 p4, 0x7

    invoke-virtual {p0, p2, p4}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20;->ROTATE(II)I

    move-result p2

    aput p2, p1, p3

    return-void
.end method
