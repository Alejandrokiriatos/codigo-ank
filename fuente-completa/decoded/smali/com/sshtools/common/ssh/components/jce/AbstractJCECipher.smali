.class public Lcom/sshtools/common/ssh/components/jce/AbstractJCECipher;
.super Lcom/sshtools/common/ssh/components/AbstractSshCipher;
.source "AbstractJCECipher.java"


# instance fields
.field cipher:Ljavax/crypto/Cipher;

.field keylength:I

.field keyspec:Ljava/lang/String;

.field spec:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sshtools/common/ssh/SecurityLevel;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-direct {p0, p4, p5, p6}, Lcom/sshtools/common/ssh/components/AbstractSshCipher;-><init>(Ljava/lang/String;Lcom/sshtools/common/ssh/SecurityLevel;I)V

    .line 61
    iput-object p1, p0, Lcom/sshtools/common/ssh/components/jce/AbstractJCECipher;->spec:Ljava/lang/String;

    .line 62
    iput p3, p0, Lcom/sshtools/common/ssh/components/jce/AbstractJCECipher;->keylength:I

    .line 63
    iput-object p2, p0, Lcom/sshtools/common/ssh/components/jce/AbstractJCECipher;->keyspec:Ljava/lang/String;

    .line 66
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sshtools/common/ssh/components/jce/AbstractJCECipher;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    iput-object p2, p0, Lcom/sshtools/common/ssh/components/jce/AbstractJCECipher;->cipher:Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_0

    return-void

    .line 74
    :cond_0
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Failed to create cipher engine for "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 70
    :catch_0
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Algorithm not supported:"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 68
    :catch_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Padding type not supported"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 84
    invoke-static {p1}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-nez v0, :cond_0

    .line 85
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    return-object p1

    .line 86
    :cond_0
    invoke-static {p1}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    invoke-static {p1, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object p1

    return-object p1
.end method

.method public getBlockSize()I
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/AbstractJCECipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public getKeyLength()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/sshtools/common/ssh/components/jce/AbstractJCECipher;->keylength:I

    return v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/AbstractJCECipher;->cipher:Ljavax/crypto/Cipher;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 110
    :cond_0
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProviderName()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/AbstractJCECipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(I[B[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    :try_start_0
    iget v0, p0, Lcom/sshtools/common/ssh/components/jce/AbstractJCECipher;->keylength:I

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 122
    invoke-static {p3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/AbstractJCECipher;->keyspec:Ljava/lang/String;

    invoke-direct {p3, v1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/AbstractJCECipher;->cipher:Ljavax/crypto/Cipher;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 128
    :goto_0
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    .line 129
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/AbstractJCECipher;->getBlockSize()I

    move-result v3

    invoke-direct {v1, p2, v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    .line 127
    invoke-virtual {v0, p1, p3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 133
    :catch_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid algorithm parameter"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 131
    :catch_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid encryption key"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public transform([BI[BII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p5, :cond_2

    .line 92
    array-length v0, p1

    sub-int/2addr v0, p2

    const-string v1, " bytes is too small for requested transform length "

    if-lt v0, p5, :cond_1

    .line 95
    array-length v0, p3

    sub-int/2addr v0, p4

    if-lt v0, p5, :cond_0

    .line 99
    :try_start_0
    iget-object v2, p0, Lcom/sshtools/common/ssh/components/jce/AbstractJCECipher;->cipher:Ljavax/crypto/Cipher;

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    move v5, p5

    invoke-virtual/range {v2 .. v7}, Ljavax/crypto/Cipher;->update([BII[BI)I
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 101
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljavax/crypto/ShortBufferException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    move-object v6, p3

    move v5, p5

    .line 96
    new-instance p1, Ljava/lang/IllegalStateException;

    array-length p2, v6

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Output buffer of "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    move-object v3, p1

    move v5, p5

    .line 93
    new-instance p1, Ljava/lang/IllegalStateException;

    array-length p2, v3

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Input buffer of "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method
