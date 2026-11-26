.class public Lorg/apache/commons/net/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final CHUNK_SEPARATOR:[B

.field static final CHUNK_SIZE:I = 0x4c

.field private static final DECODE_TABLE:[B

.field private static final PAD:B = 0x3dt


# instance fields
.field private final lineLength:I

.field private final lineSeparator:[B

.field private final urlSafe:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    .line 68
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/net/util/Base64;->CHUNK_SEPARATOR:[B

    const/16 v0, 0x7b

    .line 84
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/commons/net/util/Base64;->DECODE_TABLE:[B

    return-void

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3et
        -0x1t
        0x3et
        -0x1t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3ft
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 463
    invoke-direct {p0, v0}, Lorg/apache/commons/net/util/Base64;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 500
    sget-object v0, Lorg/apache/commons/net/util/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/util/Base64;-><init>(I[B)V

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1

    const/4 v0, 0x0

    .line 522
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/net/util/Base64;-><init>(I[BZ)V

    return-void
.end method

.method public constructor <init>(I[BZ)V
    .locals 2

    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_1

    .line 548
    :cond_0
    sget-object p2, Lorg/apache/commons/net/util/NetConstants;->EMPTY_BTYE_ARRAY:[B

    move p1, v0

    :cond_1
    if-lez p1, :cond_2

    .line 550
    div-int/lit8 p1, p1, 0x4

    mul-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_0
    iput p1, p0, Lorg/apache/commons/net/util/Base64;->lineLength:I

    .line 551
    array-length p1, p2

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/apache/commons/net/util/Base64;->lineSeparator:[B

    .line 552
    array-length v1, p2

    invoke-static {p2, v0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 553
    invoke-static {p2}, Lorg/apache/commons/net/util/Base64;->containsBase64Byte([B)Z

    move-result p1

    if-nez p1, :cond_3

    .line 557
    iput-boolean p3, p0, Lorg/apache/commons/net/util/Base64;->urlSafe:Z

    return-void

    .line 554
    :cond_3
    invoke-static {p2}, Lorg/apache/commons/net/util/Base64;->newStringUtf8([B)Ljava/lang/String;

    move-result-object p1

    .line 555
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "lineSeperator must not contain base64 characters: ["

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "]"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Z)V
    .locals 2

    const/16 v0, 0x4c

    .line 480
    sget-object v1, Lorg/apache/commons/net/util/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/commons/net/util/Base64;-><init>(I[BZ)V

    return-void
.end method

.method private static containsBase64Byte([B)Z
    .locals 4

    .line 100
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-byte v3, p0, v2

    .line 101
    invoke-static {v3}, Lorg/apache/commons/net/util/Base64;->isBase64(B)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .locals 1

    .line 126
    invoke-static {}, Lorg/apache/commons/net/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static decodeBase64([B)[B
    .locals 1

    .line 115
    invoke-static {p0}, Lorg/apache/commons/net/util/Base64;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Lorg/apache/commons/net/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Base64$Decoder;->decode([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static decodeInteger([B)Ljava/math/BigInteger;
    .locals 2

    .line 137
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-static {p0}, Lorg/apache/commons/net/util/Base64;->decodeBase64([B)[B

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method private static encode([BI[BZ)[B
    .locals 1

    .line 141
    invoke-static {p0}, Lorg/apache/commons/net/util/Base64;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    if-lez p1, :cond_1

    .line 144
    invoke-static {p0, p1, p2}, Lorg/apache/commons/net/util/Base64;->encodeBase64Chunked([BI[B)[B

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz p3, :cond_2

    .line 145
    invoke-static {p0}, Lorg/apache/commons/net/util/Base64;->encodeBase64URLSafe([B)[B

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p0}, Lorg/apache/commons/net/util/Base64;->encodeBase64([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeBase64([B)[B
    .locals 1

    .line 155
    invoke-static {p0}, Lorg/apache/commons/net/util/Base64;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Lorg/apache/commons/net/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Base64$Encoder;->encode([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeBase64([BZ)[B
    .locals 0

    if-eqz p1, :cond_0

    .line 167
    invoke-static {p0}, Lorg/apache/commons/net/util/Base64;->encodeBase64Chunked([B)[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    invoke-static {p0, p1, p1}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeBase64([BZZ)[B
    .locals 1

    const v0, 0x7fffffff

    .line 181
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZZI)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeBase64([BZZI)[B
    .locals 4

    .line 196
    invoke-static {p0}, Lorg/apache/commons/net/util/Base64;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    const/16 v0, 0x4c

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 199
    sget-object v1, Lorg/apache/commons/net/util/Base64;->CHUNK_SEPARATOR:[B

    goto :goto_1

    :cond_2
    sget-object v1, Lorg/apache/commons/net/util/NetConstants;->EMPTY_BTYE_ARRAY:[B

    :goto_1
    invoke-static {p0, v0, v1}, Lorg/apache/commons/net/util/Base64;->getEncodeLength([BI[B)J

    move-result-wide v0

    int-to-long v2, p3

    cmp-long v2, v0, v2

    if-gtz v2, :cond_5

    if-eqz p1, :cond_3

    .line 204
    invoke-static {p0}, Lorg/apache/commons/net/util/Base64;->encodeBase64Chunked([B)[B

    move-result-object p0

    return-object p0

    :cond_3
    if-eqz p2, :cond_4

    invoke-static {p0}, Lorg/apache/commons/net/util/Base64;->encodeBase64URLSafe([B)[B

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {p0}, Lorg/apache/commons/net/util/Base64;->encodeBase64([B)[B

    move-result-object p0

    return-object p0

    .line 201
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Input array too big, the output array would be bigger ("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") than the specified maxium size of "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static encodeBase64Chunked([B)[B
    .locals 2

    const/16 v0, 0x4c

    .line 218
    sget-object v1, Lorg/apache/commons/net/util/Base64;->CHUNK_SEPARATOR:[B

    invoke-static {p0, v0, v1}, Lorg/apache/commons/net/util/Base64;->encodeBase64Chunked([BI[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static encodeBase64Chunked([BI[B)[B
    .locals 2

    .line 222
    invoke-static {p0, p1, p2}, Lorg/apache/commons/net/util/Base64;->getEncodeLength([BI[B)J

    move-result-wide v0

    .line 223
    invoke-static {v0, v1}, Ljava/lang/Math;->toIntExact(J)I

    move-result v0

    new-array v1, v0, [B

    .line 224
    invoke-static {p1, p2}, Lorg/apache/commons/net/util/Base64;->getMimeEncoder(I[B)Ljava/util/Base64$Encoder;

    move-result-object p1

    invoke-virtual {p1, p0, v1}, Ljava/util/Base64$Encoder;->encode([B[B)I

    .line 226
    array-length p0, p2

    sub-int/2addr v0, p0

    array-length p0, p2

    const/4 p1, 0x0

    invoke-static {p2, p1, v1, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static encodeBase64String([B)Ljava/lang/String;
    .locals 2

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/apache/commons/net/util/Base64;->getMimeEncoder()Ljava/util/Base64$Encoder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeBase64String([BZ)Ljava/lang/String;
    .locals 0

    .line 256
    invoke-static {p0, p1}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZ)[B

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/net/util/Base64;->newStringUtf8([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeBase64StringUnChunked([B)Ljava/lang/String;
    .locals 1

    .line 270
    invoke-static {}, Lorg/apache/commons/net/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeBase64URLSafe([B)[B
    .locals 1

    .line 282
    invoke-static {}, Lorg/apache/commons/net/util/Base64;->getUrlEncoder()Ljava/util/Base64$Encoder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Base64$Encoder;->withoutPadding()Ljava/util/Base64$Encoder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Base64$Encoder;->encode([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeBase64URLSafeString([B)Ljava/lang/String;
    .locals 1

    .line 294
    invoke-static {}, Lorg/apache/commons/net/util/Base64;->getUrlEncoder()Ljava/util/Base64$Encoder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Base64$Encoder;->withoutPadding()Ljava/util/Base64$Encoder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeInteger(Ljava/math/BigInteger;)[B
    .locals 1

    .line 306
    invoke-static {p0}, Lorg/apache/commons/net/util/Base64;->toIntegerBytes(Ljava/math/BigInteger;)[B

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZ)[B

    move-result-object p0

    return-object p0
.end method

.method private static getDecoder()Ljava/util/Base64$Decoder;
    .locals 1

    .line 310
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v0

    return-object v0
.end method

.method static getEncodeLength([BI[B)J
    .locals 8

    .line 323
    div-int/lit8 p1, p1, 0x4

    mul-int/lit8 p1, p1, 0x4

    .line 324
    array-length p0, p0

    mul-int/lit8 p0, p0, 0x4

    div-int/lit8 p0, p0, 0x3

    int-to-long v0, p0

    const-wide/16 v2, 0x4

    .line 325
    rem-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long p0, v4, v6

    if-eqz p0, :cond_0

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    :cond_0
    if-lez p1, :cond_2

    int-to-long p0, p1

    .line 330
    rem-long v2, v0, p0

    cmp-long v2, v2, v6

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 331
    :goto_0
    div-long p0, v0, p0

    array-length v3, p2

    int-to-long v3, v3

    mul-long/2addr p0, v3

    add-long/2addr v0, p0

    if-nez v2, :cond_2

    .line 333
    array-length p0, p2

    int-to-long p0, p0

    add-long/2addr v0, p0

    :cond_2
    return-wide v0
.end method

.method private static getEncoder()Ljava/util/Base64$Encoder;
    .locals 1

    .line 340
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v0

    return-object v0
.end method

.method private static getMimeEncoder()Ljava/util/Base64$Encoder;
    .locals 1

    .line 344
    invoke-static {}, Ljava/util/Base64;->getMimeEncoder()Ljava/util/Base64$Encoder;

    move-result-object v0

    return-object v0
.end method

.method private static getMimeEncoder(I[B)Ljava/util/Base64$Encoder;
    .locals 0

    .line 348
    invoke-static {p0, p1}, Ljava/util/Base64;->getMimeEncoder(I[B)Ljava/util/Base64$Encoder;

    move-result-object p0

    return-object p0
.end method

.method private static getUrlEncoder()Ljava/util/Base64$Encoder;
    .locals 1

    .line 352
    invoke-static {}, Ljava/util/Base64;->getUrlEncoder()Ljava/util/Base64$Encoder;

    move-result-object v0

    return-object v0
.end method

.method public static isArrayByteBase64([B)Z
    .locals 5

    .line 362
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-byte v3, p0, v2

    .line 363
    invoke-static {v3}, Lorg/apache/commons/net/util/Base64;->isBase64(B)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lorg/apache/commons/net/util/Base64;->isWhiteSpace(B)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isBase64(B)Z
    .locals 2

    const/16 v0, 0x3d

    if-eq p0, v0, :cond_1

    if-ltz p0, :cond_0

    .line 378
    sget-object v0, Lorg/apache/commons/net/util/Base64;->DECODE_TABLE:[B

    array-length v1, v0

    if-ge p0, v1, :cond_0

    aget-byte p0, v0, p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static isEmpty([B)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 382
    array-length p0, p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static isWhiteSpace(B)Z
    .locals 1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static newStringUtf8([B)Ljava/lang/String;
    .locals 2

    .line 404
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method private static toIntegerBytes(Ljava/math/BigInteger;)[B
    .locals 5

    .line 414
    const-string v0, "bigInt"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 415
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0x3

    .line 418
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 419
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    rem-int/lit8 v2, v2, 0x8

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v3

    div-int/lit8 v4, v0, 0x8

    if-ne v2, v4, :cond_0

    return-object v1

    .line 424
    :cond_0
    array-length v2, v1

    .line 427
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    rem-int/lit8 p0, p0, 0x8

    if-nez p0, :cond_1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 431
    :goto_0
    div-int/lit8 v0, v0, 0x8

    sub-int p0, v0, v2

    .line 432
    new-array v0, v0, [B

    .line 433
    invoke-static {v1, v3, v0, p0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public decode(Ljava/lang/String;)[B
    .locals 1

    .line 578
    invoke-static {}, Lorg/apache/commons/net/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public decode([B)[B
    .locals 1

    .line 567
    invoke-static {p1}, Lorg/apache/commons/net/util/Base64;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {}, Lorg/apache/commons/net/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Base64$Decoder;->decode([B)[B

    move-result-object p1

    return-object p1
.end method

.method public encode([B)[B
    .locals 3

    .line 588
    iget v0, p0, Lorg/apache/commons/net/util/Base64;->lineLength:I

    iget-object v1, p0, Lorg/apache/commons/net/util/Base64;->lineSeparator:[B

    invoke-virtual {p0}, Lorg/apache/commons/net/util/Base64;->isUrlSafe()Z

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lorg/apache/commons/net/util/Base64;->encode([BI[BZ)[B

    move-result-object p1

    return-object p1
.end method

.method public encodeToString([B)Ljava/lang/String;
    .locals 0

    .line 599
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/util/Base64;->encode([B)[B

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/net/util/Base64;->newStringUtf8([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 605
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method getLineLength()I
    .locals 1

    .line 609
    iget v0, p0, Lorg/apache/commons/net/util/Base64;->lineLength:I

    return v0
.end method

.method getLineSeparator()[B
    .locals 1

    .line 613
    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->lineSeparator:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public isUrlSafe()Z
    .locals 1

    .line 623
    iget-boolean v0, p0, Lorg/apache/commons/net/util/Base64;->urlSafe:Z

    return v0
.end method
