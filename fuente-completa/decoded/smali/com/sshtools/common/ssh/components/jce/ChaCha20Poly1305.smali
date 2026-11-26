.class public Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;
.super Lcom/sshtools/common/ssh/components/AbstractSshCipher;
.source "ChaCha20Poly1305.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20;,
        Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;,
        Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20Poly1305Factory;
    }
.end annotation


# static fields
.field private static final CIPHER:Ljava/lang/String; = "chacha20-poly1305@openssh.com"


# instance fields
.field currentSequenceNo:Lcom/sshtools/common/util/UnsignedInteger64;

.field k1:[B

.field k2:[B

.field mode:I


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    sget-object v0, Lcom/sshtools/common/ssh/SecurityLevel;->PARANOID:Lcom/sshtools/common/ssh/SecurityLevel;

    const/16 v1, 0xfa0

    const-string v2, "chacha20-poly1305@openssh.com"

    invoke-direct {p0, v2, v0, v1}, Lcom/sshtools/common/ssh/components/AbstractSshCipher;-><init>(Ljava/lang/String;Lcom/sshtools/common/ssh/SecurityLevel;I)V

    const/16 v0, 0x20

    .line 59
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->k1:[B

    .line 60
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->k2:[B

    return-void
.end method

.method private doDecrypt([BI[BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20$WrongKeySizeException;,
            Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20$WrongNonceSizeException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x10

    .line 133
    new-array v1, v0, [B

    add-int/lit8 v2, p5, -0xc

    const/4 v3, 0x0

    .line 135
    invoke-static {p1, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    invoke-direct {p0}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->generatePoly1305Key()[B

    move-result-object v0

    .line 139
    invoke-direct {p0, v0, p1, v3, v2}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->generatePoly1305Tag([B[BII)[B

    move-result-object v0

    .line 141
    invoke-static {v1, v0}, Lcom/sshtools/common/util/Arrays;->areEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-direct/range {p0 .. p5}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->transformPayload([BI[BII)V

    return-void

    .line 142
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Corrupt authentication tag"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private doEncrypt([BI[BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20$WrongKeySizeException;,
            Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20$WrongNonceSizeException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 v5, p5, -0xc

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 117
    invoke-direct/range {v0 .. v5}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->transformPayload([BI[BII)V

    .line 119
    invoke-direct {p0}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->generatePoly1305Key()[B

    move-result-object p1

    .line 120
    new-instance p2, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;

    invoke-direct {p2}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;-><init>()V

    .line 121
    invoke-virtual {p2, p1}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->init([B)V

    const/4 p3, 0x0

    .line 122
    invoke-virtual {p2, v1, p3, v5}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->update([BII)V

    .line 124
    invoke-direct {p0, p1, v1, p3, v5}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->generatePoly1305Tag([B[BII)[B

    move-result-object p1

    .line 126
    array-length p2, p1

    invoke-static {p1, p3, v3, v5, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private generatePoly1305Key()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20$WrongKeySizeException;,
            Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20$WrongNonceSizeException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->k2:[B

    array-length v6, v0

    new-array v2, v6, [B

    .line 160
    new-instance v1, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20;

    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->k2:[B

    iget-object v3, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->currentSequenceNo:Lcom/sshtools/common/util/UnsignedInteger64;

    invoke-virtual {v3}, Lcom/sshtools/common/util/UnsignedInteger64;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v3, v4}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20;-><init>([B[BI)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, v2

    .line 161
    invoke-virtual/range {v1 .. v6}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20;->encrypt([BI[BII)V

    return-object v2
.end method

.method private generatePoly1305Tag([B[BII)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    new-instance v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;

    invoke-direct {v0}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;-><init>()V

    .line 168
    invoke-virtual {v0, p1}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->init([B)V

    .line 169
    invoke-virtual {v0, p2, p3, p4}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->update([BII)V

    const/16 p1, 0x10

    .line 171
    new-array p1, p1, [B

    const/4 p2, 0x0

    .line 172
    invoke-virtual {v0, p1, p2}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$Poly1305;->doFinal([BI)I

    return-object p1
.end method

.method protected static intToLittleEndian(I[BI)V
    .locals 2

    int-to-byte v0, p0

    .line 224
    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    .line 225
    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    ushr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    .line 226
    aput-byte v1, p1, v0

    add-int/lit8 p2, p2, 0x3

    ushr-int/lit8 p0, p0, 0x18

    int-to-byte p0, p0

    .line 227
    aput-byte p0, p1, p2

    return-void
.end method

.method protected static littleEndianToInt([BI)I
    .locals 2

    .line 220
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method private transformPayload([BI[BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20$WrongKeySizeException;,
            Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20$WrongNonceSizeException;
        }
    .end annotation

    .line 151
    new-instance v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20;

    iget-object v1, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->k2:[B

    iget-object v2, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->currentSequenceNo:Lcom/sshtools/common/util/UnsignedInteger64;

    invoke-virtual {v2}, Lcom/sshtools/common/util/UnsignedInteger64;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20;-><init>([B[BI)V

    move-object v3, p1

    move v4, p2

    move-object v1, p3

    move v2, p4

    move v5, p5

    .line 152
    invoke-virtual/range {v0 .. v5}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20;->encrypt([BI[BII)V

    return-void
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public getKeyLength()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public getMacLength()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public getProviderName()Ljava/lang/String;
    .locals 1

    .line 179
    const-string v0, "JADAPTIVE"

    return-object v0
.end method

.method public init(I[B[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iput p1, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->mode:I

    .line 73
    iget-object p1, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->k2:[B

    array-length p2, p1

    const/4 v0, 0x0

    invoke-static {p3, v0, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    iget-object p1, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->k1:[B

    array-length p2, p1

    const/16 v1, 0x20

    invoke-static {p3, v1, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public isMAC()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public readPacketLength([BLcom/sshtools/common/util/UnsignedInteger64;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    :try_start_0
    iput-object p2, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->currentSequenceNo:Lcom/sshtools/common/util/UnsignedInteger64;

    .line 188
    new-instance v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20;

    iget-object v1, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->k1:[B

    invoke-virtual {p2}, Lcom/sshtools/common/util/UnsignedInteger64;->toByteArray()[B

    move-result-object p2

    const/4 v6, 0x0

    invoke-direct {v0, v1, p2, v6}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20;-><init>([B[BI)V

    const/4 p2, 0x4

    .line 189
    new-array v1, p2, [B

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v2, 0x0

    move-object v3, p1

    .line 191
    invoke-virtual/range {v0 .. v5}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20;->encrypt([BI[BII)V

    .line 192
    invoke-static {v1, v6}, Lcom/sshtools/common/util/ByteArrayReader;->readInt([BI)J

    move-result-wide p1
    :try_end_0
    .catch Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20$WrongKeySizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20$WrongNonceSizeException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    move-object p1, v0

    .line 195
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public transform([BI[BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    :try_start_0
    iget v0, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 103
    invoke-direct/range {p0 .. p5}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->doDecrypt([BI[BII)V

    return-void

    .line 105
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->doEncrypt([BI[BII)V
    :try_end_0
    .catch Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20$WrongKeySizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20$WrongNonceSizeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    move-object p1, v0

    .line 108
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public writePacketLength(ILcom/sshtools/common/util/UnsignedInteger64;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    :try_start_0
    iput-object p2, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->currentSequenceNo:Lcom/sshtools/common/util/UnsignedInteger64;

    .line 206
    new-instance v0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20;

    iget-object v1, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305;->k1:[B

    invoke-virtual {p2}, Lcom/sshtools/common/util/UnsignedInteger64;->toByteArray()[B

    move-result-object p2

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20;-><init>([B[BI)V

    const/4 p2, 0x4

    .line 207
    new-array v1, p2, [B

    .line 209
    invoke-static {p1}, Lcom/sshtools/common/util/ByteArrayWriter;->encodeInt(I)[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20;->encrypt([BI[BII)V
    :try_end_0
    .catch Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20$WrongKeySizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20$WrongNonceSizeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    move-object p1, v0

    .line 214
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
