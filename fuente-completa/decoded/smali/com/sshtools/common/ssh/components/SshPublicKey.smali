.class public interface abstract Lcom/sshtools/common/ssh/components/SshPublicKey;
.super Ljava/lang/Object;
.source "SshPublicKey.java"

# interfaces
.implements Lcom/sshtools/common/ssh/SecureComponent;


# virtual methods
.method public abstract getAlgorithm()Ljava/lang/String;
.end method

.method public abstract getBitLength()I
.end method

.method public abstract getEncoded()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation
.end method

.method public abstract getEncodingAlgorithm()Ljava/lang/String;
.end method

.method public abstract getFingerprint()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation
.end method

.method public abstract getJCEPublicKey()Ljava/security/PublicKey;
.end method

.method public abstract getSigningAlgorithm()Ljava/lang/String;
.end method

.method public init([B)Lcom/sshtools/common/ssh/components/SshPublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 47
    array-length v1, p1

    invoke-interface {p0, p1, v0, v1}, Lcom/sshtools/common/ssh/components/SshPublicKey;->init([BII)Lcom/sshtools/common/ssh/components/SshPublicKey;

    return-object p0
.end method

.method public abstract init([BII)Lcom/sshtools/common/ssh/components/SshPublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation
.end method

.method public isCertificate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract test()Ljava/lang/String;
.end method

.method public abstract verifySignature([B[B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation
.end method
