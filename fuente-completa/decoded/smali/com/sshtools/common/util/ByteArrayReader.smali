.class public Lcom/sshtools/common/util/ByteArrayReader;
.super Ljava/io/ByteArrayInputStream;
.source "ByteArrayReader.java"


# static fields
.field private static CHARSET_ENCODING:Ljava/lang/String; = "UTF8"

.field public static encode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-string v0, "UTF8"

    .line 45
    invoke-static {v0}, Lcom/sshtools/common/util/ByteArrayReader;->setCharsetEncoding(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    const/4 v0, 0x0

    .line 58
    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-void
.end method

.method private checkLength(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    return-void

    .line 101
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 103
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 102
    const-string p2, "Unexpected length of %d bytes exceeds available data of %d bytes"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decodeString([B)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    new-instance v0, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-direct {v0, p0}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    .line 315
    :try_start_0
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 314
    :try_start_1
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public static getCharsetEncoding()Ljava/lang/String;
    .locals 1

    .line 96
    sget-object v0, Lcom/sshtools/common/util/ByteArrayReader;->CHARSET_ENCODING:Ljava/lang/String;

    return-object v0
.end method

.method public static readInt([BI)J
    .locals 4

    .line 171
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    or-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-long p0, p0

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static readShort([BI)S
    .locals 1

    .line 180
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static setCharsetEncoding(Ljava/lang/String;)V
    .locals 1

    .line 79
    :try_start_0
    const-string v0, "123456890"

    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 81
    sput-object p0, Lcom/sshtools/common/util/ByteArrayReader;->CHARSET_ENCODING:Ljava/lang/String;

    const/4 p0, 0x1

    .line 82
    sput-boolean p0, Lcom/sshtools/common/util/ByteArrayReader;->encode:Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 86
    :catch_0
    const-string p0, ""

    sput-object p0, Lcom/sshtools/common/util/ByteArrayReader;->CHARSET_ENCODING:Ljava/lang/String;

    const/4 p0, 0x0

    .line 87
    sput-boolean p0, Lcom/sshtools/common/util/ByteArrayReader;->encode:Z

    return-void
.end method


# virtual methods
.method public array()[B
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/sshtools/common/util/ByteArrayReader;->buf:[B

    return-object v0
.end method

.method public close()V
    .locals 0

    .line 308
    :try_start_0
    invoke-super {p0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    .line 303
    iput-object v0, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    return-void
.end method

.method public getPosition()I
    .locals 1

    .line 295
    iget v0, p0, Lcom/sshtools/common/util/ByteArrayReader;->pos:I

    return v0
.end method

.method public readBigInteger()Ljava/math/BigInteger;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v1, v0

    .line 146
    invoke-direct {p0, v1, v2}, Lcom/sshtools/common/util/ByteArrayReader;->checkLength(J)V

    .line 147
    new-array v0, v0, [B

    .line 148
    invoke-virtual {p0, v0}, Lcom/sshtools/common/util/ByteArrayReader;->readFully([B)V

    .line 149
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    return-object v1
.end method

.method public readBinaryString()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    invoke-virtual {p0}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v1, v0

    .line 193
    invoke-direct {p0, v1, v2}, Lcom/sshtools/common/util/ByteArrayReader;->checkLength(J)V

    .line 194
    new-array v0, v0, [B

    .line 195
    invoke-virtual {p0, v0}, Lcom/sshtools/common/util/ByteArrayReader;->readFully([B)V

    return-object v0
.end method

.method public readBoolean()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    invoke-virtual {p0}, Lcom/sshtools/common/util/ByteArrayReader;->read()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public readFully([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 136
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sshtools/common/util/ByteArrayReader;->readFully([BII)V

    return-void
.end method

.method public readFully([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p3, :cond_2

    int-to-long v0, p3

    .line 116
    invoke-direct {p0, v0, v1}, Lcom/sshtools/common/util/ByteArrayReader;->checkLength(J)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    add-int v1, p2, v0

    sub-int v2, p3, v0

    .line 119
    invoke-virtual {p0, p1, v1, v2}, Lcom/sshtools/common/util/ByteArrayReader;->read([BII)I

    move-result v1

    if-ltz v1, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    .line 121
    :cond_0
    new-instance v1, Ljava/io/EOFException;

    array-length p1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not read number of bytes requested: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v2, ", got "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " into buffer size "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " at offset "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void

    .line 115
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public readInt()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    invoke-virtual {p0}, Lcom/sshtools/common/util/ByteArrayReader;->read()I

    move-result v0

    .line 208
    invoke-virtual {p0}, Lcom/sshtools/common/util/ByteArrayReader;->read()I

    move-result v1

    .line 209
    invoke-virtual {p0}, Lcom/sshtools/common/util/ByteArrayReader;->read()I

    move-result v2

    .line 210
    invoke-virtual {p0}, Lcom/sshtools/common/util/ByteArrayReader;->read()I

    move-result v3

    or-int v4, v0, v1

    or-int/2addr v4, v2

    or-int/2addr v4, v3

    if-ltz v4, :cond_0

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0

    .line 212
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readMPINT()Ljava/math/BigInteger;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    invoke-virtual {p0}, Lcom/sshtools/common/util/ByteArrayReader;->readShort()S

    move-result v0

    add-int/lit8 v0, v0, 0x7

    .line 281
    div-int/lit8 v0, v0, 0x8

    int-to-long v1, v0

    invoke-direct {p0, v1, v2}, Lcom/sshtools/common/util/ByteArrayReader;->checkLength(J)V

    add-int/lit8 v1, v0, 0x1

    .line 282
    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 284
    aput-byte v2, v1, v2

    const/4 v2, 0x1

    .line 285
    invoke-virtual {p0, v1, v2, v0}, Lcom/sshtools/common/util/ByteArrayReader;->readFully([BII)V

    .line 287
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public readMPINT32()Ljava/math/BigInteger;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    invoke-virtual {p0}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v0

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x7

    .line 264
    div-int/lit8 v0, v0, 0x8

    int-to-long v1, v0

    invoke-direct {p0, v1, v2}, Lcom/sshtools/common/util/ByteArrayReader;->checkLength(J)V

    add-int/lit8 v1, v0, 0x1

    .line 265
    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 267
    aput-byte v2, v1, v2

    const/4 v2, 0x1

    .line 268
    invoke-virtual {p0, v1, v2, v0}, Lcom/sshtools/common/util/ByteArrayReader;->readFully([BII)V

    .line 270
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public readShort()S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    invoke-virtual {p0}, Lcom/sshtools/common/util/ByteArrayReader;->read()I

    move-result v0

    .line 248
    invoke-virtual {p0}, Lcom/sshtools/common/util/ByteArrayReader;->read()I

    move-result v1

    or-int v2, v0, v1

    if-ltz v2, :cond_0

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    .line 251
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    sget-object v0, Lcom/sshtools/common/util/ByteArrayReader;->CHARSET_ENCODING:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sshtools/common/util/ByteArrayReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    invoke-virtual {p0}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v0

    .line 235
    invoke-direct {p0, v0, v1}, Lcom/sshtools/common/util/ByteArrayReader;->checkLength(J)V

    long-to-int v0, v0

    .line 237
    new-array v0, v0, [B

    .line 238
    invoke-virtual {p0, v0}, Lcom/sshtools/common/util/ByteArrayReader;->readFully([B)V

    .line 239
    sget-boolean v1, Lcom/sshtools/common/util/ByteArrayReader;->encode:Z

    if-eqz v1, :cond_0

    .line 240
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1

    .line 242
    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

.method public readUINT32()Lcom/sshtools/common/util/UnsignedInteger32;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    new-instance v0, Lcom/sshtools/common/util/UnsignedInteger32;

    invoke-virtual {p0}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/util/UnsignedInteger32;-><init>(J)V

    return-object v0
.end method

.method public readUINT64()Lcom/sshtools/common/util/UnsignedInteger64;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x9

    .line 153
    new-array v0, v0, [B

    const/4 v1, 0x1

    const/16 v2, 0x8

    .line 154
    invoke-virtual {p0, v0, v1, v2}, Lcom/sshtools/common/util/ByteArrayReader;->readFully([BII)V

    .line 155
    new-instance v1, Lcom/sshtools/common/util/UnsignedInteger64;

    invoke-direct {v1, v0}, Lcom/sshtools/common/util/UnsignedInteger64;-><init>([B)V

    return-object v1
.end method

.method public silentClose()V
    .locals 0

    .line 299
    invoke-virtual {p0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void
.end method
