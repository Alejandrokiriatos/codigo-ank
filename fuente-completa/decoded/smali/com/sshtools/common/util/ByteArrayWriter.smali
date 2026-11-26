.class public Lcom/sshtools/common/util/ByteArrayWriter;
.super Ljava/io/ByteArrayOutputStream;
.source "ByteArrayWriter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method

.method public static encodeInt([BII)V
    .locals 3

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    .line 201
    aput-byte v1, p0, p1

    add-int/lit8 v1, p1, 0x2

    shr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    .line 202
    aput-byte v2, p0, v0

    add-int/lit8 p1, p1, 0x3

    shr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    .line 203
    aput-byte v0, p0, v1

    int-to-byte p2, p2

    .line 204
    aput-byte p2, p0, p1

    return-void
.end method

.method public static encodeInt(I)[B
    .locals 5

    shr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    int-to-byte p0, p0

    const/4 v3, 0x4

    .line 177
    new-array v3, v3, [B

    const/4 v4, 0x0

    aput-byte v0, v3, v4

    const/4 v0, 0x1

    aput-byte v1, v3, v0

    const/4 v0, 0x2

    aput-byte v2, v3, v0

    const/4 v0, 0x3

    aput-byte p0, v3, v0

    return-object v3
.end method

.method public static encodeInt(J)[B
    .locals 4

    const/16 v0, 0x18

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x10

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x8

    shr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    long-to-int p0, p0

    int-to-byte p0, p0

    const/4 p1, 0x4

    .line 186
    new-array p1, p1, [B

    const/4 v3, 0x0

    aput-byte v0, p1, v3

    const/4 v0, 0x1

    aput-byte v1, p1, v0

    const/4 v0, 0x2

    aput-byte v2, p1, v0

    const/4 v0, 0x3

    aput-byte p0, p1, v0

    return-object p1
.end method

.method public static encodeInt(Lcom/sshtools/common/util/UnsignedInteger32;)[B
    .locals 5

    .line 192
    invoke-virtual {p0}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v0

    const/16 p0, 0x18

    shr-long v2, v0, p0

    long-to-int p0, v2

    int-to-byte p0, p0

    const/16 v2, 0x10

    shr-long v2, v0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    const/16 v3, 0x8

    shr-long v3, v0, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    long-to-int v0, v0

    int-to-byte v0, v0

    const/4 v1, 0x4

    .line 196
    new-array v1, v1, [B

    const/4 v4, 0x0

    aput-byte p0, v1, v4

    const/4 p0, 0x1

    aput-byte v2, v1, p0

    const/4 p0, 0x2

    aput-byte v3, v1, p0

    const/4 p0, 0x3

    aput-byte v0, v1, p0

    return-object v1
.end method

.method public static encodeString(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    new-instance v0, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v0}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V

    .line 299
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 298
    :try_start_1
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public static stripLeadingZeros([B)[B
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 221
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 222
    aget-byte v2, p0, v1

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-lez v1, :cond_2

    .line 227
    array-length v2, p0

    sub-int/2addr v2, v1

    new-array v3, v2, [B

    .line 228
    invoke-static {p0, v1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3

    :cond_2
    return-object p0
.end method


# virtual methods
.method public array()[B
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/sshtools/common/util/ByteArrayWriter;->buf:[B

    return-object v0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    .line 294
    iput-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    return-void
.end method

.method public move(I)V
    .locals 1

    .line 65
    iget v0, p0, Lcom/sshtools/common/util/ByteArrayWriter;->count:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sshtools/common/util/ByteArrayWriter;->count:I

    return-void
.end method

.method public silentClose()V
    .locals 0

    .line 288
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public writeBigInteger(Ljava/math/BigInteger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    .line 76
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/sshtools/common/util/ByteArrayWriter;->writeInt(I)V

    .line 77
    invoke-virtual {p0, p1}, Lcom/sshtools/common/util/ByteArrayWriter;->write([B)V

    return-void
.end method

.method public writeBinaryString([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 96
    invoke-virtual {p0, v0}, Lcom/sshtools/common/util/ByteArrayWriter;->writeInt(I)V

    return-void

    .line 98
    :cond_0
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBinaryString([BII)V

    return-void
.end method

.method public writeBinaryString([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 111
    invoke-virtual {p0, p1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeInt(I)V

    return-void

    .line 113
    :cond_0
    invoke-virtual {p0, p3}, Lcom/sshtools/common/util/ByteArrayWriter;->writeInt(I)V

    .line 114
    invoke-virtual {p0, p1, p2, p3}, Lcom/sshtools/common/util/ByteArrayWriter;->write([BII)V

    return-void
.end method

.method public writeBoolean(Z)V
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lcom/sshtools/common/util/ByteArrayWriter;->write(I)V

    return-void
.end method

.method public writeInt(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    int-to-byte p1, p1

    const/4 v3, 0x4

    .line 162
    new-array v3, v3, [B

    const/4 v4, 0x0

    aput-byte v0, v3, v4

    const/4 v0, 0x1

    aput-byte v1, v3, v0

    const/4 v0, 0x2

    aput-byte v2, v3, v0

    const/4 v0, 0x3

    aput-byte p1, v3, v0

    .line 164
    invoke-virtual {p0, v3}, Lcom/sshtools/common/util/ByteArrayWriter;->write([B)V

    return-void
.end method

.method public writeInt(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x18

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x10

    shr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x8

    shr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    long-to-int p1, p1

    int-to-byte p1, p1

    const/4 p2, 0x4

    .line 146
    new-array p2, p2, [B

    const/4 v3, 0x0

    aput-byte v0, p2, v3

    const/4 v0, 0x1

    aput-byte v1, p2, v0

    const/4 v0, 0x2

    aput-byte v2, p2, v0

    const/4 v0, 0x3

    aput-byte p1, p2, v0

    .line 148
    invoke-virtual {p0, p2}, Lcom/sshtools/common/util/ByteArrayWriter;->write([B)V

    return-void
.end method

.method public writeMPINT(Ljava/math/BigInteger;)V
    .locals 3

    .line 119
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    .line 120
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 121
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    int-to-short p1, p1

    invoke-virtual {p0, p1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeShort(S)V

    const/4 p1, 0x0

    .line 122
    aget-byte v2, v1, p1

    if-nez v2, :cond_0

    const/4 p1, 0x1

    .line 123
    invoke-virtual {p0, v1, p1, v0}, Lcom/sshtools/common/util/ByteArrayWriter;->write([BII)V

    return-void

    .line 126
    :cond_0
    invoke-virtual {p0, v1, p1, v0}, Lcom/sshtools/common/util/ByteArrayWriter;->write([BII)V

    return-void
.end method

.method public writeShort(S)V
    .locals 1

    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 131
    invoke-virtual {p0, v0}, Lcom/sshtools/common/util/ByteArrayWriter;->write(I)V

    and-int/lit16 p1, p1, 0xff

    .line 132
    invoke-virtual {p0, p1}, Lcom/sshtools/common/util/ByteArrayWriter;->write(I)V

    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    invoke-static {}, Lcom/sshtools/common/util/ByteArrayReader;->getCharsetEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 271
    invoke-virtual {p0, p1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeInt(I)V

    return-void

    .line 276
    :cond_0
    sget-boolean v0, Lcom/sshtools/common/util/ByteArrayReader;->encode:Z

    if-eqz v0, :cond_1

    .line 277
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    goto :goto_0

    .line 279
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 281
    :goto_0
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/sshtools/common/util/ByteArrayWriter;->writeInt(I)V

    .line 282
    invoke-virtual {p0, p1}, Lcom/sshtools/common/util/ByteArrayWriter;->write([B)V

    return-void
.end method

.method public writeUINT32(Lcom/sshtools/common/util/UnsignedInteger32;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    invoke-virtual {p1}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeInt(J)V

    return-void
.end method

.method public writeUINT64(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    new-instance v0, Lcom/sshtools/common/util/UnsignedInteger64;

    invoke-direct {v0, p1, p2}, Lcom/sshtools/common/util/UnsignedInteger64;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/util/ByteArrayWriter;->writeUINT64(Lcom/sshtools/common/util/UnsignedInteger64;)V

    return-void
.end method

.method public writeUINT64(Lcom/sshtools/common/util/UnsignedInteger64;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 212
    new-array v1, v0, [B

    .line 213
    invoke-virtual {p1}, Lcom/sshtools/common/util/UnsignedInteger64;->bigIntValue()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lcom/sshtools/common/util/ByteArrayWriter;->stripLeadingZeros([B)[B

    move-result-object p1

    .line 214
    array-length v2, p1

    sub-int/2addr v0, v2

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    invoke-virtual {p0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->write([B)V

    return-void
.end method
