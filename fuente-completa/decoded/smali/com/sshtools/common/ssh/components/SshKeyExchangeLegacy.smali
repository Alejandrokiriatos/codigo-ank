.class public interface abstract Lcom/sshtools/common/ssh/components/SshKeyExchangeLegacy;
.super Ljava/lang/Object;
.source "SshKeyExchangeLegacy.java"

# interfaces
.implements Lcom/sshtools/common/ssh/components/SshComponent;


# virtual methods
.method public abstract getHashAlgorithm()Ljava/lang/String;
.end method

.method public abstract getProvider()Ljava/lang/String;
.end method

.method public abstract test()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation
.end method
