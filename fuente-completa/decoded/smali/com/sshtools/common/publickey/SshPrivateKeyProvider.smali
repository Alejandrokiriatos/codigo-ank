.class public interface abstract Lcom/sshtools/common/publickey/SshPrivateKeyProvider;
.super Ljava/lang/Object;
.source "SshPrivateKeyProvider.java"


# virtual methods
.method public abstract create([B)Lcom/sshtools/common/publickey/SshPrivateKeyFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isFormatted([B)Z
.end method
