.class public Lcom/sshtools/common/ssh/components/jce/AES128Gcm;
.super Lcom/sshtools/common/ssh/components/jce/AbstractJCECipher;
.source "AES128Gcm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/ssh/components/jce/AES128Gcm$AES128GcmFactory;
    }
.end annotation


# static fields
.field private static final CIPHER:Ljava/lang/String; = "aes128-gcm@openssh.com"


# instance fields
.field key:[B

.field mode:I

.field nonce:[B


# direct methods
.method public constructor <init>()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    sget-object v5, Lcom/sshtools/common/ssh/SecurityLevel;->PARANOID:Lcom/sshtools/common/ssh/SecurityLevel;

    const/16 v6, 0x1388

    const-string v1, "AES/GCM/NoPadding"

    const-string v2, "AES"

    const/16 v3, 0x10

    const-string v4, "aes128-gcm@openssh.com"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sshtools/common/ssh/components/jce/AbstractJCECipher;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sshtools/common/ssh/SecurityLevel;I)V

    return-void
.end method

.method private incrementIv()V
    .locals 3

    const/16 v0, 0xb

    :goto_0
    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/sshtools/common/ssh/components/jce/AES128Gcm;->nonce:[B

    aget-byte v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public getMacLength()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public init(I[B[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    iput p1, p0, Lcom/sshtools/common/ssh/components/jce/AES128Gcm;->mode:I

    .line 69
    :try_start_0
    iget v0, p0, Lcom/sshtools/common/ssh/components/jce/AES128Gcm;->keylength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sshtools/common/ssh/components/jce/AES128Gcm;->key:[B

    .line 70
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/AES128Gcm;->key:[B

    iget-object v1, p0, Lcom/sshtools/common/ssh/components/jce/AES128Gcm;->keyspec:Ljava/lang/String;

    invoke-direct {p3, v0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/16 v0, 0xc

    .line 74
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sshtools/common/ssh/components/jce/AES128Gcm;->nonce:[B

    .line 75
    array-length v1, v0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    new-instance p2, Ljavax/crypto/spec/GCMParameterSpec;

    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/AES128Gcm;->nonce:[B

    const/16 v1, 0x80

    invoke-direct {p2, v1, v0}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 77
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/AES128Gcm;->cipher:Ljavax/crypto/Cipher;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {v0, p1, p3, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 83
    :catch_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid algorithm parameter"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :catch_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid encryption key"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isMAC()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public transform([BI[BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p5, :cond_3

    .line 90
    array-length v0, p1

    sub-int/2addr v0, p2

    const-string v1, " bytes is too small for requested transform length "

    if-lt v0, p5, :cond_2

    .line 93
    array-length v0, p3

    sub-int/2addr v0, p4

    if-lt v0, p5, :cond_1

    .line 98
    :try_start_0
    const-string v0, "AES/GCM/NoPadding"

    invoke-virtual {p0, v0}, Lcom/sshtools/common/ssh/components/jce/AES128Gcm;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/ssh/components/jce/AES128Gcm;->cipher:Ljavax/crypto/Cipher;

    .line 100
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lcom/sshtools/common/ssh/components/jce/AES128Gcm;->key:[B

    iget-object v2, p0, Lcom/sshtools/common/ssh/components/jce/AES128Gcm;->keyspec:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 101
    new-instance v1, Ljavax/crypto/spec/GCMParameterSpec;

    iget-object v2, p0, Lcom/sshtools/common/ssh/components/jce/AES128Gcm;->nonce:[B

    const/16 v3, 0x80

    invoke-direct {v1, v3, v2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 102
    iget-object v2, p0, Lcom/sshtools/common/ssh/components/jce/AES128Gcm;->cipher:Ljavax/crypto/Cipher;

    iget v3, p0, Lcom/sshtools/common/ssh/components/jce/AES128Gcm;->mode:I

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 105
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/AES128Gcm;->cipher:Ljavax/crypto/Cipher;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, p2, v1}, Ljavax/crypto/Cipher;->updateAAD([BII)V

    .line 106
    invoke-static {p1, p2, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/AES128Gcm;->cipher:Ljavax/crypto/Cipher;

    add-int/2addr p2, v1

    sub-int/2addr p5, v1

    invoke-virtual {v0, p1, p2, p5}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p1

    add-int/2addr p4, v1

    .line 109
    array-length p2, p1

    const/4 p5, 0x0

    invoke-static {p1, p5, p3, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    invoke-direct {p0}, Lcom/sshtools/common/ssh/components/jce/AES128Gcm;->incrementIv()V
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_1

    :catch_3
    move-exception p1

    goto :goto_1

    :catch_4
    move-exception p1

    goto :goto_1

    :catch_5
    move-exception p1

    .line 118
    :goto_1
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 94
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    array-length p2, p3

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Output buffer of "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    array-length p1, p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Input buffer of "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    return-void
.end method
