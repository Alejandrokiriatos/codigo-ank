.class public interface abstract Lcom/sshtools/common/ssh/components/SshPrivateKey;
.super Ljava/lang/Object;
.source "SshPrivateKey.java"


# virtual methods
.method public abstract getAlgorithm()Ljava/lang/String;
.end method

.method public abstract getJCEPrivateKey()Ljava/security/PrivateKey;
.end method

.method public abstract sign([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sign([BLjava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
