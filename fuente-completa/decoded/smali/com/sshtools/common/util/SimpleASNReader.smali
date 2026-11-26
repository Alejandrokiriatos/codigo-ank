.class public Lcom/sshtools/common/util/SimpleASNReader;
.super Ljava/lang/Object;
.source "SimpleASNReader.java"


# instance fields
.field private data:[B

.field private offset:I


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/sshtools/common/util/SimpleASNReader;->data:[B

    const/4 p1, 0x0

    .line 43
    iput p1, p0, Lcom/sshtools/common/util/SimpleASNReader;->offset:I

    return-void
.end method

.method private getData(I)[B
    .locals 4

    .line 106
    new-array v0, p1, [B

    .line 107
    iget-object v1, p0, Lcom/sshtools/common/util/SimpleASNReader;->data:[B

    iget v2, p0, Lcom/sshtools/common/util/SimpleASNReader;->offset:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    iget v1, p0, Lcom/sshtools/common/util/SimpleASNReader;->offset:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/sshtools/common/util/SimpleASNReader;->offset:I

    return-object v0
.end method


# virtual methods
.method public assertByte(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lcom/sshtools/common/util/SimpleASNReader;->getByte()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 57
    :cond_0
    new-instance v1, Ljava/io/IOException;

    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Assertion failed, next byte value is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " instead of asserted "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getByte()I
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/sshtools/common/util/SimpleASNReader;->data:[B

    iget v1, p0, Lcom/sshtools/common/util/SimpleASNReader;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sshtools/common/util/SimpleASNReader;->offset:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getData()[B
    .locals 1

    .line 78
    invoke-virtual {p0}, Lcom/sshtools/common/util/SimpleASNReader;->getLength()I

    move-result v0

    .line 80
    invoke-direct {p0, v0}, Lcom/sshtools/common/util/SimpleASNReader;->getData(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getLength()I
    .locals 5

    .line 89
    iget-object v0, p0, Lcom/sshtools/common/util/SimpleASNReader;->data:[B

    iget v1, p0, Lcom/sshtools/common/util/SimpleASNReader;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sshtools/common/util/SimpleASNReader;->offset:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xff

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_0

    and-int/lit8 v0, v0, 0x7f

    const/4 v1, 0x0

    :goto_0
    if-lez v0, :cond_0

    shl-int/lit8 v1, v1, 0x8

    .line 96
    iget-object v2, p0, Lcom/sshtools/common/util/SimpleASNReader;->data:[B

    iget v3, p0, Lcom/sshtools/common/util/SimpleASNReader;->offset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/sshtools/common/util/SimpleASNReader;->offset:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public hasMoreData()Z
    .locals 2

    .line 119
    iget v0, p0, Lcom/sshtools/common/util/SimpleASNReader;->offset:I

    iget-object v1, p0, Lcom/sshtools/common/util/SimpleASNReader;->data:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
