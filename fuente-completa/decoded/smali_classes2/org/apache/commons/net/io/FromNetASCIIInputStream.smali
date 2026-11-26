.class public final Lorg/apache/commons/net/io/FromNetASCIIInputStream;
.super Ljava/io/PushbackInputStream;
.source "FromNetASCIIInputStream.java"


# static fields
.field static final LINE_SEPARATOR_BYTES:[B

.field static final NO_CONVERSION_REQUIRED:Z


# instance fields
.field private length:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->NO_CONVERSION_REQUIRED:Z

    .line 35
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->LINE_SEPARATOR_BYTES:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 55
    sget-object v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->LINE_SEPARATOR_BYTES:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public static isConversionRequired()Z
    .locals 1

    .line 44
    sget-boolean v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->NO_CONVERSION_REQUIRED:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private readInt()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 140
    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 143
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->unread(I)V

    :cond_0
    return v1

    .line 147
    :cond_1
    sget-object v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->LINE_SEPARATOR_BYTES:[B

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->unread([B)V

    .line 148
    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 150
    iget v1, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->length:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->length:I

    :cond_2
    return v0
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->buf:[B

    array-length v0, v0

    iget v1, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->pos:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 67
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    sget-boolean v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->NO_CONVERSION_REQUIRED:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    return v0

    .line 85
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 97
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    sget-boolean v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->NO_CONVERSION_REQUIRED:Z

    if-eqz v0, :cond_0

    .line 113
    invoke-super {p0, p1, p2, p3}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ge p3, v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 120
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->available()I

    move-result v1

    .line 121
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    iput p3, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->length:I

    if-ge p3, v0, :cond_2

    .line 124
    iput v0, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->length:I

    .line 126
    :cond_2
    invoke-direct {p0}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->readInt()I

    move-result p3

    const/4 v1, -0x1

    if-ne p3, v1, :cond_3

    return v1

    :cond_3
    move v2, p2

    :goto_0
    add-int/lit8 v3, v2, 0x1

    int-to-byte p3, p3

    .line 131
    aput-byte p3, p1, v2

    .line 132
    iget p3, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->length:I

    sub-int/2addr p3, v0

    iput p3, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->length:I

    if-lez p3, :cond_5

    invoke-direct {p0}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->readInt()I

    move-result p3

    if-ne p3, v1, :cond_4

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_0

    :cond_5
    :goto_1
    sub-int/2addr v3, p2

    return v3
.end method
