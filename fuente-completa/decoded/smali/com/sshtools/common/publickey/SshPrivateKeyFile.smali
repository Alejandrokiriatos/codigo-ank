.class public interface abstract Lcom/sshtools/common/publickey/SshPrivateKeyFile;
.super Ljava/lang/Object;
.source "SshPrivateKeyFile.java"


# virtual methods
.method public abstract changePassphrase(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/publickey/InvalidPassphraseException;
        }
    .end annotation
.end method

.method public abstract getComment()Ljava/lang/String;
.end method

.method public abstract getFormattedKey()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract isPassphraseProtected()Z
.end method

.method public abstract supportsPassphraseChange()Z
.end method

.method public abstract toKeyPair(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshKeyPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/publickey/InvalidPassphraseException;
        }
    .end annotation
.end method
