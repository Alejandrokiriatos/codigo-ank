.class public interface abstract Lcom/sshtools/common/publickey/OpenSSHPrivateKeyFileParser;
.super Ljava/lang/Object;
.source "OpenSSHPrivateKeyFileParser.java"


# virtual methods
.method public abstract decode(Lcom/sshtools/common/util/ByteArrayReader;Lcom/sshtools/common/ssh/components/SshKeyPair;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract encode(Lcom/sshtools/common/util/ByteArrayWriter;Lcom/sshtools/common/ssh/components/SshKeyPair;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
