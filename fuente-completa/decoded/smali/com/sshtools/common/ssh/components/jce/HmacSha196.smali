.class public Lcom/sshtools/common/ssh/components/jce/HmacSha196;
.super Lcom/sshtools/common/ssh/components/jce/AbstractHmac;
.source "HmacSha196.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/ssh/components/jce/HmacSha196$HmacSha196Factory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 56
    sget-object v4, Lcom/sshtools/common/ssh/SecurityLevel;->WEAK:Lcom/sshtools/common/ssh/SecurityLevel;

    const/4 v5, 0x5

    const-string v1, "HmacSha1"

    const/16 v2, 0x14

    const/16 v3, 0xc

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sshtools/common/ssh/components/jce/AbstractHmac;-><init>(Ljava/lang/String;IILcom/sshtools/common/ssh/SecurityLevel;I)V

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 61
    const-string v0, "hmac-sha1-96"

    return-object v0
.end method

.method public init([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/HmacSha196;->jceAlgorithm:Ljava/lang/String;

    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/HmacSha196;->jceAlgorithm:Ljava/lang/String;

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/HmacSha196;->jceAlgorithm:Ljava/lang/String;

    iget-object v1, p0, Lcom/sshtools/common/ssh/components/jce/HmacSha196;->jceAlgorithm:Ljava/lang/String;

    invoke-static {v1}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    invoke-static {v0, v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sshtools/common/ssh/components/jce/HmacSha196;->mac:Ljavax/crypto/Mac;

    .line 70
    const-string v0, "miscomputes.ssh2.hmac.keys"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    goto :goto_1

    :cond_1
    const/16 v0, 0x14

    :goto_1
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 71
    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/HmacSha196;->jceAlgorithm:Ljava/lang/String;

    invoke-direct {p1, v1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/HmacSha196;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 76
    new-instance v0, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {v0, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
