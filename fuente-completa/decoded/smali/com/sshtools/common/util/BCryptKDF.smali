.class public Lcom/sshtools/common/util/BCryptKDF;
.super Ljava/lang/Object;
.source "BCryptKDF.java"


# static fields
.field static final BCRYPT_HASHSIZE:I = 0x20

.field static final BCRYPT_WORDS:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bcrypt_hash([B[B)[B
    .locals 8

    .line 35
    new-instance v0, Lcom/sshtools/common/util/BCrypt;

    invoke-direct {v0}, Lcom/sshtools/common/util/BCrypt;-><init>()V

    const/16 v1, 0x20

    .line 37
    new-array v1, v1, [B

    .line 40
    :try_start_0
    const-string v2, "OxychromaticBlowfishSwatDynamite"

    const-string v3, "ASCII"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x8

    .line 44
    new-array v4, v3, [I

    .line 47
    invoke-virtual {v0}, Lcom/sshtools/common/util/BCrypt;->init_key()V

    .line 48
    invoke-virtual {v0, p1, p0}, Lcom/sshtools/common/util/BCrypt;->ekskey([B[B)V

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/16 v7, 0x40

    if-ge v6, v7, :cond_0

    .line 50
    invoke-virtual {v0, p1}, Lcom/sshtools/common/util/BCrypt;->key([B)V

    .line 51
    invoke-virtual {v0, p0}, Lcom/sshtools/common/util/BCrypt;->key([B)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 55
    :cond_0
    filled-new-array {v5}, [I

    move-result-object p0

    move p1, v5

    :goto_1
    if-ge p1, v3, :cond_1

    .line 57
    invoke-static {v2, p0}, Lcom/sshtools/common/util/BCrypt;->streamtoword([B[I)I

    move-result v6

    aput v6, v4, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    move p0, v5

    :goto_2
    if-ge p0, v7, :cond_2

    const/4 p1, 0x4

    .line 60
    invoke-virtual {v0, v4, p1}, Lcom/sshtools/common/util/BCrypt;->blf_enc([II)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    if-ge v5, v3, :cond_3

    mul-int/lit8 p0, v5, 0x4

    add-int/lit8 p1, p0, 0x3

    .line 65
    aget v0, v4, v5

    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, p1

    add-int/lit8 p1, p0, 0x2

    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 66
    aput-byte v2, v1, p1

    add-int/lit8 p1, p0, 0x1

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 67
    aput-byte v2, v1, p1

    and-int/lit16 p1, v0, 0xff

    int-to-byte p1, p1

    .line 68
    aput-byte p1, v1, p0

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    return-object v1

    .line 42
    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ASCII not supported :\\"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static bcrypt_pbkdf([B[BII)[B
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/16 v4, 0x20

    .line 78
    new-array v5, v4, [B

    .line 83
    new-array v6, v2, [B

    const/4 v7, 0x1

    if-lt v3, v7, :cond_6

    .line 89
    array-length v8, v0

    if-eqz v8, :cond_5

    array-length v8, v1

    if-eqz v8, :cond_5

    if-eqz v2, :cond_5

    const/16 v8, 0x400

    if-gt v2, v8, :cond_5

    add-int/lit8 v8, v2, 0x1f

    .line 92
    div-int/2addr v8, v4

    add-int v9, v2, v8

    sub-int/2addr v9, v7

    .line 93
    div-int/2addr v9, v8

    .line 96
    const-string v10, "SHA-512"

    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v10

    .line 97
    invoke-virtual {v10, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 98
    invoke-virtual {v10}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    move v11, v2

    move v12, v7

    :goto_0
    if-lez v11, :cond_4

    shr-int/lit8 v13, v12, 0x18

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    shr-int/lit8 v14, v12, 0x10

    and-int/lit16 v14, v14, 0xff

    int-to-byte v14, v14

    shr-int/lit8 v15, v12, 0x8

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    move/from16 v16, v7

    and-int/lit16 v7, v12, 0xff

    int-to-byte v7, v7

    const/4 v4, 0x4

    .line 105
    new-array v4, v4, [B

    move-object/from16 v18, v6

    const/4 v6, 0x0

    aput-byte v13, v4, v6

    aput-byte v14, v4, v16

    const/4 v13, 0x2

    aput-byte v15, v4, v13

    const/4 v13, 0x3

    aput-byte v7, v4, v13

    .line 108
    invoke-virtual {v10}, Ljava/security/MessageDigest;->reset()V

    .line 109
    invoke-virtual {v10, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 110
    invoke-virtual {v10, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 111
    invoke-virtual {v10}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 113
    invoke-static {v0, v4}, Lcom/sshtools/common/util/BCryptKDF;->bcrypt_hash([B[B)[B

    move-result-object v4

    const/16 v7, 0x20

    .line 114
    invoke-static {v4, v6, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v13, v16

    :goto_1
    if-ge v13, v3, :cond_1

    .line 118
    invoke-virtual {v10}, Ljava/security/MessageDigest;->reset()V

    .line 119
    invoke-virtual {v10, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 120
    invoke-virtual {v10}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 121
    invoke-static {v0, v4}, Lcom/sshtools/common/util/BCryptKDF;->bcrypt_hash([B[B)[B

    move-result-object v4

    move v14, v6

    :goto_2
    if-ge v14, v7, :cond_0

    .line 123
    aget-byte v15, v5, v14

    aget-byte v17, v4, v14

    xor-int v15, v15, v17

    int-to-byte v15, v15

    aput-byte v15, v5, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 129
    :cond_1
    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    :goto_3
    if-ge v6, v9, :cond_3

    mul-int v4, v6, v8

    add-int/lit8 v13, v12, -0x1

    add-int/2addr v4, v13

    if-lt v4, v2, :cond_2

    goto :goto_4

    .line 134
    :cond_2
    aget-byte v13, v5, v6

    aput-byte v13, v18, v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    sub-int/2addr v11, v6

    add-int/lit8 v12, v12, 0x1

    move v4, v7

    move/from16 v7, v16

    move-object/from16 v6, v18

    goto :goto_0

    :cond_4
    move-object/from16 v18, v6

    return-object v18

    .line 90
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid pass, salt or key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not enough rounds."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
