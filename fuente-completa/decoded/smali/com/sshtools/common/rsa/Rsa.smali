.class public final Lcom/sshtools/common/rsa/Rsa;
.super Ljava/lang/Object;
.source "Rsa.java"


# static fields
.field private static ONE:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    .line 34
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/sshtools/common/rsa/Rsa;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doPrivate(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 0

    .line 215
    invoke-static {p0, p1, p2}, Lcom/sshtools/common/rsa/Rsa;->doPublic(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static doPrivateCrt(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 6

    .line 42
    invoke-static {p1, p2}, Lcom/sshtools/common/rsa/Rsa;->getPrimeExponent(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 43
    invoke-static {p1, p3}, Lcom/sshtools/common/rsa/Rsa;->getPrimeExponent(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v5, p4

    .line 40
    invoke-static/range {v0 .. v5}, Lcom/sshtools/common/rsa/Rsa;->doPrivateCrt(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static doPrivateCrt(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2

    .line 52
    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v1, p2

    move-object p2, p1

    move-object p1, v1

    move-object v1, p4

    move-object p4, p3

    move-object p3, v1

    .line 61
    :cond_0
    invoke-virtual {p0, p3, p1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    .line 62
    invoke-virtual {p0, p4, p2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 63
    invoke-virtual {p3, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 64
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static doPublic(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 0

    .line 210
    invoke-virtual {p0, p2, p1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static generateKey(ILjava/math/BigInteger;Ljava/security/SecureRandom;)Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPrivateCrtKey;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    move/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x1

    .line 158
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    .line 160
    div-int/lit8 v3, v3, 0x2

    sub-int v4, v0, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v8, v5

    move-object v10, v8

    move-object v11, v10

    move-object v12, v11

    move-object v15, v12

    :goto_0
    if-nez v6, :cond_6

    .line 164
    new-instance v11, Ljava/math/BigInteger;

    const/16 v5, 0x50

    invoke-direct {v11, v3, v5, v1}, Ljava/math/BigInteger;-><init>(IILjava/util/Random;)V

    .line 165
    new-instance v12, Ljava/math/BigInteger;

    invoke-direct {v12, v4, v5, v1}, Ljava/math/BigInteger;-><init>(IILjava/util/Random;)V

    .line 167
    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-gez v5, :cond_1

    move-object/from16 v16, v12

    move-object v12, v11

    move-object/from16 v11, v16

    :cond_1
    const/16 v5, 0x19

    .line 176
    invoke-virtual {v11, v5}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    .line 179
    :cond_2
    invoke-virtual {v12, v5}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    .line 182
    :cond_3
    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 183
    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    .line 187
    :cond_4
    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 189
    invoke-virtual {v8}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    if-eq v5, v0, :cond_5

    goto :goto_0

    .line 193
    :cond_5
    invoke-virtual {v11, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v12, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    move-object/from16 v9, p1

    .line 194
    invoke-virtual {v9, v5}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 195
    invoke-virtual {v12, v11}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    const/4 v6, 0x1

    goto :goto_0

    :cond_6
    move-object/from16 v9, p1

    .line 200
    new-instance v7, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPrivateCrtKey;

    .line 201
    invoke-static {v10, v11}, Lcom/sshtools/common/rsa/Rsa;->getPrimeExponent(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    .line 202
    invoke-static {v10, v12}, Lcom/sshtools/common/rsa/Rsa;->getPrimeExponent(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-direct/range {v7 .. v15}, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPrivateCrtKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v7
.end method

.method public static generateKey(ILjava/security/SecureRandom;)Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPrivateCrtKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    const-wide/32 v0, 0x10001

    .line 145
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/sshtools/common/rsa/Rsa;->generateKey(ILjava/math/BigInteger;Ljava/security/SecureRandom;)Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPrivateCrtKey;

    move-result-object p0

    return-object p0
.end method

.method public static getPrimeExponent(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    .line 70
    sget-object v0, Lcom/sshtools/common/rsa/Rsa;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 71
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static padPKCS1(Ljava/math/BigInteger;II)Ljava/math/BigInteger;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p2, -0xb

    if-gt v0, v1, :cond_3

    sub-int v1, p2, v0

    add-int/lit8 v1, v1, -0x2

    .line 87
    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 88
    aput-byte v3, v2, v3

    .line 90
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    const/4 v5, 0x1

    move v6, v5

    :goto_0
    if-ge v6, v1, :cond_2

    if-ne p1, v5, :cond_0

    const/4 v7, -0x1

    .line 93
    aput-byte v7, v2, v6

    goto :goto_1

    .line 96
    :cond_0
    new-array v7, v5, [B

    .line 98
    :cond_1
    invoke-virtual {v4, v7}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 100
    aget-byte v8, v7, v3

    if-eqz v8, :cond_1

    .line 101
    aput-byte v8, v2, v6

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 105
    :cond_2
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v5, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    add-int/2addr v0, v5

    mul-int/lit8 v0, v0, 0x8

    .line 106
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    int-to-long v1, p1

    .line 107
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    add-int/lit8 p2, p2, -0x2

    mul-int/lit8 p2, p2, 0x8

    .line 108
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p1

    .line 109
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 110
    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 82
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 83
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 84
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PKCS1 failed to pad input! input="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " padding="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static removePKCS1(Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    const/4 v0, 0x0

    .line 121
    aget-byte v1, p0, v0

    if-ne v1, p1, :cond_5

    const/4 v1, 0x1

    move v2, v1

    .line 126
    :goto_0
    array-length v3, p0

    const-string v4, "Corrupt data found in expected PKSC1 padding"

    if-ge v2, v3, :cond_3

    .line 127
    aget-byte v3, p0, v2

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    if-ne p1, v1, :cond_2

    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    goto :goto_1

    .line 131
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    :cond_3
    :goto_2
    array-length p1, p0

    if-eq v2, p1, :cond_4

    .line 139
    array-length p1, p0

    sub-int/2addr p1, v2

    new-array v3, p1, [B

    .line 140
    invoke-static {p0, v2, v3, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v1, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0

    .line 136
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 122
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PKCS1 padding type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is not valid"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
