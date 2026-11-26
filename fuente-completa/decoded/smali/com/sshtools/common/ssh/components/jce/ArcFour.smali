.class public Lcom/sshtools/common/ssh/components/jce/ArcFour;
.super Lcom/sshtools/common/ssh/components/jce/AbstractJCECipher;
.source "ArcFour.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/ssh/components/jce/ArcFour$ArcFourFactory;
    }
.end annotation


# static fields
.field private static final CIPHER:Ljava/lang/String; = "arcfour"


# direct methods
.method public constructor <init>()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    sget-object v5, Lcom/sshtools/common/ssh/SecurityLevel;->WEAK:Lcom/sshtools/common/ssh/SecurityLevel;

    const/4 v6, 0x0

    const-string v1, "ARCFOUR"

    const-string v2, "ARCFOUR"

    const/16 v3, 0x10

    const-string v4, "arcfour"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sshtools/common/ssh/components/jce/AbstractJCECipher;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sshtools/common/ssh/SecurityLevel;I)V

    return-void
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public init(I[B[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p2, "Failed to create cipher engine for "

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/ArcFour;->spec:Ljava/lang/String;

    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/ArcFour;->spec:Ljava/lang/String;

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/ArcFour;->spec:Ljava/lang/String;

    iget-object v1, p0, Lcom/sshtools/common/ssh/components/jce/ArcFour;->spec:Ljava/lang/String;

    invoke-static {v1}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    invoke-static {v0, v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sshtools/common/ssh/components/jce/ArcFour;->cipher:Ljavax/crypto/Cipher;

    .line 69
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/ArcFour;->cipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_2

    .line 75
    iget p2, p0, Lcom/sshtools/common/ssh/components/jce/ArcFour;->keylength:I

    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 76
    invoke-static {p3, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    iget-object p3, p0, Lcom/sshtools/common/ssh/components/jce/ArcFour;->keyspec:Ljava/lang/String;

    invoke-direct {p2, v0, p3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 81
    iget-object p3, p0, Lcom/sshtools/common/ssh/components/jce/ArcFour;->cipher:Ljavax/crypto/Cipher;

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x2

    :goto_1
    invoke-virtual {p3, p1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    return-void

    .line 70
    :cond_2
    new-instance p1, Ljava/io/IOException;

    iget-object p3, p0, Lcom/sshtools/common/ssh/components/jce/ArcFour;->spec:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :catch_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid encryption key"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :catch_1
    new-instance p1, Ljava/io/IOException;

    iget-object p2, p0, Lcom/sshtools/common/ssh/components/jce/ArcFour;->spec:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Algorithm not supported:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :catch_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Padding type not supported"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
