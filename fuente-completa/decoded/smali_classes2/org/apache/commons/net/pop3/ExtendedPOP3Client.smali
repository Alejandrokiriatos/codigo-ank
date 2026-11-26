.class public Lorg/apache/commons/net/pop3/ExtendedPOP3Client;
.super Lorg/apache/commons/net/pop3/POP3SClient;
.source "ExtendedPOP3Client.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;
    }
.end annotation


# static fields
.field private static final MAC_ALGORITHM:Ljava/lang/String; = "HmacMD5"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Lorg/apache/commons/net/pop3/POP3SClient;-><init>()V

    return-void
.end method

.method private convertToHexString([B)Ljava/lang/String;
    .locals 5

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 126
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xf

    if-gt v3, v4, :cond_0

    .line 128
    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public auth(Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/16 v0, 0xd

    .line 87
    invoke-virtual {p1}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;->getAuthName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client;->sendCommand(ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return v1

    .line 91
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_1

    return v1

    .line 98
    :cond_1
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client;->getReplyString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    .line 100
    const-string v2, "HmacMD5"

    invoke-static {v2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v3

    .line 101
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    invoke-direct {v4, p3, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 103
    invoke-virtual {v3, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client;->convertToHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client;->getCharset()Ljava/nio/charset/Charset;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 105
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client;->getCharset()Ljava/nio/charset/Charset;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 106
    array-length p3, p2

    add-int/2addr p3, v0

    array-length v2, p1

    add-int/2addr p3, v2

    new-array p3, p3, [B

    .line 107
    array-length v2, p2

    invoke-static {p2, v1, p3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    array-length v2, p2

    const/16 v3, 0x20

    aput-byte v3, p3, v2

    .line 109
    array-length p2, p2

    add-int/2addr p2, v0

    array-length v2, p1

    invoke-static {p1, v1, p3, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client;->sendCommand(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v1

    .line 94
    :cond_3
    new-instance p1, Ljava/lang/String;

    .line 95
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u0000"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client;->getCharset()Ljava/nio/charset/Charset;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/util/Base64$Encoder;->encode([B)[B

    move-result-object p2

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client;->getCharset()Ljava/nio/charset/Charset;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 94
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client;->sendCommand(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_4

    return v0

    :cond_4
    return v1
.end method
