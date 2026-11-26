.class public abstract Lcom/sshtools/common/ssh/components/jce/AbstractHmac;
.super Ljava/lang/Object;
.source "AbstractHmac.java"

# interfaces
.implements Lcom/sshtools/common/ssh/components/SshHmac;


# instance fields
.field protected jceAlgorithm:Ljava/lang/String;

.field protected mac:Ljavax/crypto/Mac;

.field protected macLength:I

.field protected macSize:I

.field final priority:I

.field private final securityLevel:Lcom/sshtools/common/ssh/SecurityLevel;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILcom/sshtools/common/ssh/SecurityLevel;I)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/sshtools/common/ssh/components/jce/AbstractHmac;->jceAlgorithm:Ljava/lang/String;

    .line 54
    iput p2, p0, Lcom/sshtools/common/ssh/components/jce/AbstractHmac;->macSize:I

    .line 55
    iput p3, p0, Lcom/sshtools/common/ssh/components/jce/AbstractHmac;->macLength:I

    .line 56
    iput-object p4, p0, Lcom/sshtools/common/ssh/components/jce/AbstractHmac;->securityLevel:Lcom/sshtools/common/ssh/SecurityLevel;

    .line 57
    iput p5, p0, Lcom/sshtools/common/ssh/components/jce/AbstractHmac;->priority:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/sshtools/common/ssh/SecurityLevel;I)V
    .locals 6

    move v3, p2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    .line 49
    invoke-direct/range {v0 .. v5}, Lcom/sshtools/common/ssh/components/jce/AbstractHmac;-><init>(Ljava/lang/String;IILcom/sshtools/common/ssh/SecurityLevel;I)V

    return-void
.end method


# virtual methods
.method public doFinal()[B
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/AbstractHmac;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    return-object v0
.end method

.method public generate(J[BII[BI)V
    .locals 4

    const/16 v0, 0x18

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x10

    shr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x8

    shr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    long-to-int p1, p1

    int-to-byte p1, p1

    const/4 p2, 0x4

    .line 75
    new-array p2, p2, [B

    const/4 v3, 0x0

    aput-byte v0, p2, v3

    const/4 v0, 0x1

    aput-byte v1, p2, v0

    const/4 v0, 0x2

    aput-byte v2, p2, v0

    const/4 v0, 0x3

    aput-byte p1, p2, v0

    .line 76
    iget-object p1, p0, Lcom/sshtools/common/ssh/components/jce/AbstractHmac;->mac:Ljavax/crypto/Mac;

    invoke-virtual {p1, p2}, Ljavax/crypto/Mac;->update([B)V

    .line 77
    iget-object p1, p0, Lcom/sshtools/common/ssh/components/jce/AbstractHmac;->mac:Ljavax/crypto/Mac;

    invoke-virtual {p1, p3, p4, p5}, Ljavax/crypto/Mac;->update([BII)V

    .line 79
    iget-object p1, p0, Lcom/sshtools/common/ssh/components/jce/AbstractHmac;->mac:Ljavax/crypto/Mac;

    invoke-virtual {p1}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p1

    .line 81
    iget p2, p0, Lcom/sshtools/common/ssh/components/jce/AbstractHmac;->macLength:I

    invoke-static {p1, v3, p6, p7, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public abstract getAlgorithm()Ljava/lang/String;
.end method

.method public getMacLength()I
    .locals 1

    .line 107
    iget v0, p0, Lcom/sshtools/common/ssh/components/jce/AbstractHmac;->macLength:I

    return v0
.end method

.method public getMacSize()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/sshtools/common/ssh/components/jce/AbstractHmac;->macSize:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/sshtools/common/ssh/components/jce/AbstractHmac;->priority:I

    return v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/AbstractHmac;->mac:Ljavax/crypto/Mac;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 99
    :cond_0
    invoke-virtual {v0}, Ljavax/crypto/Mac;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecurityLevel()Lcom/sshtools/common/ssh/SecurityLevel;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/AbstractHmac;->securityLevel:Lcom/sshtools/common/ssh/SecurityLevel;

    return-object v0
.end method

.method public init([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/AbstractHmac;->jceAlgorithm:Ljava/lang/String;

    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/AbstractHmac;->jceAlgorithm:Ljava/lang/String;

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/AbstractHmac;->jceAlgorithm:Ljava/lang/String;

    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    invoke-static {v0, v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sshtools/common/ssh/components/jce/AbstractHmac;->mac:Ljavax/crypto/Mac;

    .line 119
    iget v0, p0, Lcom/sshtools/common/ssh/components/jce/AbstractHmac;->macSize:I

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 120
    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/AbstractHmac;->jceAlgorithm:Ljava/lang/String;

    invoke-direct {p1, v1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/AbstractHmac;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 125
    new-instance v0, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {v0, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public isETM()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public update([B)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/AbstractHmac;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update([B)V

    return-void
.end method

.method public verify(J[BII[BI)Z
    .locals 9

    .line 132
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/AbstractHmac;->getMacLength()I

    move-result v0

    .line 133
    new-array v7, v0, [B

    const/4 v8, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 135
    invoke-virtual/range {v1 .. v8}, Lcom/sshtools/common/ssh/components/jce/AbstractHmac;->generate(J[BII[BI)V

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    if-ge p2, v0, :cond_1

    add-int p3, p2, p7

    .line 138
    aget-byte p3, p6, p3

    aget-byte p4, v7, p2

    if-eq p3, p4, :cond_0

    return p1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
