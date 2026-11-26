.class public interface abstract Lcom/sshtools/common/sshd/SshMessage;
.super Ljava/lang/Object;
.source "SshMessage.java"


# virtual methods
.method public abstract messageSent(Ljava/lang/Long;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation
.end method

.method public abstract writeMessageIntoBuffer(Ljava/nio/ByteBuffer;)Z
.end method
