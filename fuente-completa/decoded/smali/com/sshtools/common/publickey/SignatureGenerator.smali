.class public interface abstract Lcom/sshtools/common/publickey/SignatureGenerator;
.super Ljava/lang/Object;
.source "SignatureGenerator.java"


# virtual methods
.method public abstract getPublicKeys()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/sshtools/common/ssh/components/SshPublicKey;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sign(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
