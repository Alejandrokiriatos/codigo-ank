.class public interface abstract Lcom/sshtools/synergy/ssh/components/SshKeyExchange;
.super Ljava/lang/Object;
.source "SshKeyExchange.java"

# interfaces
.implements Lcom/sshtools/common/ssh/components/SshComponent;
.implements Lcom/sshtools/common/ssh/SecureComponent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sshtools/synergy/ssh/SshContext;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sshtools/common/ssh/components/SshComponent;",
        "Lcom/sshtools/common/ssh/SecureComponent;"
    }
.end annotation


# virtual methods
.method public abstract getAlgorithm()Ljava/lang/String;
.end method

.method public abstract getExchangeHash()[B
.end method

.method public abstract getHashAlgorithm()Ljava/lang/String;
.end method

.method public abstract getHostKey()[B
.end method

.method public abstract getProvider()Ljava/lang/String;
.end method

.method public abstract getSecret()Ljava/math/BigInteger;
.end method

.method public abstract getSignature()[B
.end method

.method public abstract hasReceivedNewKeys()Z
.end method

.method public abstract hasSentNewKeys()Z
.end method

.method public abstract init(Lcom/sshtools/synergy/ssh/SshTransport;Ljava/lang/String;Ljava/lang/String;[B[BLcom/sshtools/common/ssh/components/SshPrivateKey;Lcom/sshtools/common/ssh/components/SshPublicKey;ZZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/SshTransport<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B[B",
            "Lcom/sshtools/common/ssh/components/SshPrivateKey;",
            "Lcom/sshtools/common/ssh/components/SshPublicKey;",
            "ZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation
.end method

.method public abstract processMessage([B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setReceivedNewKeys(Z)V
.end method

.method public abstract setSentNewKeys(Z)V
.end method

.method public abstract test()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation
.end method
