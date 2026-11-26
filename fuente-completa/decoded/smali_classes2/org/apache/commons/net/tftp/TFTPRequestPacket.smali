.class public abstract Lorg/apache/commons/net/tftp/TFTPRequestPacket;
.super Lorg/apache/commons/net/tftp/TFTPPacket;
.source "TFTPRequestPacket.java"


# static fields
.field private static final modeBytes:[[B

.field static final modeStrings:[Ljava/lang/String;


# instance fields
.field private final fileName:Ljava/lang/String;

.field private final mode:I

.field private final options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 49
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "netascii"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "octet"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->modeStrings:[Ljava/lang/String;

    const/16 v0, 0x9

    .line 54
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    filled-new-array {v0, v1}, [[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->modeBytes:[[B

    return-void

    nop

    :array_0
    .array-data 1
        0x6et
        0x65t
        0x74t
        0x61t
        0x73t
        0x63t
        0x69t
        0x69t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x6ft
        0x63t
        0x74t
        0x65t
        0x74t
        0x0t
    .end array-data
.end method

.method constructor <init>(ILjava/net/DatagramPacket;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/tftp/TFTPPacketException;
        }
    .end annotation

    .line 91
    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getPort()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/net/tftp/TFTPPacket;-><init>(ILjava/net/InetAddress;I)V

    .line 64
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->options:Ljava/util/Map;

    .line 93
    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object p1

    .line 95
    invoke-virtual {p0}, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->getType()I

    move-result v0

    const/4 v1, 0x1

    aget-byte v2, p1, v1

    if-ne v0, v2, :cond_b

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getLength()I

    move-result p2

    const/4 v2, 0x2

    :goto_0
    if-ge v2, p2, :cond_0

    .line 104
    aget-byte v3, p1, v2

    if-eqz v3, :cond_0

    int-to-char v3, v3

    .line 105
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->fileName:Ljava/lang/String;

    if-ge v2, p2, :cond_a

    const/4 v3, 0x0

    .line 115
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/2addr v2, v1

    :goto_1
    if-ge v2, p2, :cond_1

    .line 117
    aget-byte v4, p1, v2

    if-eqz v4, :cond_1

    int-to-char v4, v4

    .line 118
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 122
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 123
    sget-object v4, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->modeStrings:[Ljava/lang/String;

    array-length v4, v4

    move v5, v3

    :goto_2
    if-ge v5, v4, :cond_3

    .line 128
    sget-object v6, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->modeStrings:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v3, v5

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 134
    :cond_3
    :goto_3
    iput v3, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->mode:I

    if-ge v5, v4, :cond_9

    add-int/2addr v2, v1

    :goto_4
    if-ge v2, p2, :cond_8

    move v0, v2

    .line 146
    :goto_5
    aget-byte v1, p1, v0

    const-string v3, "Invalid option format"

    if-eqz v1, :cond_5

    if-ge v0, p2, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 148
    :cond_4
    new-instance p1, Lorg/apache/commons/net/tftp/TFTPPacketException;

    invoke-direct {p1, v3}, Lorg/apache/commons/net/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 151
    :cond_5
    new-instance v1, Ljava/lang/String;

    sub-int v4, v0, v2

    sget-object v5, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    add-int/lit8 v0, v0, 0x1

    move v2, v0

    .line 154
    :goto_6
    aget-byte v4, p1, v2

    if-eqz v4, :cond_7

    if-ge v2, p2, :cond_6

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 156
    :cond_6
    new-instance p1, Lorg/apache/commons/net/tftp/TFTPPacketException;

    invoke-direct {p1, v3}, Lorg/apache/commons/net/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 159
    :cond_7
    new-instance v3, Ljava/lang/String;

    sub-int v4, v2, v0

    sget-object v5, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v3, p1, v0, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 160
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->options:Ljava/util/Map;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    return-void

    .line 137
    :cond_9
    new-instance p1, Lorg/apache/commons/net/tftp/TFTPPacketException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Unrecognized TFTP transfer mode: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/net/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 112
    :cond_a
    new-instance p1, Lorg/apache/commons/net/tftp/TFTPPacketException;

    const-string p2, "Bad file name and mode format."

    invoke-direct {p1, p2}, Lorg/apache/commons/net/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_b
    new-instance p1, Lorg/apache/commons/net/tftp/TFTPPacketException;

    const-string p2, "TFTP operator code does not match type."

    invoke-direct {p1, p2}, Lorg/apache/commons/net/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Ljava/net/InetAddress;IILjava/lang/String;I)V
    .locals 0

    .line 76
    invoke-direct {p0, p3, p1, p2}, Lorg/apache/commons/net/tftp/TFTPPacket;-><init>(ILjava/net/InetAddress;I)V

    .line 64
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->options:Ljava/util/Map;

    .line 78
    iput-object p4, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->fileName:Ljava/lang/String;

    .line 79
    iput p5, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->mode:I

    return-void
.end method

.method private handleOptions([BII)V
    .locals 5

    add-int/2addr p2, p3

    add-int/lit8 p2, p2, 0x2

    .line 262
    iget-object p3, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->options:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    .line 263
    aput-byte v1, p1, p2

    .line 264
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 265
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 267
    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v1, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 268
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr p2, v2

    add-int/lit8 v2, p2, 0x1

    .line 269
    aput-byte v1, p1, p2

    .line 271
    sget-object p2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {p2, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v2

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final getFilename()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public final getMode()I
    .locals 1

    .line 180
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->mode:I

    return v0
.end method

.method public final getOptions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->options:Ljava/util/Map;

    return-object v0
.end method

.method public final newDatagram()Ljava/net/DatagramPacket;
    .locals 8

    .line 207
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->fileName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 208
    sget-object v1, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->modeBytes:[[B

    iget v2, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->mode:I

    aget-object v1, v1, v2

    array-length v1, v1

    .line 211
    iget-object v2, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->options:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 212
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v7, v5

    add-int/2addr v7, v6

    add-int/2addr v4, v7

    goto :goto_0

    :cond_0
    add-int v2, v0, v1

    add-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v4

    .line 214
    new-array v5, v2, [B

    .line 215
    aput-byte v3, v5, v3

    .line 216
    iget v7, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->type:I

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 217
    iget-object v6, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->fileName:Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v3, v5, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v6, v0, 0x2

    .line 218
    aput-byte v3, v5, v6

    .line 219
    sget-object v6, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->modeBytes:[[B

    iget v7, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->mode:I

    aget-object v6, v6, v7

    add-int/lit8 v7, v0, 0x3

    invoke-static {v6, v3, v5, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-lez v4, :cond_1

    .line 222
    invoke-direct {p0, v5, v0, v1}, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->handleOptions([BII)V

    .line 225
    :cond_1
    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v1, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->address:Ljava/net/InetAddress;

    iget v3, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->port:I

    invoke-direct {v0, v5, v2, v1, v3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    return-object v0
.end method

.method final newDatagram(Ljava/net/DatagramPacket;[B)Ljava/net/DatagramPacket;
    .locals 6

    .line 241
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->fileName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 242
    sget-object v1, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->modeBytes:[[B

    iget v2, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->mode:I

    aget-object v2, v1, v2

    array-length v2, v2

    const/4 v3, 0x0

    .line 244
    aput-byte v3, p2, v3

    .line 245
    iget v4, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->type:I

    int-to-byte v4, v4

    const/4 v5, 0x1

    aput-byte v4, p2, v5

    .line 246
    iget-object v4, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->fileName:Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v3, p2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v0, 0x2

    .line 247
    aput-byte v3, p2, v4

    .line 248
    iget v4, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->mode:I

    aget-object v1, v1, v4

    add-int/lit8 v4, v0, 0x3

    invoke-static {v1, v3, p2, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    invoke-direct {p0, p2, v0, v2}, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->handleOptions([BII)V

    .line 252
    iget-object v1, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->address:Ljava/net/InetAddress;

    invoke-virtual {p1, v1}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 253
    iget v1, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->port:I

    invoke-virtual {p1, v1}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 254
    invoke-virtual {p1, p2}, Ljava/net/DatagramPacket;->setData([B)V

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x3

    .line 255
    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setLength(I)V

    return-object p1
.end method
