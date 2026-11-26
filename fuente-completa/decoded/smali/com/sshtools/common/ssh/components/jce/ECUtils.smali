.class public Lcom/sshtools/common/ssh/components/jce/ECUtils;
.super Ljava/lang/Object;
.source "ECUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static contains([B[B)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 111
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 112
    aget-byte v2, p0, v1

    aget-byte v3, p1, v0

    if-ne v2, v3, :cond_2

    move v2, v0

    move v3, v2

    .line 115
    :goto_1
    array-length v4, p1

    if-ge v2, v4, :cond_1

    add-int v4, v2, v1

    array-length v5, p0

    if-ge v4, v5, :cond_1

    .line 116
    aget-byte v4, p0, v4

    aget-byte v5, p1, v2

    if-eq v4, v5, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 122
    :cond_1
    array-length v2, p1

    if-ne v3, v2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public static convertKey([B)Ljava/security/interfaces/ECPublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 185
    :try_start_0
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getECDSAAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-nez v0, :cond_0

    .line 186
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getECDSAAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    goto :goto_0

    .line 187
    :cond_0
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getECDSAAlgorithmName()Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getECDSAAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    .line 187
    invoke-static {v0, v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 193
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    check-cast p0, Ljava/security/interfaces/ECPublicKey;

    return-object p0

    .line 190
    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "EC key factory not present in runtime"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static createHeadForNamedCurve(Ljava/lang/String;[B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    new-instance v0, Lcom/sshtools/common/util/SimpleASNWriter;

    invoke-direct {v0}, Lcom/sshtools/common/util/SimpleASNWriter;-><init>()V

    const/4 v1, 0x6

    .line 135
    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/SimpleASNWriter;->writeByte(I)V

    const/4 v2, 0x7

    .line 136
    new-array v2, v2, [B

    fill-array-data v2, :array_0

    invoke-virtual {v0, v2}, Lcom/sshtools/common/util/SimpleASNWriter;->writeData([B)V

    .line 138
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "nistp521"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v7, v3

    goto :goto_0

    :sswitch_1
    const-string v2, "nistp384"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, 0x4

    goto :goto_0

    :sswitch_2
    const-string v2, "nistp256"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v7, v4

    goto :goto_0

    :sswitch_3
    const-string v2, "secp521r1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v7, 0x2

    goto :goto_0

    :sswitch_4
    const-string v2, "secp384r1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    move v7, v6

    goto :goto_0

    :sswitch_5
    const-string v2, "secp256r1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    move v7, v5

    :goto_0
    packed-switch v7, :pswitch_data_0

    .line 155
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unsupported named curve %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 151
    :pswitch_0
    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/SimpleASNWriter;->writeByte(I)V

    .line 152
    new-array p0, v3, [B

    fill-array-data p0, :array_1

    invoke-virtual {v0, p0}, Lcom/sshtools/common/util/SimpleASNWriter;->writeData([B)V

    goto :goto_1

    .line 146
    :pswitch_1
    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/SimpleASNWriter;->writeByte(I)V

    .line 147
    new-array p0, v3, [B

    fill-array-data p0, :array_2

    invoke-virtual {v0, p0}, Lcom/sshtools/common/util/SimpleASNWriter;->writeData([B)V

    goto :goto_1

    .line 141
    :pswitch_2
    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/SimpleASNWriter;->writeByte(I)V

    const/16 p0, 0x8

    .line 142
    new-array p0, p0, [B

    fill-array-data p0, :array_3

    invoke-virtual {v0, p0}, Lcom/sshtools/common/util/SimpleASNWriter;->writeData([B)V

    .line 159
    :goto_1
    new-instance p0, Lcom/sshtools/common/util/SimpleASNWriter;

    invoke-direct {p0}, Lcom/sshtools/common/util/SimpleASNWriter;-><init>()V

    const/16 v1, 0x30

    .line 161
    invoke-virtual {p0, v1}, Lcom/sshtools/common/util/SimpleASNWriter;->writeByte(I)V

    .line 162
    invoke-virtual {v0}, Lcom/sshtools/common/util/SimpleASNWriter;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sshtools/common/util/SimpleASNWriter;->writeData([B)V

    .line 164
    invoke-virtual {p0, v4}, Lcom/sshtools/common/util/SimpleASNWriter;->writeByte(I)V

    .line 166
    array-length v0, p1

    add-int/2addr v0, v6

    new-array v0, v0, [B

    .line 167
    aget-byte v2, p1, v5

    if-eqz v2, :cond_6

    .line 168
    array-length v2, p1

    invoke-static {p1, v5, v0, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    invoke-virtual {p0, v0}, Lcom/sshtools/common/util/SimpleASNWriter;->writeData([B)V

    goto :goto_2

    .line 171
    :cond_6
    invoke-virtual {p0, p1}, Lcom/sshtools/common/util/SimpleASNWriter;->writeData([B)V

    .line 174
    :goto_2
    new-instance p1, Lcom/sshtools/common/util/SimpleASNWriter;

    invoke-direct {p1}, Lcom/sshtools/common/util/SimpleASNWriter;-><init>()V

    .line 175
    invoke-virtual {p1, v1}, Lcom/sshtools/common/util/SimpleASNWriter;->writeByte(I)V

    .line 176
    invoke-virtual {p0}, Lcom/sshtools/common/util/SimpleASNWriter;->toByteArray()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sshtools/common/util/SimpleASNWriter;->writeData([B)V

    .line 178
    invoke-virtual {p1}, Lcom/sshtools/common/util/SimpleASNWriter;->toByteArray()[B

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x326a374d -> :sswitch_5
        -0x325aca31 -> :sswitch_4
        -0x324160ac -> :sswitch_3
        0x2003373f -> :sswitch_2
        0x20033b5b -> :sswitch_1
        0x20034220 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x32t
        0x3dt
        0x2t
        0x1t
    .end array-data

    :array_1
    .array-data 1
        0x2bt
        -0x7ft
        0x4t
        0x0t
        0x23t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2bt
        -0x7ft
        0x4t
        0x0t
        0x22t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x32t
        0x3dt
        0x3t
        0x1t
        0x7t
    .end array-data
.end method

.method public static decodeJCEKey([B)Ljava/security/interfaces/ECPublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 249
    :try_start_0
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getECDSAAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-nez v0, :cond_0

    .line 250
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getECDSAAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    goto :goto_0

    .line 251
    :cond_0
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getECDSAAlgorithmName()Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getECDSAAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    .line 251
    invoke-static {v0, v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 258
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    check-cast p0, Ljava/security/interfaces/ECPublicKey;

    return-object p0

    .line 255
    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "EC key factory not present in runtime"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decodeKey([BLjava/lang/String;)Ljava/security/interfaces/ECPublicKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 242
    invoke-static {p1, p0}, Lcom/sshtools/common/ssh/components/jce/ECUtils;->createHeadForNamedCurve(Ljava/lang/String;[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/sshtools/common/ssh/components/jce/ECUtils;->convertKey([B)Ljava/security/interfaces/ECPublicKey;

    move-result-object p0

    return-object p0
.end method

.method public static decodePrivateKey([BLjava/security/interfaces/ECPublicKey;)Ljava/security/interfaces/ECPrivateKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 198
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 199
    new-instance p0, Ljava/security/spec/ECPrivateKeySpec;

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    .line 204
    :try_start_0
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getECDSAAlgorithmName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object p1

    if-nez p1, :cond_0

    .line 205
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getECDSAAlgorithmName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    goto :goto_0

    .line 206
    :cond_0
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getECDSAAlgorithmName()Ljava/lang/String;

    move-result-object p1

    .line 207
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getECDSAAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 206
    invoke-static {p1, v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_0
    invoke-virtual {p1, p0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0

    check-cast p0, Ljava/security/interfaces/ECPrivateKey;

    return-object p0

    .line 209
    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "EC key factory not present in runtime"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ensureLeadingZero([B)[B
    .locals 4

    const/4 v0, 0x0

    .line 81
    aget-byte v1, p0, v0

    if-eqz v1, :cond_0

    .line 82
    array-length v1, p0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 83
    array-length v3, p0

    invoke-static {p0, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_0
    return-object p0
.end method

.method public static fromByteArray([BLjava/security/spec/EllipticCurve;)Ljava/security/spec/ECPoint;
    .locals 5

    .line 70
    invoke-virtual {p1}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object p1

    invoke-interface {p1}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result p1

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    .line 71
    array-length v0, p0

    mul-int/lit8 v1, p1, 0x2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    new-array v1, p1, [B

    .line 74
    new-array v3, p1, [B

    .line 75
    invoke-static {p0, v2, v1, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, p1, 0x1

    .line 76
    invoke-static {p0, v4, v3, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    new-instance p0, Ljava/security/spec/ECPoint;

    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v2, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {p0, p1, v0}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getNameFromEncodedKey(Ljava/security/PrivateKey;)Ljava/lang/String;
    .locals 2

    .line 91
    invoke-interface {p0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object p0

    const/16 v0, 0x8

    .line 92
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 93
    invoke-static {p0, v0}, Lcom/sshtools/common/ssh/components/jce/ECUtils;->contains([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const-string p0, "secp256r1"

    return-object p0

    :cond_0
    const/4 v0, 0x5

    .line 96
    new-array v1, v0, [B

    fill-array-data v1, :array_1

    .line 97
    invoke-static {p0, v1}, Lcom/sshtools/common/ssh/components/jce/ECUtils;->contains([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    const-string p0, "secp384r1"

    return-object p0

    .line 100
    :cond_1
    new-array v0, v0, [B

    fill-array-data v0, :array_2

    .line 101
    invoke-static {p0, v0}, Lcom/sshtools/common/ssh/components/jce/ECUtils;->contains([B[B)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 102
    const-string p0, "secp521r1"

    return-object p0

    .line 104
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unable to determine EC curve type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :array_0
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x32t
        0x3dt
        0x3t
        0x1t
        0x7t
    .end array-data

    :array_1
    .array-data 1
        0x2bt
        -0x7ft
        0x4t
        0x0t
        0x22t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2bt
        -0x7ft
        0x4t
        0x0t
        0x23t
    .end array-data
.end method

.method public static getOidBytes(Ljava/lang/String;)[B
    .locals 2

    .line 262
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "secp521r1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "secp384r1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "secp256r1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const/4 v0, 0x5

    packed-switch v1, :pswitch_data_0

    .line 270
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported named curve %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :pswitch_0
    new-array p0, v0, [B

    fill-array-data p0, :array_0

    return-object p0

    .line 266
    :pswitch_1
    new-array p0, v0, [B

    fill-array-data p0, :array_1

    return-object p0

    :pswitch_2
    const/16 p0, 0x8

    .line 264
    new-array p0, p0, [B

    fill-array-data p0, :array_2

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x326a374d -> :sswitch_2
        -0x325aca31 -> :sswitch_1
        -0x324160ac -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x2bt
        -0x7ft
        0x4t
        0x0t
        0x23t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x2bt
        -0x7ft
        0x4t
        0x0t
        0x22t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x32t
        0x3dt
        0x3t
        0x1t
        0x7t
    .end array-data
.end method

.method public static stripLeadingZeros([B)[B
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 216
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 217
    aget-byte v3, p0, v1

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    :cond_1
    :goto_1
    array-length v1, p0

    sub-int/2addr v1, v2

    new-array v3, v1, [B

    .line 223
    invoke-static {p0, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3
.end method

.method public static toByteArray(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)[B
    .locals 7

    .line 44
    invoke-virtual {p0}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 45
    invoke-virtual {p0}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    .line 47
    :goto_0
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 48
    aget-byte v3, v0, v2

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_1
    move v3, v1

    .line 52
    :goto_2
    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_3

    .line 53
    aget-byte v4, p0, v3

    if-eqz v4, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    move v3, v1

    .line 57
    :goto_3
    invoke-virtual {p1}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object p1

    invoke-interface {p1}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result p1

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    .line 58
    array-length v4, v0

    sub-int/2addr v4, v2

    if-gt v4, p1, :cond_5

    array-length v4, p0

    sub-int/2addr v4, v3

    if-le v4, p1, :cond_4

    goto :goto_4

    :cond_4
    mul-int/lit8 v4, p1, 0x2

    add-int/lit8 v4, v4, 0x1

    .line 60
    new-array v5, v4, [B

    const/4 v6, 0x4

    .line 61
    aput-byte v6, v5, v1

    add-int/lit8 p1, p1, 0x1

    .line 62
    array-length v1, v0

    sub-int/2addr v1, v2

    sub-int/2addr p1, v1

    array-length v1, v0

    sub-int/2addr v1, v2

    invoke-static {v0, v2, v5, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    array-length p1, p0

    sub-int/2addr p1, v3

    sub-int/2addr v4, p1

    array-length p1, p0

    sub-int/2addr p1, v3

    invoke-static {p0, v3, v5, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v5

    :cond_5
    :goto_4
    const/4 p0, 0x0

    return-object p0
.end method
