.class public Lcom/sshtools/common/ssh/SshKeyFingerprint;
.super Ljava/lang/Object;
.source "SshKeyFingerprint.java"


# static fields
.field static CONSONANTS:[C = null

.field static HEX:[C = null

.field public static final MD5_FINGERPRINT:Ljava/lang/String; = "MD5"

.field public static final SHA1_FINGERPRINT:Ljava/lang/String; = "SHA-1"

.field public static final SHA256_FINGERPRINT:Ljava/lang/String; = "SHA256"

.field static VOWELS:[C = null

.field private static defaultHashAlgoritm:Ljava/lang/String; = "SHA256"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    .line 43
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sshtools/common/ssh/SshKeyFingerprint;->VOWELS:[C

    const/16 v0, 0x11

    .line 44
    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sshtools/common/ssh/SshKeyFingerprint;->CONSONANTS:[C

    const/16 v0, 0x10

    .line 46
    new-array v0, v0, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sshtools/common/ssh/SshKeyFingerprint;->HEX:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x61s
        0x65s
        0x69s
        0x6fs
        0x75s
        0x79s
    .end array-data

    :array_1
    .array-data 2
        0x62s
        0x63s
        0x64s
        0x66s
        0x67s
        0x68s
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x70s
        0x72s
        0x73s
        0x74s
        0x76s
        0x7as
        0x78s
    .end array-data

    nop

    :array_2
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBubbleBabble(Lcom/sshtools/common/ssh/components/SshPublicKey;)Ljava/lang/String;
    .locals 2

    .line 113
    :try_start_0
    invoke-interface {p0}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lcom/sshtools/common/ssh/SshKeyFingerprint;->getBubbleBabble([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 115
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/sshtools/common/ssh/SshException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getBubbleBabble([B)Ljava/lang/String;
    .locals 9

    .line 122
    :try_start_0
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/ssh/components/ComponentManager;->supportedDigests()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v0

    const-string v1, "SHA-1"

    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->getInstance(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/Component;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/ssh/components/Digest;

    .line 123
    invoke-interface {v0, p0}, Lcom/sshtools/common/ssh/components/Digest;->putBytes([B)V

    .line 124
    invoke-interface {v0}, Lcom/sshtools/common/ssh/components/Digest;->doFinal()[B

    move-result-object p0

    .line 126
    array-length v0, p0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x78

    .line 130
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_3

    add-int/lit8 v5, v4, 0x1

    if-lt v5, v0, :cond_1

    .line 132
    array-length v6, p0

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_0

    goto :goto_1

    .line 143
    :cond_0
    sget-object v4, Lcom/sshtools/common/ssh/SshKeyFingerprint;->VOWELS:[C

    rem-int/lit8 v6, v1, 0x6

    aget-char v4, v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 144
    sget-object v4, Lcom/sshtools/common/ssh/SshKeyFingerprint;->CONSONANTS:[C

    const/16 v6, 0x10

    aget-char v4, v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    sget-object v4, Lcom/sshtools/common/ssh/SshKeyFingerprint;->VOWELS:[C

    div-int/lit8 v6, v1, 0x6

    aget-char v4, v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 133
    :cond_1
    :goto_1
    sget-object v6, Lcom/sshtools/common/ssh/SshKeyFingerprint;->VOWELS:[C

    mul-int/lit8 v4, v4, 0x2

    aget-byte v7, p0, v4

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v7, v7, 0x6

    and-int/lit8 v7, v7, 0x3

    add-int/2addr v7, v1

    rem-int/lit8 v7, v7, 0x6

    aget-char v6, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    sget-object v6, Lcom/sshtools/common/ssh/SshKeyFingerprint;->CONSONANTS:[C

    aget-byte v7, p0, v4

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v7, v7, 0x2

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    sget-object v6, Lcom/sshtools/common/ssh/SshKeyFingerprint;->VOWELS:[C

    aget-byte v7, p0, v4

    and-int/lit8 v7, v7, 0x3

    div-int/lit8 v8, v1, 0x6

    add-int/2addr v7, v8

    rem-int/lit8 v7, v7, 0x6

    aget-char v6, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ge v5, v0, :cond_2

    .line 137
    sget-object v6, Lcom/sshtools/common/ssh/SshKeyFingerprint;->CONSONANTS:[C

    add-int/lit8 v7, v4, 0x1

    aget-byte v8, p0, v7

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v6, v6, v8

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v6, 0x2d

    .line 138
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    sget-object v6, Lcom/sshtools/common/ssh/SshKeyFingerprint;->CONSONANTS:[C

    aget-byte v8, p0, v7

    and-int/lit8 v8, v8, 0xf

    aget-char v6, v6, v8

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    mul-int/lit8 v1, v1, 0x5

    .line 140
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    mul-int/lit8 v4, v4, 0x7

    aget-byte v6, p0, v7

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v4, v6

    add-int/2addr v1, v4

    rem-int/lit8 v1, v1, 0x24

    :cond_2
    :goto_2
    move v4, v5

    goto/16 :goto_0

    .line 148
    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 151
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/sshtools/common/ssh/SshException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getFingerprint(Lcom/sshtools/common/ssh/components/SshPublicKey;)Ljava/lang/String;
    .locals 2

    .line 105
    :try_start_0
    invoke-interface {p0}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getEncoded()[B

    move-result-object p0

    sget-object v0, Lcom/sshtools/common/ssh/SshKeyFingerprint;->defaultHashAlgoritm:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/sshtools/common/ssh/SshKeyFingerprint;->getFingerprint([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 107
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/sshtools/common/ssh/SshException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getFingerprint([B)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 57
    sget-object v0, Lcom/sshtools/common/ssh/SshKeyFingerprint;->defaultHashAlgoritm:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/sshtools/common/ssh/SshKeyFingerprint;->getFingerprint([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFingerprint([BLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 74
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/ssh/components/ComponentManager;->supportedDigests()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->getInstance(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/Component;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/ssh/components/Digest;

    .line 76
    invoke-interface {v0, p0}, Lcom/sshtools/common/ssh/components/Digest;->putBytes([B)V

    .line 78
    invoke-interface {v0}, Lcom/sshtools/common/ssh/components/Digest;->doFinal()[B

    move-result-object p0

    .line 80
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    const-string v1, "SHA256"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 84
    invoke-static {p0, p1}, Lcom/sshtools/common/util/Base64;->encodeBytes([BZ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    sub-int/2addr p0, p1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p0

    const/16 v1, 0x3d

    if-ne p0, v1, :cond_2

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    sub-int/2addr p0, p1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 91
    :goto_1
    array-length v1, p0

    if-ge p1, v1, :cond_2

    .line 92
    aget-byte v1, p0, p1

    and-int/lit16 v2, v1, 0xff

    if-lez p1, :cond_1

    const/16 v3, 0x3a

    .line 94
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 96
    :cond_1
    sget-object v3, Lcom/sshtools/common/ssh/SshKeyFingerprint;->HEX:[C

    ushr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 97
    sget-object v2, Lcom/sshtools/common/ssh/SshKeyFingerprint;->HEX:[C

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 100
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    .line 157
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/sshtools/common/ssh/SshKeyFingerprint;->getBubbleBabble([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 158
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "1234567890"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/sshtools/common/ssh/SshKeyFingerprint;->getBubbleBabble([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 159
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Pineapple"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/sshtools/common/ssh/SshKeyFingerprint;->getBubbleBabble([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static setDefaultHashAlgorithm(Ljava/lang/String;)V
    .locals 0

    .line 61
    sput-object p0, Lcom/sshtools/common/ssh/SshKeyFingerprint;->defaultHashAlgoritm:Ljava/lang/String;

    return-void
.end method
