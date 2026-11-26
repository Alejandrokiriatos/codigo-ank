.class public interface abstract Lcom/sshtools/common/publickey/SshPublicKeyFile;
.super Ljava/lang/Object;
.source "SshPublicKeyFile.java"


# virtual methods
.method public abstract getComment()Ljava/lang/String;
.end method

.method public abstract getFormattedKey()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getOptions()Ljava/lang/String;
.end method

.method public abstract toPublicKey()Lcom/sshtools/common/ssh/components/SshPublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
