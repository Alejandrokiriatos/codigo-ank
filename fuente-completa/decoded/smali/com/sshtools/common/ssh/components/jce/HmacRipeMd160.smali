.class public Lcom/sshtools/common/ssh/components/jce/HmacRipeMd160;
.super Lcom/sshtools/common/ssh/components/jce/AbstractHmac;
.source "HmacRipeMd160.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/ssh/components/jce/HmacRipeMd160$HmacRipeMd160Factory;
    }
.end annotation


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "hmac-ripemd160"


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 59
    sget-object v0, Lcom/sshtools/common/ssh/SecurityLevel;->WEAK:Lcom/sshtools/common/ssh/SecurityLevel;

    const/4 v1, 0x1

    const-string v2, "HmacRipeMd160"

    const/16 v3, 0x14

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/sshtools/common/ssh/components/jce/AbstractHmac;-><init>(Ljava/lang/String;ILcom/sshtools/common/ssh/SecurityLevel;I)V

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 6

    .line 63
    sget-object v4, Lcom/sshtools/common/ssh/SecurityLevel;->WEAK:Lcom/sshtools/common/ssh/SecurityLevel;

    const/4 v5, 0x1

    const-string v1, "HmacRipeMd160"

    const/16 v2, 0x14

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/sshtools/common/ssh/components/jce/AbstractHmac;-><init>(Ljava/lang/String;IILcom/sshtools/common/ssh/SecurityLevel;I)V

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 68
    const-string v0, "hmac-ripemd160"

    return-object v0
.end method

.method public init([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/HmacRipeMd160;->jceAlgorithm:Ljava/lang/String;

    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/HmacRipeMd160;->jceAlgorithm:Ljava/lang/String;

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/HmacRipeMd160;->jceAlgorithm:Ljava/lang/String;

    iget-object v1, p0, Lcom/sshtools/common/ssh/components/jce/HmacRipeMd160;->jceAlgorithm:Ljava/lang/String;

    invoke-static {v1}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    invoke-static {v0, v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sshtools/common/ssh/components/jce/HmacRipeMd160;->mac:Ljavax/crypto/Mac;

    const/16 v0, 0x14

    .line 77
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 78
    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/HmacRipeMd160;->jceAlgorithm:Ljava/lang/String;

    invoke-direct {p1, v1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/HmacRipeMd160;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 83
    new-instance v0, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {v0, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
