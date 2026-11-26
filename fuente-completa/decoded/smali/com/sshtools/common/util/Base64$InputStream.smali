.class public Lcom/sshtools/common/util/Base64$InputStream;
.super Ljava/io/FilterInputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputStream"
.end annotation


# instance fields
.field private buffer:[B

.field private bufferLength:I

.field private encode:Z

.field private numSigBytes:I

.field private position:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 474
    invoke-direct {p0, p1, v0}, Lcom/sshtools/common/util/Base64$InputStream;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 0

    .line 479
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 480
    iput-boolean p2, p0, Lcom/sshtools/common/util/Base64$InputStream;->encode:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    .line 481
    :goto_0
    iput p1, p0, Lcom/sshtools/common/util/Base64$InputStream;->bufferLength:I

    .line 482
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/sshtools/common/util/Base64$InputStream;->buffer:[B

    const/4 p1, -0x1

    .line 483
    iput p1, p0, Lcom/sshtools/common/util/Base64$InputStream;->position:I

    return-void
.end method


# virtual methods
.method public read()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 489
    iget v0, p0, Lcom/sshtools/common/util/Base64$InputStream;->position:I

    if-gez v0, :cond_8

    .line 490
    iget-boolean v0, p0, Lcom/sshtools/common/util/Base64$InputStream;->encode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    .line 491
    new-array v2, v0, [B

    .line 492
    iput v1, p0, Lcom/sshtools/common/util/Base64$InputStream;->numSigBytes:I

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_2

    .line 496
    :try_start_0
    iget-object v4, p0, Lcom/sshtools/common/util/Base64$InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    if-ltz v4, :cond_0

    int-to-byte v4, v4

    .line 500
    aput-byte v4, v2, v3

    .line 501
    iget v4, p0, Lcom/sshtools/common/util/Base64$InputStream;->numSigBytes:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/sshtools/common/util/Base64$InputStream;->numSigBytes:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    if-eqz v3, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 510
    :cond_1
    throw v4

    .line 518
    :cond_2
    iget v0, p0, Lcom/sshtools/common/util/Base64$InputStream;->numSigBytes:I

    if-lez v0, :cond_8

    .line 519
    iget-object v3, p0, Lcom/sshtools/common/util/Base64$InputStream;->buffer:[B

    invoke-static {v2, v1, v0, v3, v1}, Lcom/sshtools/common/util/Base64;->-$$Nest$smencode3to4([BII[BI)[B

    .line 520
    iput v1, p0, Lcom/sshtools/common/util/Base64$InputStream;->position:I

    goto :goto_4

    :cond_3
    const/4 v0, 0x4

    .line 528
    new-array v2, v0, [B

    move v3, v1

    :goto_2
    if-ge v3, v0, :cond_7

    .line 535
    :cond_4
    iget-object v4, p0, Lcom/sshtools/common/util/Base64$InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    if-ltz v4, :cond_5

    .line 536
    invoke-static {}, Lcom/sshtools/common/util/Base64;->-$$Nest$sfgetDECODABET()[B

    move-result-object v5

    and-int/lit8 v6, v4, 0x7f

    aget-byte v5, v5, v6

    const/4 v6, -0x5

    if-lt v5, v6, :cond_4

    :cond_5
    if-gez v4, :cond_6

    goto :goto_3

    :cond_6
    int-to-byte v4, v4

    .line 545
    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    if-ne v3, v0, :cond_8

    .line 550
    iget-object v0, p0, Lcom/sshtools/common/util/Base64$InputStream;->buffer:[B

    invoke-static {v2, v1, v0, v1}, Lcom/sshtools/common/util/Base64;->-$$Nest$smdecode4to3([BI[BI)I

    move-result v0

    iput v0, p0, Lcom/sshtools/common/util/Base64$InputStream;->numSigBytes:I

    .line 551
    iput v1, p0, Lcom/sshtools/common/util/Base64$InputStream;->position:I

    .line 562
    :cond_8
    :goto_4
    iget v0, p0, Lcom/sshtools/common/util/Base64$InputStream;->position:I

    const/4 v1, -0x1

    if-ltz v0, :cond_b

    .line 564
    iget-boolean v2, p0, Lcom/sshtools/common/util/Base64$InputStream;->encode:Z

    if-nez v2, :cond_9

    iget v2, p0, Lcom/sshtools/common/util/Base64$InputStream;->numSigBytes:I

    if-lt v0, v2, :cond_9

    return v1

    .line 568
    :cond_9
    iget-object v2, p0, Lcom/sshtools/common/util/Base64$InputStream;->buffer:[B

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/sshtools/common/util/Base64$InputStream;->position:I

    aget-byte v0, v2, v0

    .line 570
    iget v2, p0, Lcom/sshtools/common/util/Base64$InputStream;->bufferLength:I

    if-lt v3, v2, :cond_a

    .line 571
    iput v1, p0, Lcom/sshtools/common/util/Base64$InputStream;->position:I

    :cond_a
    return v0

    :cond_b
    return v1
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    .line 588
    invoke-virtual {p0}, Lcom/sshtools/common/util/Base64$InputStream;->read()I

    move-result v1

    if-gez v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    add-int v2, p2, v0

    int-to-byte v1, v1

    .line 594
    aput-byte v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
